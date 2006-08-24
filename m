From: Jan Engelhardt <jengelh@linux01.gwdg.de>
Subject: Re: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 15:10:33 +0200 (MEST)
Message-ID: <Pine.LNX.4.61.0608241506200.19927@yvahk01.tjqt.qr>
References: <292693080608240547w394bacc4l2410b6eba98d950b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751415AbWHXNM1@vger.kernel.org>
In-Reply-To: <292693080608240547w394bacc4l2410b6eba98d950b@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org, satinder.jeet@gmail.com

>
> I was curious that can we develop a generic disk driver that could
> handle all the kinds of hard drives - IDE, SCSI, RAID et al?

ide_generic
sd_mod

All there, what more do you want?

> I thought we could use the BIOS interrupt 13H for this purpose,
>
I fail to see a BIOS on non-x86 computers.

> but ran into a LOT of real mode / protected mode issues.
>
Sure. We are not real mode.
Ever heard of BIOS limitations? If no, first check out 
http://www.pcguide.com/ref/hdd/bios/sizeGB8-c.html



Jan Engelhardt
-- 
