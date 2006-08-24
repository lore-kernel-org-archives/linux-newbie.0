From: Aleksey Gorelov <dared1st@yahoo.com>
Subject: Re: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 15:27:27 -0700 (PDT)
Message-ID: <20060824222727.67706.qmail@web83111.mail.mud.yahoo.com>
References: <44EE0DDA.5060600@cfl.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44EE0DDA.5060600@cfl.rr.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Phillip Susi <psusi@cfl.rr.com>
Cc: arjan@infradead.org, jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, satinder.jeet@gmail.com



--- Phillip Susi <psusi@cfl.rr.com> wrote:

> The int 13 calls to the bios can only accept addresses within the first 
> 1 MB of memory, and the calls are synchronous, so DMA really doesn't 
> matter as the cpu will be busy waiting anyhow while the IO takes place, 
> which will wreak all kinds of hell on the rest of the running system, 
> including other hardware ISRs.
> 
  Not that easy. Once you start int13 transfer, your vm86 thread may be 
preempted to allow cpu doing something useful, including other ISRs processing.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
