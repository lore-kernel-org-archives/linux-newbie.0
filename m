From: Aleksey Gorelov <dared1st@yahoo.com>
Subject: RE: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 11:19:35 -0700 (PDT)
Message-ID: <20060824181935.90856.qmail@web83102.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751649AbWHXSTh@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com
Cc: linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vget.kernel.org, satinder.jeet@gmail.com

>From: linux-kernel-owner@vger.kernel.org 
>[mailto:linux-kernel-owner@vger.kernel.org] On Behalf Of Jan Engelhardt
>>
>> I was curious that can we develop a generic disk driver that could
>> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
>
>ide_generic
>sd_mod
>
>All there, what more do you want?

Unfortunately, not _all_. DMRAID does not support all fake raids yet. Moreover, there is usually
some gap for bleeding edge hw support.

>
>> I thought we could use the BIOS interrupt 13H for this purpose,
>>
>I fail to see a BIOS on non-x86 computers.
>
>> but ran into a LOT of real mode / protected mode issues.
>>
>Sure. We are not real mode.
>Ever heard of BIOS limitations? If no, first check out 
>http://www.pcguide.com/ref/hdd/bios/sizeGB8-c.html
  This is not really relevant. They actually answer it right in the article - BIOS extensions, aka
EDD.

  I'd say the performance issue is more in int13 non-dma vs. dma data transfers, and tricks
associated with vm86. Although most 'on board' BIOSes support dma just fine for single drives,
faik raid and 'plug-in' card option ROMS usually lacks any dma support. Plus, there is no way to
tell whether BIOS will do dma or pio upfront.
  Another problem here is that BIOSes usually support legacy PIC interrupt model, and modern OSes
use IO APIC and resteer the interrups.

Aleks.

>
>
>
>Jan Engelhardt
>-- 
>-
>To unsubscribe from this list: send the line "unsubscribe 
>linux-kernel" in
