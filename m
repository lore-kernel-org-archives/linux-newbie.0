From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 11:24:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211231624.gANGOvS21368@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <02112313295302.00286@unix.pa3gcu> <200211231517.gANFHAv17709@hartford-hwp.com> <02112315525904.00286@unix.pa3gcu>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <02112315525904.00286@unix.pa3gcu> (message from pa3gcu on Sat,
	23 Nov 2002 15:52:59 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Cc: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

Richard,

Thanks for the suggestions.

> > The problem was that apparently I was using the wrong driver, and that
> > killed X server, and so I backed out. I'm currently using the nv
> > driver that comes with my RH distribution.
> 
> Why not use the script provided on nvidia web site called NVchooser.sh that 
> script tells you whihc 2 files you need, one called NVIDIA-kernel and one 
> called NVIDIA-glx, even tho' you are using Rehat there is no reason why you 
> cant use the provided NVIDIA-xx.tar.gz files.
> 
> And to the point the biggest mistake people make when installing the NVIDIA 
> drivers (which if i may say so are very good) is NOT editing 
> /etc/X11/XF86Config(-4) it s simple one line edit, details are to be found in 
> the README's of the archives.
> Or to the point;
> 
> /etc/X11/XF86Config
> 
>     Load       "glx"
> 
> In the modules scetion.

Well, installing the nVidia driver might make sense, but if I can't
get the plain nv driver to enable user to startx, I suspect improving
the driver will do nothing for me.

I now have five different versions of XF86Config-4. I found one that
did not try to load the deprecated libraries and also only called the
nv driver. I tried it, but for some reason, it didn't work. Here is
the log, which as far as I can make does not say user had failed to
start X.  But in fact, the X server failed to start.

Script started on Sat Nov 23 10:52:01 2002
[brownh@hartford-hwp brownh]$ startx
net-tools 1.60
hostname 1.100 (2001-04-14)


XFree86 Version 4.2.1 / X Window System
(protocol Version 11, revision 0, vendor release 6600)
Release Date: 3 September 2002
	If the server is older than 6-12 months, or if your card is
	newer than the above date, look for a newer version before
	reporting problems.  (See http://www.XFree86.Org/)
Build Operating System: Linux 2.4.7-10custom i686 [ELF] 
Module Loader present
Markers: (--) probed, (**) from config file, (==) default setting,
         (++) from command line, (!!) notice, (II) informational,
         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/XFree86.0.log", Time: Sat Nov 23 10:52:05 2002
(==) Using config file: "/etc/X11/XF86Config-4"


waiting for X server to shut down 


[brownh@hartford-hwp brownh]$ 
Script done on Sat Nov 23 10:52:15 2002
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
