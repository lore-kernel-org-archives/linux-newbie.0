From: whitnl73@juno.com
Subject: Re: RAM and swap partition
Date: Sat, 7 Dec 2002 21:28:40 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021207.212927.134684296.0.whitnl73@juno.com>
References: <200212080200.gB820cq03238@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212080200.gB820cq03238@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 7 Dec 2002, Heimo Claasen wrote:

> James - that's quite new to me:
> > ... that when your system has a crash it is
> > still capable of writing a core dump to the harddisk.
>
> I understood it hitherto that it's needed for cases when a program needs
> more mem than is free and available ?
> Or asked the other way round - would any program which uses more RAM
> than is available at a moment, be respeonsible care for "swapping" its
> parts (or rather for instance, parts of its data) in/out by itself, and
> to some own swap file ?

For historical reasons, a pagefile is called a swap file.  It is virtual
memory.  The amount of memory available (to malloc(), FI) is the sum of
real memory and swap files, less some overhead for the page tables.  The
old swap is twice ram rule of thumb was for systems trying to run X with
4 or 8mb real memory.
>
> The second part of James' reply is precisely what I hoped for:
> > (you) can make a new swap partition with eg fdisk and change
> > the entry for swap in /etc/fstab.

Don't forget to mkswap.

> Using an (emptied) partition to split off a part would be indeed much
> less risky than a real resizeing of the swap _partition_; and much less
> worksome, without GB-backups, <g>
>
> -hc
>
Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
