From: Ray Olszewski <ray@comarre.com>
Subject: Re: ppp ain't talking
Date: Fri, 13 Jun 2003 23:23:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030613230654.0390ced0@celine>
References: <200306140104.h5E144wo017689@pegasus.wanadoo.be>
 <200306140104.h5E144wo017689@pegasus.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306140217.h5E2HJga013168@dbmail-mx2.orcon.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:30 AM 6/15/2003 +1200, cr wrote:
>On Thursday 01 January 1970 12:00, Heimo Claasen wrote:
> > Kppp is a really good utility - but it just wouldn't work without the
> > full installation of KDE, including most QT libraries ... and this is a
> > no-no for the Debian 3.0 "distro".
> >
> > So there you (we) are.
> >
> > // Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-06-13
>
>That's interesting.

Perhaps. I'm not sure what Heimo means by "a no-no". Last I read, the KDE 
license was revised to be DFSG compliant (quite some time ago, I believe) 
and there was no longer any reason not to include its components in a 
Debian distro.

>I'm a newcomer to Debian, but I notice that the official Woody release  3.0
>lists on Disk 3:    kppp_2.2.2-14_i386.deb
>I only have disks 1 and 2, so I downloaded it via ftp  (using RedHat - that
>RedHat hard drive's been in and out of my computer like a boot floppy!).
>I thought it a bit odd that  KPPP was on disk 3 when *all* the other apps I
>commonly use are on Disks 1 and 2.     However, I would have thought that if
>Debian include it in their official release, it should work?

I don't use ppp myself any longer, but I do use several apps that require 
one or another of the QT libraries. Debian-Sid (Unstable) seems to have no 
problem providing them, and my system ... which uses blackbox as its WM and 
doesn't run any desktop encironment ... has no trouble running them.

  "apt-cache search libqt" turns up this list of available packages:

autovcr@kuryakin:~$ apt-cache search libqt
libguile-dev - Development headers and static library for libguile.
libqt-dev - Qt GUI development files
libqt-mt-dev - Qt GUI development files (Threaded version)
libqt-perl - Perl bindings for the Qt library
libqt2 - Qt GUI Library (runtime version)
libqt2-mt - Qt GUI Library (runtime threaded version)
libqt3-compat-headers - Qt 1.x and 2.x compatibility includes
libqt3-dev - Qt development files
libqt3-headers - Qt3 header files
libqt3-i18n - i18n files for Qt3 library
libqt3-mt-dev - Qt development files (Threaded)
libqt3-plugins-headers - Qt3 plugin header files
libqt3c102 - Qt Library
libqt3c102-mt - Qt GUI Library (Threaded runtime version)
libqt3c102-mt-mysql - MySQL database driver for Qt3 (Threaded)
libqt3c102-mt-odbc - ODBC database driver for Qt3 (Threaded)
libqt3c102-mt-psql - PostgreSQL database driver for Qt3 (Threaded)
libqt3c102-mysql - MySQL database driver for Qt3
libqt3c102-odbc - ODBC database driver for Qt3
libqt3c102-psql - PostgreSQL database driver for Qt3
libqte-mt3 - Qt/Embedded GUI Library (runtime threaded version)
libqte-mt3-dev - Qt/Embedded GUI (Threaded Version) development files
libqte2 - Qt/Embedded GUI Library (runtime version)
libqte2-dev - Qt/Embedded GUI development headers
libqthreads-12 - QuickThreads library for Guile
qt3-assistant - The Qt3 assistant application

I also ran "apt-cache search kde" and got way too many matches to include 
the list of them here.

The content of Debian CDs is not apways as predictable as the contents of 
the online archives accessed via the apt-* tools, since they can be 
customized by vendors.

>Next question - what do Debian users use instead of KPPP for a graphical
>front end/dialler?   I've used Red Hat's RHPPP in the past, but that doesn't
>seem to be included on any Woody disks.   Since Debian seems to have a strong
>bias towards logging users straight into X, I'd find it odd if they're
>expected to open a terminal window and invoke pppd from the command line.

It's been some time since I used ppp, but back when I did (on Debian Potato 
[2.2], if memory serves), I set it up to dial on demand, requiring no 
human-operated dialer. The setup involved editing some config files, which 
I did with vi, on either a console of an xterm.

A search of the online package archive for Debian-Sid turns up these 
candidates (not all make sense for your need, though):

autovcr@kuryakin:~$ apt-cache search pppd
gpppkill - GTK+ pppd monitoring and control utility
ipmasq - Securely initializes IP Masquerade forwarding/firewalling
ipppd - PPP daemon for syncPPP over ISDN
isdnutils - Most important ISDN-related packages and utilities
isdnutils-base - ISDN utilities, the basic (minimal) set
kernel-patch-mppe - MPPE Encryption for PPP
kppp - KDE dialer and frontend to pppd
linesrv - A server to remotely control the internet connection
linesrv-mysql - A server to remotely control the internet connection
portslave - Terminal server that does PPP and authenticates via RADIUS
ppp - Point-to-Point Protocol (PPP) daemon.
pppdcapiplugin - plugin for pppd to communicate with CAPI-capable ISDN cards
quickppp - PPP configuration tool



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
