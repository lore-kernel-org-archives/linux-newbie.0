From: Arjan van de Ven <arjan@infradead.org>
Subject: RE: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 20:36:13 +0200
Message-ID: <1156444573.3014.82.camel@laptopd505.fenrus.org>
References: <20060824181935.90856.qmail@web83102.mail.mud.yahoo.com>
Reply-To: arjan@infradead.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030445AbWHXSgZ@vger.kernel.org>
In-Reply-To: <20060824181935.90856.qmail@web83102.mail.mud.yahoo.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Aleksey Gorelov <dared1st@yahoo.com>
Cc: jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vget.kernel.org, satinder.jeet@gmail.com

On Thu, 2006-08-24 at 11:19 -0700, Aleksey Gorelov wrote:
> >From: linux-kernel-owner@vger.kernel.org 
> >[mailto:linux-kernel-owner@vger.kernel.org] On Behalf Of Jan Engelhardt
> >>
> >> I was curious that can we develop a generic disk driver that could
> >> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
> >
> >ide_generic
> >sd_mod
> >
> >All there, what more do you want?
> 
> Unfortunately, not _all_. DMRAID does not support all fake raids yet. 

Hi,

it'll be easier and quicker to rev engineer 5 more formats than it will
be to get the bios thing working ;) And the performance of the bios
thing will be really really bad... (hint: real mode can access only 1Mb
of memory, so you will bounce buffer all IO's)

Greetings,
   Arjan van de Ven
