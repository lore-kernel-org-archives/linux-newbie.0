From: "Anna G. Zapata" <azapata@du.edu>
Subject: RE: GTK
Date: Wed, 21 Apr 2004 11:57:31 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <HBEJLOFMLEPBMAAEFNFDAEPNCGAA.azapata@du.edu>
References: <5.1.0.14.1.20040421103352.01f38830@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20040421103352.01f38830@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi Ray,

Thanks for you help.  Ok, this is making more sense now.  However, I did try a pre-compiled package of nessus and this
is where the problem is coming in.  When I first started with nessus, I complied everything from scratch and really had
no problems.  I don't see why the pre-complied stuff is causing such havoc.  I tried asking the nessus folks for help,
but they were nasty to me, so I came here.  I did find the gtk-devel stuff and will give that a shot.  Anything else I
should be thinking of?

Thanks again,

Anna

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Wednesday, April 21, 2004 11:42 AM
To: linux-newbie@vger.kernel.org
Subject: RE: GTK


At 11:21 AM 4/21/2004 -0600, Anna G. Zapata wrote:
>Hello Peter,
>
>Thanks for you help.  I did install GNOME, I know that for sure.  My
>problems with GTK is that I'm trying to install
>Nessus.  Keep in mind that I never had a problem running the GUI for
>nessus, but now that I've moved to RH Enterprise
>for the workstation, it can't find GTK (this is a fresh install).  This is
>the error I get:
>
># sh nessus-installer.sh
>The command 'gtk-config' was not found in your $PATH.
>The nessus client will be built without its GUI...
>
>I am not sure what I'm doing wrong.  GTK looks far to complicated for me
>to even begin to understand.  I tried to
>install GTK from their main website, but the make file doesn't exist and
>it won't install.  I'm very confused.

Anna --

In the Debian packaging system, gtk-config (actually, /usr/bin/gtk-config)
is not part of the main GTK package. It is part of the corresponding -dev
package, the one that mainly provides header files (a bunch of stuff that
goes in /usr/include) for compiling apps. Even if you installed the GTK
libraries themselves (as you must have, if you are running Gnome), you may
not have installed theve -dev files.

Your options are:

1. Install the appropriate -dev package. The relevant Debian package is
named libgtk1.2-dev . Look for something similar in your RH package list.

2. Install a pre-compiled version of nessus instead of compiling it
yourself. Debian has both nessus (the client) and nessusd (the server), so
RH probably has something similar.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
