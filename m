From: Jim Nelson <james4765@verizon.net>
Subject: Re: CD-RW-Drive
Date: Wed, 29 Dec 2004 05:26:50 -0500
Message-ID: <41D2866A.90307@verizon.net>
References: <20041229070643.E79E71737F@heisspf>
Reply-To: james4765@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041229070643.E79E71737F@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Season Greetings,
> 
> Slackware 10, Kernel 2.4.26
> 
> I got myself an Asus Atapi CD-RW-Drive and I am not sure if this was the right 
> choice for Linux. I was able to make it work following the instruction of the 
> program xcdroast, however, some things seem strange.
> 
> I always get error messages telling not to use atapi instead scsi.
> 
> I had a CD with picture files on. When I copied them to the HD I can't open 
> them and copying back to the CD I can't open them as well any longer. In fact 
> I can not mount the CD anymore. Only xcdroast can.
> $ mount /mnt/cdrom
> mount: Not a directory
> 

I've had similar problems with Slackware - it doesn't always set the /dev/cdrom 
symlink properly, and *really* has problems with external (SCSI, USB) CDROM 
drives.  you might want to try the full mount command (as root):

mount -t iso9660 /dev/hdb /mnt/cdrom

> Trying too boot Knoppix 3.4 from the CD I get only a blank screen. Booting 
> from CD and then switching to HD, Knoppix works alright.
> 
> It seems that xcdroast can only write .wav and .iso files?????
> 

Somewhat.  k3b is better at creating iso files, and lets you drag and drop the 
file system on the CD, but sometimes (for more advanced efforts - creating 
bootable CD's, Mac-format CD's, etc) you still need to use the mkisofs | cdrecord 
command line combo.

> Questions:
> 
> Is there a better CD-RW-Drive for Linux than Asus? The shop is willing to 
> exxchange.
> 
> Are there better programs than xcdroast to R+W and which?
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
