From: erif <linux-newbie@omnib.org>
Subject: Re: Mounting BSD-labeled slices in Linux
Date: Tue, 20 Apr 2004 14:13:11 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040420141311.D22871@bigtower.net>
References: <20040420123702.C22871@bigtower.net> <20040420114321.GA44860@archibold.chu.cam.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040420114321.GA44860@archibold.chu.cam.ac.uk>; from sos22@cam.ac.uk on Tue, Apr 20, 2004 at 12:43:21PM +0100
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Steven Smith <sos22@cam.ac.uk>
Cc: linux-newbie@vger.kernel.org

On Tue, Apr 20, 2004 at 12:43:21PM +0100, Steven Smith wrote:
> > /dev/hda1 corresponds to FreeBSDs /dev/ad0s1.
> > What does Linux call, for example, /dev/ad0s1a?
> 
> Usually, Linux just shoves stuff in BSD-style slice tables on the end
> of the partition table.  In my case, ad0s4a is hda11, ad0s4b hda12,
> and so on.
> 
> For recent 2.4 kernels, dmesg should have a line of the form:
> 
>  p4: <bsd: p11 p12 p13 p14 p15 p16 >


Thanks!

Yes, this is the FreeBSD-slice

 hda1: <bsd: hda10 hda11 hda12 hda13 >
 
and this is the DragonFly-slice

 hda2: <bsd: hda14 hda15 hda16 hda17 >

..strange numbering, shouldn't it look like this?
 hda2: <bsd: hda20 hda21 hda22 hda23 >


One thing I found particularly interesting is that _both_ /dev/hda2 and
/dev/hda14 seem to represent /dev/ad0s2a, and I can even mount them both at
the same time!
=/


--
Fredrik Eriksson


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
