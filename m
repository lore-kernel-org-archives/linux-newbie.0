From: Heimo Claasen <hammer@revobild.net>
Subject: Re: RAM and swap partition
Date: 07 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212080200.gB820cq03238@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

James - that's quite new to me:
> ... that when your system has a crash it is
> still capable of writing a core dump to the harddisk.

I understood it hitherto that it's needed for cases when a program needs
more mem than is free and available ?
Or asked the other way round - would any program which uses more RAM
than is available at a moment, be respeonsible care for "swapping" its
parts (or rather for instance, parts of its data) in/out by itself, and
to some own swap file ?

The second part of James' reply is precisely what I hoped for:
> (you) can make a new swap partition with eg fdisk and change
> the entry for swap in /etc/fstab.
Using an (emptied) partition to split off a part would be indeed much
less risky than a real resizeing of the swap _partition_; and much less
worksome, without GB-backups, <g>

-hc
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
