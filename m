From: Heimo Claasen <hammer@revobild.net>
Subject: core dump volumes
Date: 25 Nov 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211250121.gAP1LRq01890@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

With a yet not perfectly working (X-)application I happen to get
X-server crashes and core dumps.

(1.) The sheer volume of those "core.nnnn" dumps is flabbergasting:
tendentially, they fill up all available volume of the main Linux
partition - and some of these dumps did, and this apparently "spilled
over" and damaged some of the X setup -, and they are in the range of
600+ MB.
I have some trouble to understand this:

-- The "core" (how much is this identical with the loaded kernel?)
   couldn't be possibly that large; there's only just a bit more than
   half of that RAM installed in the machine (320 MB), definitely not
   600 MB or more.

-- What is it that gets dumped, really ?

(2.) Using "mc" (the Midnight Commander), I found such a "core.1216" dump
indicated as a file with a size of "637164K", and deleted it.

Running "df" before and after, I get quite different data:

Before deleting:  1875228 1K-blocks in use
After deleting:   1429892 1K-blocks in use

Difference thus:   445336 1K-blocks

-- clearly less than the 637164K of the deleted file according to MC.

Where have the missing 192828K been/vanished ?
Who is correct here, "df" or "mc" ? And what/whom is to be believed ?

// Heimo Claasen // Brussels 2002-11-24

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
