From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: disabling graphical login
Date: Sun, 3 Aug 2003 10:58:51 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030803095458.KNFJ14590.mta03-svc.ntlworld.com@there>
References: <5.1.0.14.1.20030802194747.020136d0@celine>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030802194747.020136d0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Sunday 03 August 2003 3:59 am, Ray Olszewski wrote:
> At 09:34 PM 8/2/2003 -0400, Anshuman Singh Rawat wrote:
> >Ray,
> >Thanks for the help so far.
> >I am using RHL7.3 . I dont know if I am using xdm or gdm.
> >The other info I can provide is that I use lilo for boot and KDE for X.
>
> [old stuff deleted]
>
> This added information is unhelpful (though the Red Hat part may get you a
> more helpful response from a RH user). You have to check the things I
> mentioned, not tell me that you don't already know which it is.
>
> 
Hi,
For what it is worth, I am writing this on a RedHat7.2 box  and I use lilo, 
KDE and I have just discovered that there is a shell script , etc/X11/prefdm 
which chooses between xdm or gdm.
 To change the default runlevel on a RedHat system, you do as Ray said, 
edit the /etc//inittab file.
The /etc//inittab file on my system looks like this:
===========================================================
#
# inittab       This file describes how the INIT process should set up
#               the system in a certain run-level.
#
# Author:       Miquel van Smoorenburg, <miquels@drinkel.nl.mugnet.org>
#               Modified for RHS Linux by Marc Ewing and Donnie Barnes
#

# Default runlevel. The runlevels used by RHS are:
#   0 - halt (Do NOT set initdefault to this)
#   1 - Single user mode
#   2 - Multiuser, without NFS (The same as 3, if you do not have networking)
#   3 - Full multiuser mode
#   4 - unused
#   5 - X11
#   6 - reboot (Do NOT set initdefault to this)
#
id:5:initdefault:

# System initialization.
si::sysinit:/etc/rc.d/rc.sysinit
...
[ stuff skipped ]
...

# Run xdm in runlevel 5
# xdm is now a separate service
x:5:respawn:/etc/X11/prefdm -nodaemon
============================================================
The line:
id:5:initdefault:
should be changed to read:
id:3:initdefault:

Edit /etc/inittab - you must be root, reboot your system and no more X. with 
its graphical logins, on system startup.

regards,

John Kelly

PS I have just re-read your original post. 
Surely, if there is a problem with X, you only need to disable X temporarily 
while you fix  the X problem? There are several ways to temporarily disable X 
and the two I can think of immediately are: 
1) Before the system boots, hit ESC or TAB at the boot: prompt and then tell 
the system which runlevel you want.
On my machine, I get a graphical boot prompt where I can choose which OS I 
want to run. If I hit ESC, I get a text based boot prompt. I can type in 
linux 3 so the prompt looks like
boot: linux 3
This tells lilo to boot ot runlevel 3 ie boot with no X.
2) Allow the system to boot normally. Go to a consol ie press CTRL-ATL-F1 
keys log in as root  then kill X. I would normally set a new runlevel by 
typing :
/sbin/telinit 3
This causes the system to go to run level 3 - with no X


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
