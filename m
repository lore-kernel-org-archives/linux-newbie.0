From: james miller <jamtat@mailandnews.com>
Subject: RE: Sharing drives.
Date: Sat, 12 Oct 2002 13:28:10 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DA82403@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "lilo.phillips" <lilo.phillips@sympatico.ca>
Cc: linux <linux-newbie@vger.kernel.org>

>Hi James
>No, I must sheepishly confess I did not realize that.
>I always tried to partition whichever hard drive I was using and give
>whatever flavour I was using, a primary partition.
>

No, Linux can be installed to any partition - primary or logical within 
extended (to use M$ terminology) - it doesn't matter, as I understand it. The 
only potential limitation in this regard may be that the boot sector of the 
Linux partition should be within the 1024 cylinder limit - but that's only 
with older versions of Linux. At some point, that limitation was fixed. On 
newer versions of Linux (say, for about the last 4 years?), the boot partition 
may be anywhere on the disk, whether it be within or beyond the 1024th 
cylinder. (Note to the more experienced Linux users on this list: please 
correct any mistakes I may have made above).

>Partition Magic v 3 (very old I realize but it's what I've got)
>is not graphically showing all the logical drives I made in my W98SE
>install;

Older versions of PM have a disk-size limitation. I also have an older version 
of PM. It cannot edit any drive larger than 8.4 GB, or, more precisely, it can 
only edited the first 8.4 GB of any given drive. Maybe your version has the 
same limitation and is thus not allowing you to see the full drive?.

You might want to try Bootit for your disk editing needs. It is shareware, and 
is actually a program written for booting multiple operating systems. But it 
comes with a really great set of disk editing tools - complete with GUI. To 
use it, you have to download a file on a Win machine which allows you to 
create a bootable install disk. You then boot from this disk. BUT THEN 
(IMPORTANT!), you DO NOT let the booting prog install! Click "cancel". Then, 
you are taken to a maintenance menu where you can do your disk editing stuff, 
without ever having installed the booting program. It works great, and I've 
used it extensively. Just remember, do NOT let Bootit install. Click "cancel", 
and then you'll get to the disk editing screen. I can offer further pointers, 
if you end up using it.

>
>Instead of working any more with my drive and possibly losing all
>instead of gaining access to the other 20 free gigabytes, I downloaded
>KNOPPIX and am ecstatic to have been able to get it to run exactly as
>the website said it would.  It even found my network card and jumped
>onto the internet using my 3Com hub and Efficient Speedstream high
>speed modem from Bell Sympatico.  This is a first for me. Even Lindows
>wouldn't do that for me, and that is supposed to be it's strong
>point.
>

Knoppix is great. I've used it, too. Maybe you noted you can even create a 
temporary swap file on your Win/DOS drive for it to use to expand memory a 
bit? They've really got their act together.

>I'm beginning to suspect I was very close a lot of times with other
>versions, but was tripped up by the  network card(s).

I don't have alot of experience with Linux networking, but I have had the 
occassional problem with a NIC not being detected. It can be challenging to 
try and set up such a card manually, but can be done. Good luck with getting 
things running.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
