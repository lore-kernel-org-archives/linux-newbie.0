From: Ray Olszewski <ray@comarre.com>
Subject: Re: lilo
Date: Sat, 27 Apr 2002 11:46:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020427184635.01091e64@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Tom Beer <mailings@analogon.com>, Staci <spiritlover666@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Tom -- Your description of your problem is a bit too elliptic to get good
answers. (I think the range of responses from others who have posted
illustrates how unclear your questions are ... people are trying hard to
guess your meaning.)

At 06:56 PM 4/27/02 +0200, Tom Beer wrote:
>I'm using Redhat 7.0 and there
>should be a way to get it running.

There certainly should. Many ways, usually.

>It fits on a disk. 

What is "it" and what do you mean by "a disk" (a floppy, a hard disk
partition, or a CD)? 

>I think that I
>can't get the lilo process in my head 
>(and I hope so). 

Huh?

>I compiled many things
>as modules and the kernel 2542462 big.

What do you mean by "the" kernel? That's a chubby kernel even *after* it is
uncompressed to run. More to the point ... how large is the actual bzImage
file you created?

>But isn't there a way to install the bzImage?

Install it on what?

On a floppy? Sure. You can just dd it to the floppy for a crude boot.

On a hard disk partition? Well, not really; here you do require a bootloader
like LILO or GRUB. The usual way to do it is to cp the bzImage file to a
suitable place (/boot is the custom), edit /etc/lilo.conf so it identifies
the new image as the one to boot from, and run lilo.

Some kernel Makefiles have a "make install" option that puts the bzImage or
zImage where it needs to be; I don't know if whatever kernel RH 7.0 used did
this.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
