From: "Peter H." <heisspf@skyinet.net>
Subject: CD-RW-Drive
Date: Wed, 29 Dec 2004 15:06:43 +0800
Message-ID: <20041229070643.E79E71737F@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Season Greetings,

Slackware 10, Kernel 2.4.26

I got myself an Asus Atapi CD-RW-Drive and I am not sure if this was the right 
choice for Linux. I was able to make it work following the instruction of the 
program xcdroast, however, some things seem strange.

I always get error messages telling not to use atapi instead scsi.

I had a CD with picture files on. When I copied them to the HD I can't open 
them and copying back to the CD I can't open them as well any longer. In fact 
I can not mount the CD anymore. Only xcdroast can.
$ mount /mnt/cdrom
mount: Not a directory

Trying too boot Knoppix 3.4 from the CD I get only a blank screen. Booting 
from CD and then switching to HD, Knoppix works alright.

It seems that xcdroast can only write .wav and .iso files?????

Questions:

Is there a better CD-RW-Drive for Linux than Asus? The shop is willing to 
exxchange.

Are there better programs than xcdroast to R+W and which?

Thanks & regards
 
   
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
