From: Heimo Claasen <hammer@revobild.net>
Subject: RAM and swap partition
Date: 07 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212072350.gB7NoKnl023626@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

As I'm increasing the RAM installed to the threefold of what there is
now, I wonder if I have to change/resize the swap partition.

(At present the swap is a small bit larger, 364 MB, than memory installed.
I sometimes read advice that the swap partitions should be _twice_ the
installed RAM; but I wonder why: wouldn't this be in function of how
many processes, and especially X-windows, are in use a a same time ?
As the single main memory hog to run on this machine is just one, 1,
application in one, again: 1, window, it dowsn't seem evident to waste
over 2 GB of HD space ?)

If resizing is adviseable: What's the best procdure ?

As it is, with this (Mdk-)install, there is quite a large, almost
empty partition devised as /home directory which would be the evident
candidate to get cut and parted, and I would prefer to not touch at all
on the other existing ones.  So I'd like best to define an all new
"swap" and likewise new "/home" from that (emptied) /home space, and
to redefine the old swap space of the HD as just some other data (or for
the "users" /homes) storage.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-07
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
