From: Steven Ackerman <steven@nvts.us>
Subject: Re: Configuring lilo to boot from sda-Got it
Date: Wed, 16 Apr 2003 00:31:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E9D06B8.6040309@nvts.us>
References: <5.1.0.14.1.20030415121527.01e96f68@celine> <5.1.0.14.1.20030415155724.01e95958@celine>
Reply-To: steven@nvts.us
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030415155724.01e95958@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org, babydr@baby-dragons.com

Ray Olszewski wrote:
> OK. It sounds to me like you do NOT have the lilo bootloader installed 
> on sda. To do that, you should do the following (as root):
> 
>         1. Copy the file to the usual name, with "cp 
> /etc/lilo.conf.anaconda /etc/lilo.conf".
> 
>         2. Edit lilo.conf so it works (I'll return to this).
> 
>         3. Run lilo.
> 

Did all that. Same problem. At this point I knew that something else was 
going on. I know that lilo uses lilo.conf and even if between the 
lilo.conf.anaconda file and lilo.conf it in the /etc directory it should 
work.

There's a SCSI utility that is ran during POST. The bios refers to it. 
All bootable drives in the BIOS were floppy and CDROM. So I opened up 
the SCSI util and found something referring to "Boot Target ID" it was 
set to drive 1. That didn't sound right to me because it had an 
installed drive 0. I set it to 0 and Linux booted right up. I sure am 
curious about the whole lilo.conf.anaconda file though.

Thanks for all the help. I really appreciate it. I now know a few more 
things than I did. I'm so glad this list has stayed active. Hopefully 
I'll be able to contribute at some point.

-Steve
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
