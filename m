From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Thu, 29 May 2003 23:07:47 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305292307.47642.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030529165407.A446@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Thursday 29 May 2003 22:54, Hal MacArgle wrote:
> Greetings: Slackware 8.1.01 installs easily on our machines with an
> IDE HD and IDE CD, booting the CD nicely and installing from the CD,
> with the BIOS set properly..
>
> However; the subject machine has an IDE 20gB HD and a __SCSI CD__,
> with a BusLogic SCSI card, creating an insurmountable problem - so
> far - and maybe forever. <grin> (The card and drive working
> flawlessly with the other partitions.)
>
> The drive has 4 Linux partitions; two working with Slack8.0 and one
> swap of course.. Previous versions of Slackware utilized two boot
> floppies; one booting the selected image and the 2nd with a "root"
> file.. No problem.. Worked fine for years..
>
> 8.1 is different and the boot from CD works except as above, but
> there is a file 'makedisk' that is supposed to circumvent the non CD
> problem.. Invoking makedisk, as instructed, with the proper bzImage
> entered, in my case scsi.s should work with both an IDE drive and a
> BusLogic card, reports much on the screen but does NOT make a boot
> floppy.. I tried several other images to no avail.. I tried both cat
> and dd transferring the images to /dev/fd0, but apparently a standard
> 1.44 floppy isn't big enough. I tried formatting the floppies at both
> 1.68mB and 1.7X, but no joy as far as booting the floppy.. Apparently
> bzImage alone is not enough to get things going.
>
> The excellent slackware-HOWTO details perfectly an install as long as
> you have an IDE HD _and_ CD.. No other README's shed any light..
>
> As of now I've concluded the only _easy_ way out is to termporarily
> fit an IDE CD for the install and then re-fit the SCSI CD.. What do
> YOU think??? Appreciate!!

There could be another way;
I have installed slackware 9 on a couple of machines using old slack 8.0 boot 
floppys.
Simply try and boot with slack's 8.0 scsi.s and color.gz and then after 
booting place the slack 8.1 cdrom in the drive.
Of course this may not work for you but it has worked for me on several 
occations.

>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable
> .
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
