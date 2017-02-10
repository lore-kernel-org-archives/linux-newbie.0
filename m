From: anarchean <anarchean@squaredlambda.xyz>
Subject: File system in a file
Date: Fri, 10 Feb 2017 15:55:42 -0300
Message-ID: <6551e91b-d973-100f-becd-a96ef82816e6@squaredlambda.xyz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi, I'm a undergraduate student and totally new to this kernel devel
thing.

I was asked as an assignment to write a very basic file system, writing
it to a file in my Operating Systems class. I'm really excited with
this subject so I decided that as an self-pleasing extra, I would write
a kernel module to actually make this file system work in a real
operating system (and GNU/Linux is the only true one ;).

I thought about FUSE, but I them I realized it would be very cool
writing a kernel module instead. So, I did some research, I know
FS are access through the VFS interface, I know which functions
and structures to implement. I also read some of the source code
of both ext2 and ecryptfs. And some extra material on the web.

TL;DR; A {
	My question is, if I am writing an file system over a file
	inside another file system, how should I access the file,
	directly via vfs_write/read and flip_open or via a user space
	daemon communicating with the kernel?
}

I know direct writing, using the VFS interface is frowned upon, but
from what I understood, that's what ecryptfs does. And most people
doing it is trying to do so for reading/writing configuration files.

TL;DR; B {
	(Out of curiosity) Is there any big performance implications
	of using vfs_read/write vs communicating with a user space
	daemon?
}

I'm glad for any help you could provide. Thanks!


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
