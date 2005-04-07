From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: Card Reader
Date: Fri, 08 Apr 2005 00:08:53 +0200
Message-ID: <4255AF75.10106@vip.cybercity.dk>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine> <d349ga$qln$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d349ga$qln$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: smertens@mho.com

smertz wrote:
> Ray Olszewski wrote:
> 
[snip]
> This is the last few lines from dmesg.  Based on this how would one 
> mount if I have made the mountpoint of /mnt/thumb
> 
> SCSI device sdc: 256000 512-byte hdwr sectors (131 MB)
> sdc: Write Protect is off
> sdc: Mode Sense: 02 00 00 00
> sdc: assuming drive cache: write through
>  sdc: sdc1
         ^^^^
> Attached scsi removable disk sdc at scsi3, channel 0, id 0, lun 0
> USB Mass Storage device found at 4
> 
> Red Hat Enterprise Linux ES release 4 (Nahant)
> 
> 
> $ cat /proc/scsi/scsi
> Attached devices:
> Host: scsi0 Channel: 00 Id: 00 Lun: 00
>   Vendor: ATA      Model: ST3200822AS      Rev: 3.02
>   Type:   Direct-Access                    ANSI SCSI revision: 05
> Host: scsi2 Channel: 00 Id: 00 Lun: 00
>   Vendor: eM       Model: Bay Reader       Rev: 1.00
>   Type:   Direct-Access                    ANSI SCSI revision: 02
> 
[snip]

Look at what I marked in your output from dmesg, hope it helps.

-- 
Flemming Greve Skovengaard            The killer's breed or the Demon's seed,
a.k.a Greven, TuxPower                The glamour, the fortune, the pain,
<dsl58893@vip.cybercity.dk>           Go to war again, blood is freedom's stain,
4112.38 BogoMIPS                      Don't you pray for my soul anymore.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
