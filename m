From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cfdisk VS Fdisk??
Date: Sun, 13 Mar 2005 09:54:02 -0800
Message-ID: <5.1.0.14.1.20050313094742.01fe9ba0@celine>
References: <20050313131544.GA532@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
In-Reply-To: <20050313131544.GA532@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:15 AM 3/13/2005 -0500, Hal MacArgle wrote:

>Greetings: Using both Fdisk and Cfdisk for years I've never run into
>the latest "discovery," and was wondering if anyone else has
>experienced it..
>
>Various MotherBoards and, mostly, Slackware distribs, I've
>standardised on Slack 9.0 or 9.1, kernel 2.4.20 or 2.4.22 on all
>machines..
>
>Evaluating a Tyan S1564S MB with Intel 430HX chipsets; Cfdisk and
>Fdisk report radical differences depending on which of four HD's I've
>tried.. Two WD Caviar 2340's, 340mB, were manipulated by Cfdisk OK
>but Fdisk reported _no_ partitions at all.. (In the past I've noted
>differences in byte amounts, etc, but never this.) <grin>
>
>At first I thought it was because of the older drives so I fitted a
>Maxtor 20gB drive and got the same report.. Fitting a Seagate, 8gB,
>fdisk reported correctly with it.. (In all cases a single drive
>attached to Primary IDE as Master.)
>
>Reading man fdisk, it surprised me to see the author saying to not
>use fdisk because Cfdisk was better and sfdisk should be used if it's
>features needed... "Too many bugs," he or she wrote...
>
>Is this something to be concerned about? Or just one of the many
>anomolies we've learned to live with thru the years?? TIA..


I've seen similar behavior in the past, and it proved to be a versioning 
issue ... I was using an up-to-date cfdisk (on the Debian installer disk) 
and an old fdisk (from I can't guess where ... probably a neglected Debian 
install).

I recall seeing it around the time drives hit the 150 GB range, and then 
moving to the latest fdisk dealt with it. At this point, I don't recall if 
the issue was actually drive size, or if it was CFS remapping of some sort 
associated with the mobo chipset.

I don't know what version of fdisk Slackware is shipping. MY Debian-Sid system
is perhaps six months out of date, and it has fdisk version 2.12 ("fdisk 
-v") and cfdisk and cfdisk 2.12 (cfdisk -v"). With these versions, I've 
seen no problems with drives up to 250 GB or so.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
