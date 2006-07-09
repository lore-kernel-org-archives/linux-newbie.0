From: "Abu M. Muttalib" <abum@aftek.com>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 9 Jul 2006 18:42:23 +0530
Message-ID: <BKEKJNIHLJDCFGDBOHGMCEFIDCAA.abum@aftek.com>
References: <20060709121511.GD2037@1wt.eu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030488AbWGINIL@vger.kernel.org>
In-reply-to: <20060709121511.GD2037@1wt.eu>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Willy Tarreau <w@1wt.eu>
Cc: Alan Cox <alan@lxorguk.ukuu.org.uk>, Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

>It's explained in Documentation/filesystems/proc.txt. This file know far
>ore things than me :-)

I tried with overcommit_ratio=100 and overcommit_memory=2 in that sequence.

but the applications were killed. :-(

Regards,
Abu.
