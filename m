From: Ray Olszewski <ray@comarre.com>
Subject: Re: dual boot
Date: Thu, 17 Jul 2003 11:57:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030717114414.0200d278@celine>
References: <HBEJLOFMLEPBMAAEFNFDCEMLCAAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDCEMLCAAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie <linux-newbie@vger.kernel.org>

At 09:34 AM 7/17/2003 -0600, Anna G. Zapata wrote:
>Hello all,
>
>I would like to install RH 8.0 on my W2K laptop (a dual boot).  I entered
>the installation program without a problem and finally came upon the
>partioning section of the setup.  I clicked to use an automatic partition
>and clicked next.  I was told that there wasn't enough disk space, but I
>know that I have a little over 2G on the drive.  Does anyone have any
>suggestions as to what I'm doing wrong?


Others have offered some guesses about what your problem might be. No one 
can do mroe than guess, however, because " I have a little over 2G on the 
drive" is not very clear. Are you referring to the size of the drive, the 
unused space in a Windows partition, or the unused space not currently in 
any partition? If the first, your situation is probably hopeless. If the 
second, you will need to do some work, or switch to a different distro (as 
someone else suggested). If the third, then I'm surprised that you are 
having problems.

Offhand, I do not know how much space RH 8.0 requires to install, but I 
would expect 2 GB to be enough for a basic install (I can install a minimal 
Debian in about 200 MB, for example). If RH needs more space than that, 
shame on Red Hat ... it is using an awfully demanding and inflexible 
installer. But you do need the 2 GB in the form of unpartitioned space, so 
the RH installer can create an ext2 partition (and probably a swap 
partition too, unless your laptop has unusually generous RAM) for Linux to use.

RH used to ship with a partition resizer, an app that allowed you to make 
an existing (Windows, usually) partition smaller to make room for a Linux 
(ext2) partition. You might see if whatever version of RH you have offers 
this capability (I think it was called Partition Magic or something similar 
to that).

Even if you get RH to install on this system, you are likely to be limited 
in what it will be able to do. I'm not sure what Frank means by "realtime 
data", but certainly some data (e.g., mpeg or DivX video) is sufficiently 
demanding of disk space that a 2 GB partition would be woefully inadequate 
(for perspective, the system that I store edited video on has about 450 GB 
of storage). Still, 2 GB should be enough to give you a system that is 
usable for many purposes.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
