From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Script as root
Date: Tue, 1 Oct 2002 21:10:02 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0210012110020B.00233@unix.pa3gcu>
References: <5.1.0.14.1.20021001085016.02c818f0@celine> <3D99C948.9020704@arrl.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D99C948.9020704@arrl.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Reimer <wa5rrh@arrl.net>, Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Tuesday 01 October 2002 16:11, Jim Reimer wrote:
> suid bit on a script is ignored, isn't it?

AFAIK yes, and the saying is, never run a script as root, root is evil, one 
small oversight and damage can be done period.

I once was accused of destorying someones system because i said, "if" you 
want to get all the information from the script then you will need to run it 
as root, if it is run under a user it will not gain some vital information 
from your /etc dir, a few days later a mail appierd on that particular 
mailing list saying i had destroyed his system with my script.
Many still use that script actually but thats asside the point, root is evil.

> -jdr-
>
> Ray Olszewski wrote:
> > Yes. You want to set the suid bit on it and have it owned by root. "man
> > chmod" (or maybe other chmod documentation) for the details.
> >
> > At 09:55 AM 10/1/02 -0400, Paul Kraus wrote:
> >> I have a backup script that mounts a drive on my xp workstations. Is
> >> there a way I can set this script to run as root so that I do not have
> >> to su every time I want to run it?
> >
> > --
> > -------------------------------------------"Never tell me the
> > odds!"--------
> > Ray Olszewski                    -- Han Solo
> > Palo Alto, California, USA              ray@comarre.com
> > -------------------------------------------------------------------------
> >------

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
