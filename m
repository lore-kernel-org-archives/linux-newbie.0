From: Ray Olszewski <ray@comarre.com>
Subject: RE: GTK
Date: Wed, 21 Apr 2004 10:41:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040421103352.01f38830@celine>
References: <1082500650.25073.25.camel@DebiAnarchist> <HBEJLOFMLEPBMAAEFNFDOEPLCGAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDOEPLCGAA.azapata@du.edu>
References: <1082500650.25073.25.camel@DebiAnarchist>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

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
