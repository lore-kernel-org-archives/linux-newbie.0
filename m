From: Haines Brown <brownh@hartford-hwp.com>
Subject: I killed user's x server
Date: Wed, 20 Nov 2002 17:36:18 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211202236.gAKMaIK05653@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

User can no longer startX. This occurred after two hardware changes,
but I restored the old hardware setup and also copied the /etc/R11 and
/usr/X11R6 directories over from a backup. But the problem remains.

The hardware change was a replaced of my PNY GeFore3 card with a
newer, and addtion of a SCSI scanner and removal of a SCSI cdrom
drive. When I got into trouble, I undid these changes.

When user tries to startX:

XFree86 Version 4.2.0 (Red Hat Linux release: 4.2.0-8) / X Window
System (protocol Version 11, revision 0, vendor release 6600) Release
Date: 23 January 2002 If the server is older than 6-12 months, or if
your card is newer than the above date, look for a newer version
before reporting problems.  (See http://www.XFree86.Org/) Build
Operator, system: Linux 2.4.17--0.Bsmp i686 [ELF] Build Host:
daffy.perf.redhat.com

I was running fine with old (ca Jan 2002) hardware and drivers. I
don't know whether this recommendation is always there, or if it means
I really do need a newer version of XFree86 (I'm running 4.2.0 under
RH 7.3). In any case, I did update XFree86 to 4.2.0, but no change.

Sometimes, but not always, now when I try to log in as user I'm told
Gtk warning can't open Display: :0. In the above quotes from the
XFree86 log, I don't see why my system is identified as Linux 2.4.17,
when in fact the kernel is 2.4.18-3.

According to the log, X tries, but fails to load two modules (one has
a duplicate load statement for some reason):

...  (II) LoadModule: "pex5" (II) Loading
/usr/X11R6/lib/modules/pex5.so dlopen: /usr/X11R6/lib/modules/pex5.so:
undefined symbol: PexExtensionInitPtr (EE) Failed to load
/usr/X11R6/lib/modules/pex5.so (II) UnloadModule: "pex5" (EE) Failed
to load module "pex5" (loader failed, -1073743256) ...  (II) Loading
/usr/X11R6/lib/modules/xie.so dlopen: /usr/X11R6/lib/modules/xie.so:
undefined symbol: XieInitPtr (EE) Failed to load
/usr/X11R6/lib/modules/xie.so (II) UnloadModule: "xie" (EE) Failed to
load module "xie" (loader failed, -1073743256) ...

I'm using the generic nv driver. I didn't fiddle with XF86Config at
all. The undefined symbol here I take to mean I've not got the right
version of drivers, but I changed none of those things.

Now, the last line says;

AUDIT: Wed Nov 20 14:13:12 2002: 1393 X: client 6 rejected from local
host

While logged in as ueer, I tried to run:

insmod /usr/X11R6/lib/modules/pex5.so ELF file . . . pex5.so not a
relocatable object.

What what does it mean that a driver is not relocatable?  This problem
does not sound like an authentication problem.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
