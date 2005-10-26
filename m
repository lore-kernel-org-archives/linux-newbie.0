From: Sergio Paracuellos <sparacuellos@lock-linux.com>
Subject: Problems with current file descriptor
Date: Wed, 26 Oct 2005 16:46:53 +0200
Message-ID: <1130338013.3344.5.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KERNEL-NEWBIE <linux-newbie@vger.kernel.org>, NUCLEO-DEVEL <nucleo-desarrollo@listas.hispalinux.es>, LINUX-KERNEL <linux-kernel@vger.kernel.org>

Hi all,

I have problems to know whats is the current file descriptor. 

"task_struct" have a files_struct structure which contains all files for
a process in "fd". If I want to get the complete path for one of them,
How can I know what is the correct one in fd_array?

I suppose is something like:

path = d_path(task->files->fd[x]->f_dentry,
task->files->fd[x]->f_vfsmnt, buf, PAGE_SIZE);

But I don't know how to know this x for my correct file (for example the
last file I used).

Thanks in advance...

Cheers,
	Sergio

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
