From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 10:17:10 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211231517.gANFHAv17709@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <200211221843.gAMIh4W08194@hartford-hwp.com> <200211222145.gAMLjcQ12678@hartford-hwp.com> <02112313295302.00286@unix.pa3gcu>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <02112313295302.00286@unix.pa3gcu> (message from pa3gcu on Sat,
	23 Nov 2002 13:29:53 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

> > When I inserted a new nVidia graphics card (and even after after
> > replacing it with the old card of the same type), users could no
> > longer start X because the configuration looked for decprecated
> > libraries (pex5 and xie).  Root had no such trouble.
> 
> The NVidia driver i use does not has pex5 or xie, just what driver did you 
> try.??

The problem was that apparently I was using the wrong driver, and that
killed X server, and so I backed out. I'm currently using the nv
driver that comes with my RH distribution. 

> man XF86Config states
> "
> XFree86  uses  a configuration file called XF86Config for its initial setup.  
> This configuration file is searched for in the following places when the 
> server is started as a normal user:
>  
>            /etc/X11/<cmdline>
>            /usr/X11R6/etc/X11/<cmdline>
>            /etc/X11/$XF86CONFIG
>            /usr/X11R6/etc/X11/$XF86CONFIG
>            /etc/X11/XF86Config-4
>            /etc/X11/XF86Config
>            /etc/XF86Config
>            /usr/X11R6/etc/X11/XF86Config.<hostname>
>            /usr/X11R6/etc/X11/XF86Config-4
>            /usr/X11R6/etc/X11/XF86Config
>            /usr/X11R6/lib/X11/XF86Config.<hostname>
>            /usr/X11R6/lib/X11/XF86Config-4
>            /usr/X11R6/lib/X11/XF86Config
> "
> 
> So you see that XF86Config-4 will get "ignored" IF a file called XF86Config 
> is found.

Yes, I see that now that you point it out. This is why I'm using
XF86Config-4. So it seems the problem is not that I'm using the wrong
configuration file, but that it tries to load depcrecated libraries.

> > So my question is, how do I get XF86 to use XFConfig rather than
> > XFConfig-4? Is there a utility to set this value?
> 
> Looks like you have "named" your files incorrectly, you keep making 
> referancies to, "XFConfig" and "XFConfig-4" they are;
> XF86Config
> XF86Config-4

Sorry. Typos. My head begins to swim. Also, because I'm running emacs
to write, and doing so from a user xterm with root logged in, I don't
have some of my configurations, and as a result, the type is
microsopic. I can barely see it.

I'm going to try simply to edit the XF86Config-4 to remove the
statement that load the deprecated libraries and see what happens.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
