From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 18:17:59 +0530
Message-ID: <292693080608240547w394bacc4l2410b6eba98d950b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751216AbWHXMsB@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org
Cc: satinder.jeet@gmail.com

Hi List,

I was curious that can we develop a generic disk driver that could
handle all the kinds of hard drives - IDE, SCSI, RAID et al?

I thought we could use the BIOS interrupt 13H for this purpose, but
ran into a LOT of real mode / protected mode issues.

Any other ideas?

Thanks,

Dan.
