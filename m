From: Jim Nelson <james4765@verizon.net>
Subject: Re: dma turned off
Date: Wed, 10 Nov 2004 23:30:16 -0500
Message-ID: <4192EAD8.3070400@verizon.net>
References: <20041111031327.278F03F57C@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041111031327.278F03F57C@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Hi,
> 
> Slackware 10
> 
> When I switch to kernel 2.6.7 I get the following error message on boot:
> 
>  * Warning: The dma on your hard drive is turned off. *
>  * This may really slow down the fsck process. *
> 
> Apparently with the command "hdparm -d /dev/hda" dma is turned on.
> 
> Where in /etc/rc.d if that is the place do I put this command?
> 
> However, giving the command from the console as root after booting I get:
> 
> setting using_dma to 1 (on)
>  HDIO_SET_DMA failed: Operation not permitted
>  using_dma    =  0 (off)
> 
> How to resolve?
> 
> Thanks & regards

What kind of hard drive and IDE chipset does it have?  I know some drives were 
recently added to a no-DMA blacklist for behaving badly.  Normally, dma is 
supposed to be enabled by default, and only disabled when a known-bad hard drive 
or IDE controller is found.


On my Slack 10.0 server, I put hdparm in rc.local.  My rc.local:

(most of the disk storage is on SCSI drives, /dev/hda is just the boot drive due 
to a POS BIOS that can't boot off of expansion cards)

#!/bin/sh
#
# /etc/rc.d/rc.local:  Local system initialization script.
#
# Put any local setup commands in here:
 

# enable 32-bit mode, turn on APM, set spindown for 1 hour,
# unmask IRQ's, nd set the keep-settings flag for /dev/hda
hdparm -c 1 -B 128 -S 242 -u 1 -k -q /dev/hda
 

# get the date from VT's NTP server and start the local time server
ntpdate ntp-1.vt.edu
ntpd &
 

#start the SMART monitoring tools
smartd &

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
