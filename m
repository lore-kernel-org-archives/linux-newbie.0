Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E04D156677;
	Fri,  5 Dec 2025 21:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764970703; cv=none; b=UiPjIzjzvOkrmh+Egct+9mLCKWbElNLQPg/rF3+w0+lC0YsxdqRmwUNrjzYsWwbRCpAybjRBFRbSD6NJQPV6O3g4fqK2Gx74CGrr7LbXPnZ3Eey3N6bCKlYOKcOuM+sIMvWegkHqWAy4UNqo9wRfuXhy2y3cQO14aEF/wZ6fiF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764970703; c=relaxed/simple;
	bh=CAXXm8HC86EOxEerGobcQRdNqt8Xob43MZ2AjsmDz/k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=MwOUi+PHxbEp4ZQozFo1S2f9oRGqXOjAegJAbd/G3d2s9/t5RZINFrH/52Wp3Bi36SYt6l9a9syh/NAEdA98V7O3O6KVZDWQe1gbX+Kenffs4oqFxBk0y5boJnZZ4f9pjQMPTQGcMMz/RXu1QPEQ7JMGaXxOgXKIYNph428eC2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=bS5DfxeI; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="bS5DfxeI"
Received: from localhost ([47.65.177.29])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.1/8.17.1.9) with ESMTPSA id 5B5LbiYI017851
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 5 Dec 2025 22:37:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1764970665; bh=CAXXm8HC86EOxEerGobcQRdNqt8Xob43MZ2AjsmDz/k=;
	h=From:To:Cc:Subject:Date;
	b=bS5DfxeIhi/7fs3kwFgz6+yLuzbjoUSEiRyz6TmNNul1YJUKLE/kwPsWr9pb3F4gN
	 XvatpyuXERmAC7HSPaFGxsF4BxZcDVuHDdWqTNL+SqBau1prPTYbd//7ZLqlddEbP1
	 7C39r8QOPi7K0+PQeVXiJuzjQ139g/hkChzHFwBg=
From: Dirk Gouders <dirk@gouders.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby
 <jslaby@suse.com>, Al Viro <viro@zeniv.linux.org.uk>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org
Subject: pty: childs don't always react on close(2)
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Fri, 05 Dec 2025 22:37:44 +0100
Message-ID: <gho6oczk2f.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Hi,

chances are high, that I am doing a stupid mistake, because experienced
programmers already would have noticed problems with ptys.
But if you have the time, perhaps you could help me undestand the
following problem:

I am working on a program (a terminal pager [1]) that works with
ptys to allow users to have several manual pages open and reload them
when terminals are resized.

I now noticed, that a close on a pty file descriptor doesn't cause the
child process to exit and a waitpid(2) hangs forever or gets interrupted
(when used without WNOHANG) -- it seems the child doesn't get noticed
about the close(2) on the other end.

Curious is that I notice this only if more than one ptys are in use --
with a single one everything is OK (see attached sample program and test
it with only one pty).


I would be very glad if you could tell me if I am correct to expect that
if I close(2) a pty file descriptor the other end should notice that and
I could assume a waitpid(2) to succeed.
And perhaps, you could tell me which mistake I am doing.

I prepared a small test-case that reproduces the problem, at least here.
If that program is modified to work with just one child, everything
works as expected, when the second child is used, the waitpid() hangs...

Apologies, if this is not the right place and if I should have asked
somewhere else.

Regards,

Dirk

[1] https://github.com/dgouders/lsp


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
