From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM settings and bash resources
Date: Sat, 19 Oct 2002 16:09:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021019160457.024730b0@celine>
References: <1034969037.26230.3.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210191837370.7796-100000@filesrv1.baby-drag
 ons.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

I meant to reply earlier but it slipped my mind.

First, it would help to be a bit more descriptive than just to say "has 
trouble reading large files". What sorts of files? What sort of trouble? 
What application software is involved?

Without that detail, here is just a guess ... under Linux, DMA is not 
enabled on the drive (I'm assuming here that this is an ATAPI drive, 
another detail you omitted). You can check this (and if need be correct it) 
with "hdparm" ... the man page will give you the details.

[...]
>On 18 Oct 2002, Bryan Simmons wrote:
> > I've noticed that my HP CD-Writer 9100+ has trouble reading large files
> > off of a burn under Mandrake 9.0.  This problem doesn't occur in
> > Windows.  I think it may be the read-ahead setting.  Does anyone know
> > anything about this?
[...]

--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
