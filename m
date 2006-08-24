From: Ralf Baechle <ralf@linux-mips.org>
Subject: Re: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 17:54:01 +0100
Message-ID: <20060824165401.GB19881@linux-mips.org>
References: <292693080608240547w394bacc4l2410b6eba98d950b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030387AbWHXQyg@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080608240547w394bacc4l2410b6eba98d950b@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org, satinder.jeet@gmail.com

On Thu, Aug 24, 2006 at 06:17:59PM +0530, Daniel Rodrick wrote:

> I was curious that can we develop a generic disk driver that could
> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
> 
> I thought we could use the BIOS interrupt 13H for this purpose, but
> ran into a LOT of real mode / protected mode issues.

A BIOS only contains a better than nothing quality driver, take the VESA
VLB driver as an example.  And lacks portability, upgrading is a pain.

  Ralf
