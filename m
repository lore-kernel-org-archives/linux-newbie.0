From: whitnl73@juno.com
Subject: Re: Re: Shutdown problem
Date: Sun, 19 Jan 2003 15:56:30 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030119.202015.134688608.0.whitnl73@juno.com>
References: <03011914444800.00586@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <03011914444800.00586@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: anantaneja@rediffmail.com, linux-newbie@vger.kernel.org

On Sun, 19 Jan 2003, pa3gcu wrote:

> On Sunday 19 January 2003 14:21, Anant Aneja wrote:
> > heres more info :
> > my kernel is of version 2.4.2-2.
> > i couldnt locate the readme u mentioned.
> > there are no files there (in that folder).
> > does that mean that I havbe a improperly installed system.
>
> It maeans you dont have the kernel source installed nothing more.
> I suggest you retrive either linux-2.4.2.tar.gz or update your kernel to
> something more recent. Then when you have the source and unpacked it properly
> you will then have the README in /usr/src/linux .
> I suggest you do as i mentioned to hunt down your problem.

Here's a sneak preview from that same README:

INSTALLING the kernel:

 - If you install the full sources, put the kernel tarball in a
   directory where you have permissions (eg. your home directory) and
   unpack it:

		gzip -cd linux-2.4.XX.tar.gz | tar xvf -

   Replace "XX" with the version number of the latest kernel.

   Do NOT use the /usr/src/linux area! This area has a (usually
   incomplete) set of kernel headers that are used by the library header
   files.  They should match the library, and not get messed up by
   whatever the kernel-du-jour happens to be.

>
> According to your message about "its always been happening" that would
> suggest a harware incompatabilty, why not sinply use shutdown -r and see if
> that helps.
>
>
> > Please help
> > Anant
>
Sorry, I couldn't resist.  Nobody seems to read that part of the README.
--
---oops---
Linux giftie 2.4.13 #1 Tue Oct 30 22:04:20 EST 2001 i586 unknown



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
