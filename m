From: erif <linux-newbie@omnib.org>
Subject: Re: Mounting BSD-labeled slices in Linux
Date: Tue, 20 Apr 2004 15:05:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040420150502.B31144@bigtower.net>
References: <20040420123702.C22871@bigtower.net> <20040420114321.GA44860@archibold.chu.cam.ac.uk> <20040420141311.D22871@bigtower.net> <20040420124022.GA51878@archibold.chu.cam.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040420124022.GA51878@archibold.chu.cam.ac.uk>; from sos22@cam.ac.uk on Tue, Apr 20, 2004 at 01:40:22PM +0100
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, Apr 20, 2004 at 01:40:22PM +0100, Steven Smith wrote:
> What you've seen isn't entirely inconsistent with that, if you have
> five logical partitions under the primary for hda4.

Ah.. Yes, I do. =)


> > One thing I found particularly interesting is that _both_ /dev/hda2 and
> > /dev/hda14 seem to represent /dev/ad0s2a, and I can even mount them both at
> > the same time!
> This strikes me as an incredibly bad idea.  Definitely don't mount
> hda2 read/write. :)

Just out of curiosity, I mounted /dev/hda1 too. =)
Shouldn't something prevent me from doing this, or at least warn me?

--
Fredrik Eriksson

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
