From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: I killed user's x server
Date: Sun, 24 Nov 2002 08:51:56 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02112408515605.00286@unix.pa3gcu>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <02112315525904.00286@unix.pa3gcu> <200211231624.gANGOvS21368@hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211231624.gANGOvS21368@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

On Saturday 23 November 2002 16:24, Haines Brown wrote:
> Richard,
>
> Thanks for the suggestions.
>
> > And to the point the biggest mistake people make when installing the
> > NVIDIA drivers (which if i may say so are very good) is NOT editing
> > /etc/X11/XF86Config(-4) it s simple one line edit, details are to be
> > found in the README's of the archives.
> > Or to the point;
> >
> > /etc/X11/XF86Config
> >
> >     Load       "glx"
> >
> > In the modules scetion.
>
> Well, installing the nVidia driver might make sense, but if I can't
> get the plain nv driver to enable user to startx, I suspect improving
> the driver will do nothing for me.
>
> I now have five different versions of XF86Config-4. I found one that
> did not try to load the deprecated libraries and also only called the
> nv driver. I tried it, but for some reason, it didn't work. Here is
> the log, which as far as I can make does not say user had failed to
> start X.  But in fact, the X server failed to start.

I hope you rename the cpoies to something other than XF86Config-!

> XFree86 Version 4.2.1 / X Window System
> (protocol Version 11, revision 0, vendor release 6600)
> Release Date: 3 September 2002
> 	If the server is older than 6-12 months, or if your card is
> 	newer than the above date, look for a newer version before
> 	reporting problems.  (See http://www.XFree86.Org/)
> Build Operating System: Linux 2.4.7-10custom i686 [ELF]
> Module Loader present
> Markers: (--) probed, (**) from config file, (==) default setting,
>          (++) from command line, (!!) notice, (II) informational,
>          (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
> (==) Log file: "/var/log/XFree86.0.log", Time: Sat Nov 23 10:52:05 2002
> (==) Using config file: "/etc/X11/XF86Config-4"

All that says to me is that the config file used has a bad error in the 
"first line" as it configured nothing period.

> waiting for X server to shut down

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
