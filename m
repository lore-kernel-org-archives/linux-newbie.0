From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: A way to transfer drives?
Date: 04 Nov 2002 09:40:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036402845.23486.17.camel@zebra.vil.ite.mee.com>
References: <20021103.170822.134684296.1.lawson_whitney@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021103.170822.134684296.1.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

There is only one snag with tartar: it doesn't pick up 'dot' files in
the starting directory. 

On Sun, 2002-11-03 at 00:57, lawson_whitney@juno.com wrote:
> On Sat, 2 Nov 2002, Michael Scondo wrote:
> 
> > > #!/bin/bash
> > > ##copy a directory or partition
> > > tar -C "$1" -cOl . | tar -C "$2" -xpf -
> > >
> >
> > That's an idea, but I believe parted should be much faster.
> > I think compressing and decompressing would be a little bit slow ?
> >
> It's not compressing and decompressing.  Tar only does that if you tell
> it (with an option I,y,z,Z or the corresponding long names or
> --use-compress-program).  Saving and restoring this way will also
> defragment the filesystem.
> 
> > Regarding,
> > Michael
> > -
> --
> ---oops---
> 
> 
> 
> ________________________________________________________________
> Sign Up for Juno Platinum Internet Access Today
> Only $9.95 per month!
> Visit www.juno.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
