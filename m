From: Rei Shinozuka <shino@panix.com>
Subject: strange xcdroast bug solved
Date: Wed, 7 Apr 2004 12:36:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040407163633.GE3523@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Linux Users <linux-newbie@vger.kernel.org>

----- Forwarded message from Rei Shinozuka <shino@panix.com> -----

Subject: strange xcdroast bug solved
From: Rei Shinozuka <shino@panix.com>
Date: Wed, 7 Apr 2004 12:35:28 -0400
To: Thomas Niederreiter <tn@xcdroast.org>

thanks, you da man.  i built my own version of cdrtools and it 
no longer reports errors!!

-rei

On Apr07 10:01, Thomas Niederreiter wrote:
> On Wed, Apr 07, 2004 at 05:29:11AM +0200, Rei Shinozuka wrote:
> 
> Hello Rei,
> 
> > i have been using 98alpha13 for years on my thinkpad, and recently
> > went to a desktop with alpha14 and i also built alpha15.  
> > 
> > Linux tuxedo 2.4.22-1.2115.nptl #1 Wed Oct 29 15:31:21 EST 2003 i686 athlon i386 GNU/Linux
> > 
> > Cdrecord-Clone 2.01a19 (i686-redhat-linux-gnu) Copyright (C) 1995-2003 Jorg Schilling
> > 
> > the problem appears that xcdroast always reports errors when burning CDs,
> > even though the logs do not show any evidence of trouble.
> > 
> 
> The alpha14 had exactly such a problem - due a little typo in my code
> the cdrecord error code was not evaluated correctly and some folks always
> got "Error writing tracks". This is fixed in alpha15, so I dont know
> whats happening.
> 
> I only note that you dont seem to use an official version of the cdrtools:
> 
> cdrecord: Warning: using inofficial libscg transport code version (schily - Red Hat-scsi-linux-sg.c-1.75-RH '@(#)scsi-linux-sg.c	1.75 02/10/21 Copyright 1997 J. Schilling').
> 
> Please compile cdrecord from the original sources and try again. I can just
> guess it reports an illegal value.
> 
> Create full debug output (FAQ) and then its much easier to see..
> 
> Regards,
> 
> Thomas
> 
>   ___ ___
>  /   |   \  ___________   | REAL   : Thomas Niederreiter: Munich, Germany
> /    ~    \/  _ \_  __ \  | EMAIL  : tn@xcdroast.org
> \    Y    (  <_> )  | \/  | WEB    : www.xcdroast.org
>  \___|_  / \____/|__|     | 
>        \/ All I want is a warm bed and a kind word and unlimited power
>                       -- Ashleigh Brilliant
> 
> 

-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey


----- End forwarded message -----

-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
