From: Brian Jung Myeng Lee <bamboo@bamboonet.mine.nu>
Subject: Re: new X = slow gnome
Date: Thu, 11 Apr 2002 14:30:59 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0204111429120.1365-100000@bamboonet.mine.nu>
References: <20020411191935.6741.qmail@web12206.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020411191935.6741.qmail@web12206.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: glen <inavaganza@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Hello.

You might as well try to get the latest kernel.
Also, looks like you have xauth problems. When clients get rejected from
X, it means that the client is not authorized in xauth configuration file.

Hope this helps. :)

On Thu, 11 Apr 2002, glen wrote:

> Recently, I installed XFree86 4.2
>
> It seems to boot into a failsafe/default session
> without a problem, but when I start Gnome or KDE it is
> extremely slow.  I've tried reading the man pages to
> no avail.
>
> here is what startx > /tmp/Xerrors 2>&1 gives me:
>
>
> XFree86 Version 4.2.0 / X Window System
> (protocol Version 11, revision 0, vendor release
> 6600)
> Release Date: 18 January 2002
> If the server is older than 6-12 months, or if your
> card is
> newer than the above date, look for a newer version
> before
> reporting problems.  (See http://www.XFree86.Org/)
> Build Operating System: Linux 2.4.9-13smp i686 [ELF]
> Module Loader present
> Markers: (--) probed, (**) from config file, (==)
> default setting,
>          (++) from command line, (!!) notice, (II)
> informational,
>          (WW) warning, (EE) error, (NI) not
> implemented, (??) unknown.
> (==) Log file: "/var/log/XFree86.0.log", Time: Thu Apr
> 11 13:44:08 2002
> (==) Using config file: "/etc/X11/XF86Config-4"
> SESSION_MANAGER=local/localhost.localdomain:/tmp/.ICE-unix/700
> Xlib:  extension "XINERAMA" missing on display
> ":0.0".
> SetKbdSettings - type: 2 rate: 30 delay: 500 snumlk:
> 0
> SetKbdSettings - Succeeded
> AUDIT: Thu Apr 11 13:45:17 2002: 696 X: client 5
> rejected from local host
> Xlib: connection to ":0.0" refused by server
> Xlib: No protocol specified
>
> xscreensaver: Can't open display: :0
> xscreensaver: initial effective uid/gid was root/root
> (0/0)
> xscreensaver: running as nobody/nobody (99/99)
>
> xscreensaver: Errors at startup are usually
> authorization problems.
>               Did you read the manual and the FAQ?
> Specifically,
>               the parts of the manual that talk about
> XAUTH, XDM,
>               and root logins?
>
>
> http://www.jwz.org/xscreensaver/man.html
>
> rm: cannot remove `/root/.gnome//gmc-BukYmX': No such
> file or directory
> subshell.c: couldn't get terminal settings:
> Inappropriate ioctl for device
>
> waiting for X server to shut down ..Gdk-ERROR **: X
> connection to :0 broken (explicit kill or server
> shutdown).
>
>
>
> __________________________________________________
> Do You Yahoo!?
> Yahoo! Tax Center - online filing with TurboTax
> http://taxes.yahoo.com/
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
