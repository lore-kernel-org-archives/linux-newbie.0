From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 13:29:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02112313295302.00286@unix.pa3gcu>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <200211221843.gAMIh4W08194@hartford-hwp.com> <200211222145.gAMLjcQ12678@hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211222145.gAMLjcQ12678@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>, brownh@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org

On Friday 22 November 2002 21:45, Haines Brown wrote:
> The plot thickens. I just discovered the script command that allows me
> to view the output when I run startx as root (which loads
> succesfully). The result is instructive.
>
> When I inserted a new nVidia graphics card (and even after after
> replacing it with the old card of the same type), users could no
> longer start X because the configuration looked for decprecated
> libraries (pex5 and xie).  Root had no such trouble.

The NVidia driver i use does not has pex5 or xie, just what driver did you 
try.??

>
> When root started X, even though X started, I saw an error message:
>
> 	If the server is older than 6-12 months, or if your card is
> 	newer than the above date, look for a newer version before
> 	reporting problems.  (See http://www.XFree86.Org/)
>
> Since the card I originally used was some ten months old, I took this
> to say I had to install a new XF86 driver. That I did, but it did not
> solve my problem (I'm now back to the new card because it seems to
> make no difference which I use).

No it means go and see if there are any "oddity's" one should know about.

>
> However, I now used script to see what happens when root starts X, and
> it's a horror show! How X somehow managed to start for root I have no
> idea. I'll append the log.
>
> Now, I have a note to myself that the new XF86 driver should start
> using a configuration file named XF86Config rather than the
> XF86Config-4 that I had been using before. However, as the log shows,
> I'm still using the old configuration file.
>
> What's signfiicant is that the old (XFConfig-4) configuration file
> does try to load the deprecated libraries pex5 and xie, while the
> newly created configuration file (XF86Config) does not attemtp to do
> so.

man XF86Config states
"
XFree86  uses  a configuration file called XF86Config for its initial setup.  
This configuration file is searched for in the following places when the 
server is started as a normal user:
 
           /etc/X11/<cmdline>
           /usr/X11R6/etc/X11/<cmdline>
           /etc/X11/$XF86CONFIG
           /usr/X11R6/etc/X11/$XF86CONFIG
           /etc/X11/XF86Config-4
           /etc/X11/XF86Config
           /etc/XF86Config
           /usr/X11R6/etc/X11/XF86Config.<hostname>
           /usr/X11R6/etc/X11/XF86Config-4
           /usr/X11R6/etc/X11/XF86Config
           /usr/X11R6/lib/X11/XF86Config.<hostname>
           /usr/X11R6/lib/X11/XF86Config-4
           /usr/X11R6/lib/X11/XF86Config
"

So you see that XF86Config-4 will get "ignored" IF a file called XF86Config 
is found.

>
> So my problem may be that startx is looking to the wrong configuration
> file. The startx script is dated September, which means it was
> installed by my  update of XF86. This startx script calls XF86, which
> is executable by everyone, but I'm not inclined to snoop into this big
> baby.

As per above..

>
> So my question is, how do I get XF86 to use XFConfig rather than
> XFConfig-4? Is there a utility to set this value?

Looks like you have "named" your files incorrectly, you keep making 
referancies to, "XFConfig" and "XFConfig-4" they are;
XF86Config
XF86Config-4

>
> Haines Brown

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
