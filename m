From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Fri, 22 Nov 2002 16:45:38 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211222145.gAMLjcQ12678@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <5.1.0.14.1.20021121103403.02116350@celine> <200211212046.gALKkTj04709@hartford-hwp.com> <02112121392100.00286@unix.pa3gcu> <200211221843.gAMIh4W08194@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200211221843.gAMIh4W08194@hartford-hwp.com> (message from Haines
	Brown on Fri, 22 Nov 2002 13:43:04 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

The plot thickens. I just discovered the script command that allows me
to view the output when I run startx as root (which loads
succesfully). The result is instructive.

When I inserted a new nVidia graphics card (and even after after
replacing it with the old card of the same type), users could no
longer start X because the configuration looked for decprecated
libraries (pex5 and xie).  Root had no such trouble.

When root started X, even though X started, I saw an error message:

	If the server is older than 6-12 months, or if your card is
	newer than the above date, look for a newer version before
	reporting problems.  (See http://www.XFree86.Org/)

Since the card I originally used was some ten months old, I took this
to say I had to install a new XF86 driver. That I did, but it did not
solve my problem (I'm now back to the new card because it seems to
make no difference which I use).

However, I now used script to see what happens when root starts X, and
it's a horror show! How X somehow managed to start for root I have no
idea. I'll append the log.

Now, I have a note to myself that the new XF86 driver should start
using a configuration file named XF86Config rather than the
XF86Config-4 that I had been using before. However, as the log shows,
I'm still using the old configuration file.

What's signfiicant is that the old (XFConfig-4) configuration file
does try to load the deprecated libraries pex5 and xie, while the
newly created configuration file (XF86Config) does not attemtp to do
so. 

So my problem may be that startx is looking to the wrong configuration
file. The startx script is dated September, which means it was
installed by my  update of XF86. This startx script calls XF86, which
is executable by everyone, but I'm not inclined to snoop into this big
baby.

So my question is, how do I get XF86 to use XFConfig rather than
XFConfig-4? Is there a utility to set this value?

Haines Brown


=========================================================================

Script started on Fri Nov 22 16:03:26 2002
[root@hartford-hwp root]# startx
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
(==) Log file: "/var/log/XFree86.0.log", Time: Fri Nov 22 16:03:32 2002
(==) Using config file: "/etc/X11/XF86Config-4"
dlopen: /usr/X11R6/lib/modules/pex5.so: undefined symbol: PexExtensionInitPtr
(EE) Failed to load /usr/X11R6/lib/modules/pex5.so
(EE) Failed to load module "pex5" (loader failed, -1073743256)
dlopen: /usr/X11R6/lib/modules/pex5.so: undefined symbol: PexExtensionInitPtr
(EE) Failed to load /usr/X11R6/lib/modules/pex5.so
(EE) Failed to load module "pex5" (loader failed, -1073743256)
dlopen: /usr/X11R6/lib/modules/xie.so: undefined symbol: XieInitPtr
(EE) Failed to load /usr/X11R6/lib/modules/xie.so
(EE) Failed to load module "xie" (loader failed, -1073743256)
SESSION_MANAGER=local/hartford-hwp.com:/tmp/.ICE-unix/10003
SetKbdSettings - type: 2 rate: 30 delay: 500 snumlk: 0
SetKbdSettings - Succeeded
AUDIT: Fri Nov 22 16:03:39 2002: 10000 X: client 4 rejected from local host
Xlib: connection to ":0.0" refused by server

Xlib: No protocol specified


xscreensaver: Can't open display: :0
xscreensaver: initial effective uid/gid was root/root (0/0)
xscreensaver: running as nobody/nobody (99/99)

xscreensaver: This is probably because you're logging in as root.  You
              shouldn't log in as root: you should log in as a normal user,
              and then `su' as needed.  If you insist on logging in as
              root, you will have to turn off X's security features before
              xscreensaver will work.

              Please read the manual and FAQ for more information:

              http://www.jwz.org/xscreensaver/faq.html
              http://www.jwz.org/xscreensaver/man.html


Gtk-WARNING **: invalid cast from (NULL) pointer to `GtkOptionMenu'

Gtk-CRITICAL **: file gtkoptionmenu.c: line 248 (gtk_option_menu_set_history): assertion `option_menu != NULL' failed.
aumix:  error opening mixer

Gtk-WARNING **: gtk_signal_disconnect_by_data(): could not find handler containing data (0x819F330)


waiting for X server to shut down 


[root@hartford-hwp root]# 
[root@hartford-hwp root]# 
[root@hartford-hwp root]# 
Script done on Fri Nov 22 16:03:57 2002


 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
