From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 09 Jul 2006 12:55:07 +0100
Message-ID: <1152446107.27368.45.camel@localhost.localdomain>
References: <BKEKJNIHLJDCFGDBOHGMCEEGDCAA.abum@aftek.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030456AbWGILhr@vger.kernel.org>
In-Reply-To: <BKEKJNIHLJDCFGDBOHGMCEEGDCAA.abum@aftek.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Ar Sul, 2006-07-09 am 09:53 +0530, ysgrifennodd Abu M. Muttalib:
> Hi,
> 
> I tried with the /proc/sys/vm/overcommit_memory=2 and the system refused to
> load the program altogether.
> 
> In this scenario is making overcommit_memory=2 a good idea?

It will refuse to load the program if that would use enough memory that
the system cannot be sure it will not run out of memory having done so.
You probably need a lot more swap.
