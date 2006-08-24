From: Phillip Susi <psusi@cfl.rr.com>
Subject: Re: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 16:36:42 -0400
Message-ID: <44EE0DDA.5060600@cfl.rr.com>
References: <20060824194012.77909.qmail@web83101.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S965077AbWHXUgb@vger.kernel.org>
In-Reply-To: <20060824194012.77909.qmail@web83101.mail.mud.yahoo.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Aleksey Gorelov <dared1st@yahoo.com>
Cc: arjan@infradead.org, jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vget.kernel.org, satinder.jeet@gmail.com

The int 13 calls to the bios can only accept addresses within the first 
1 MB of memory, and the calls are synchronous, so DMA really doesn't 
matter as the cpu will be busy waiting anyhow while the IO takes place, 
which will wreak all kinds of hell on the rest of the running system, 
including other hardware ISRs.


Aleksey Gorelov wrote:
>> thing will be really really bad... (hint: real mode can access only 1Mb
>> of memory, so you will bounce buffer all IO's)
> This is true for non-dma case only. As I already mentioned before, most BIOSes 
> support dma, and there is no 1Mb limit for that (at least on modern hw).
> 
> Aleks.
