From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 15:52:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02112315525904.00286@unix.pa3gcu>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <02112313295302.00286@unix.pa3gcu> <200211231517.gANFHAv17709@hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211231517.gANFHAv17709@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>, pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

On Saturday 23 November 2002 15:17, Haines Brown wrote:
> > > When I inserted a new nVidia graphics card (and even after after
> > > replacing it with the old card of the same type), users could no
> > > longer start X because the configuration looked for decprecated
> > > libraries (pex5 and xie).  Root had no such trouble.
> >
> > The NVidia driver i use does not has pex5 or xie, just what driver did
> > you try.??
>
> The problem was that apparently I was using the wrong driver, and that
> killed X server, and so I backed out. I'm currently using the nv
> driver that comes with my RH distribution.

Why not use the script provided on nvidia web site called NVchooser.sh that 
script tells you whihc 2 files you need, one called NVIDIA-kernel and one 
called NVIDIA-glx, even tho' you are using Rehat there is no reason why you 
cant use the provided NVIDIA-xx.tar.gz files.

And to the point the biggest mistake people make when installing the NVIDIA 
drivers (which if i may say so are very good) is NOT editing 
/etc/X11/XF86Config(-4) it s simple one line edit, details are to be found in 
the README's of the archives.
Or to the point;

/etc/X11/XF86Config

    Load       "glx"

In the modules scetion.

>
> I'm going to try simply to edit the XF86Config-4 to remove the
> statement that load the deprecated libraries and see what happens.

May i suggest you remove notjing, simply comment out lines you dont want.
Make sure there is no file called XF86Config in /etc/X11 otherwise the 
changes you make to XF86Config-4 will have absolutly no effect.

>
> Haines

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
