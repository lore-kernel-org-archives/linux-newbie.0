Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F72254B03;
	Fri,  5 Dec 2025 22:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764973212; cv=none; b=qnJtjf7MU3T+AmzNNDm9zulSzxDqfyBJQejOaptqD/RXBoSjba9DiiMi6xarWQk80WCUSteynn77KvZj6kJ7Tw5Gxul2U+EQY7ZvUYVLILW1QYAnJhaiOcz3e8SQN+QtZx8oSC7X+JNnDtTBZP/vlrJjPU1YR1seX6nlOvSFZGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764973212; c=relaxed/simple;
	bh=VG+GZo2tRUyJ4205Fp5jrZJv8T8cHfwn2ADchdZxRSE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=in84uL83qCNEApUHw15z6X2b8P3X//yAm1eJIvpiYlh5fC09yQXApVF3Gf/XGVyPIdMcpMf5EGd7B79pcqmwyvc48ub4XvN3AiDFVCz8sA20nEph2nHQQeTTm+o6hmCWbaMyrUT00g6rqMVbdJkHeo/8uO8FHf7PxshEEX/htj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=YcCWK8MP; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="YcCWK8MP"
Received: from localhost ([47.65.177.29])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.1/8.17.1.9) with ESMTPSA id 5B5MK4nS019659
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 5 Dec 2025 23:20:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1764973204; bh=VG+GZo2tRUyJ4205Fp5jrZJv8T8cHfwn2ADchdZxRSE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=YcCWK8MPiFs/0MABXEcdPrSRvTWKw8WbVCTVLpGEsSnihyGN6W5ZInJGggxcoRUXq
	 6AHdngWIThZIsQ+sjaLQmBYIPcV1G6T1gguM7Ki/drDtJGgs00b+nHMqL60eoczFZk
	 atXEtadMqp/dBKJv4ELHwwWFBwfzUF3tsFXYoSfo=
From: Dirk Gouders <dirk@gouders.net>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby
 <jslaby@suse.com>, linux-kernel@vger.kernel.org,
        linux-newbie@vger.kernel.org
Subject: Re: pty: childs don't always react on close(2)
In-Reply-To: <20251205214852.GL1712166@ZenIV> (Al Viro's message of "Fri, 5
	Dec 2025 21:48:52 +0000")
References: <gho6oczk2f.fsf@gouders.net> <20251205214852.GL1712166@ZenIV>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Fri, 05 Dec 2025 23:20:03 +0100
Message-ID: <ghh5u4zi3w.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Al Viro <viro@zeniv.linux.org.uk> writes:

> On Fri, Dec 05, 2025 at 10:37:44PM +0100, Dirk Gouders wrote:
>
>> 	child_pid1 = forkpty(&pty_fd1, NULL, NULL, NULL);
>
> You do realize that it will inherit all your opened descriptors,
> including pty_fd, right?
>
> ...

>> 	close(pty_fd);
>
> ... which doesn't do anything to the second child's descriptor
> table, including the descriptor that refers to the same opened file.
> IOW, the IO channel (== opened file) is very much opened after
> that close() - descriptors refering to it still exist.

Oh yes, thank you very much!

I use FD_CLOEXEC nearly everywhere in the mentioned program but exactly
not for the pty file descriptors.  Oh well...

For completenes, I'll attach the modified test-case.
Would be interesting to hear if there are other possible fixes.

Thank you very much, again,

Dirk


--=-=-=
Content-Type: text/plain
Content-Disposition: attachment; filename=test-close-pty.c
Content-Description: PTY test program

/*
 * Test closing file descriptors opened via forkpty() when not all data has been
 * read.  A following waitpid() blocks, when we opened two childs and try to
 * close the file descriptor and then waitpid() for that child...
 */
#include <stdlib.h>
#include <stdio.h>
#include <pty.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdint.h>
#include <fcntl.h>

#define READ_SIZE 4096

/*
 * Set PAGER variables and start a man(1) process.
 */
void do_child(void);
void do_child()
{
	char *e_argv[3] = {"man", "groff_ms", NULL};

	putenv("PAGER=cat");
	putenv("MANPAGER=cat");
	execvp("man", e_argv);
}

int main()
{
	unsigned char read_buffer[READ_SIZE];
	int pty_fd;
	int pty_fd1;
	int wstatus;
	pid_t child_pid;
	pid_t child_pid1;
	pid_t ret_pid;
	ssize_t ret;
	/*
	 * Start a child to send us a manual page.
	 */
	child_pid = forkpty(&pty_fd, NULL, NULL, NULL);

	if (child_pid == -1) {
		fprintf(stderr, "forkpty(): %s\n", strerror(errno));
		exit(EXIT_FAILURE);
	}

	ret = fcntl(pty_fd, F_SETFD, FD_CLOEXEC);

	if (child_pid == 0)
		do_child();

	printf("child_pid = %jd\n", (intmax_t) child_pid);

	memset(read_buffer, '\0', READ_SIZE);
	ret = read(pty_fd, read_buffer, READ_SIZE);

	if (ret == -1) {
		fprintf(stderr, "read(): %s\n", strerror(errno));
		exit(EXIT_FAILURE);
	}

	printf("%s\n", read_buffer);

	printf("%ld bytes read.\n", ret);


	/*
	 * Start another child to send us a manual page.
	 */
	child_pid1 = forkpty(&pty_fd1, NULL, NULL, NULL);

	if (child_pid1 == -1) {
		fprintf(stderr, "forkpty(): %s\n", strerror(errno));
		exit(EXIT_FAILURE);
	}

	ret = fcntl(pty_fd1, F_SETFD, FD_CLOEXEC);

	if (child_pid1 == 0)
		do_child();

	printf("child_pid1 = %jd\n", (intmax_t) child_pid1);

	memset(read_buffer, '\0', READ_SIZE);
	ret = read(pty_fd1, read_buffer, READ_SIZE);

	if (ret == -1) {
		fprintf(stderr, "read(): %s\n", strerror(errno));
		exit(EXIT_FAILURE);
	}

	printf("%s\n", read_buffer);

	printf("%ld bytes read.\n", ret);


	close(pty_fd);

	ret_pid = waitpid(child_pid, &wstatus, 0);

	printf("ret_pid = %jd\n", (intmax_t) ret_pid);

	exit(EXIT_SUCCESS);
}

--=-=-=--
