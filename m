From: James Miller <jamtat@mailsnare.net>
Subject: Re: help with IDE zip drive
Date: Thu, 10 Jun 2004 12:17:37 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406101216580.15997@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

---------- Forwarded message ----------
Date: Wed, 9 Jun 2004 13:47:51 -0500 (CDT)
From: James Miller <jamtat@mailsnare.net>
To: Hal MacArgle <haltec@kvinet.com>
Subject: Re: help with IDE zip drive

On Wed, 9 Jun 2004, Hal MacArgle wrote:

> First though the kernel must be advised about the drive with; I use
> Grub and enter on boot hdc=ide-scsi  the secondary master IDE spot.
> I believe append hdc=ide-scsi works with Lilo and I suspect you can
> hard compile the kernel if you wish, not sure.. Thence install the
> module ide-scsi, as the software wants to talk to a scsi drive, not an
> IDE drive so it has to be emulated.. A simple mount /dev/sda4 then
> mounts it and you can carry on... Why iOmega selected sda4 for this,
> no one seems to know but it's a fact, at least here.. I seem to
> remember you can format it as sda_ forget the details. I keep the
> defaults if possible..

You're a lifesaver, Hal!  Looks like the wisdom of age wins this one!  I
never would have gotten it through my thick young skull to try mounting
the thing as a scsi device (actually, I did think of that, but just as
quickly dismissed it as a foolhardy act of desperation).  After reading
you post, I issued mount /dev/sda4 /zip and WALLA! (I think that's the
American pronunciation and spelling) it works!  I now have a mountable zip
disk.  I guess it was just too simple.  Thanks so much for your input on
this one, and to others who contributed as well.  It looks like scsi
emulation really is the key: but with the 2.6.x kernels, I thought scsi
emulation had been done away with?  A mystery for another day, I suppose.

Take care, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
