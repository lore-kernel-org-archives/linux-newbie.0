From: "rob.rice" <rob.rice@fuse.net>
Subject: Re: Id "x" respawning too fast: disabled for 5 minutes
Date: Mon, 23 Feb 2004 01:27:27 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40399D4F.6090306@fuse.net>
References: <HBEJLOFMLEPBMAAEFNFDCEAPCFAA.azapata@du.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDCEAPCFAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux newibe <linux-newbie@vger.kernel.org>



Anna G. Zapata wrote:
> Hello all,
> 
> I just updated the fedora core with all it's new patches and now the machine seems to be hosed.  On reboot, I get the
> following message:
> 
> "Id "x" respawning too fast: disabled for 5 minutes" - Any ideas?  I have had nothing but problems with Fedora.
> 
> I have no clue what is going on here.  I tried to get the machine in run level 3, but I still can't get it to work.
> Here is a copy of the /etc/inittab file:
> 
> # Default runlevel. The runlevels used by RHS are:
> #   0 - halt (Do NOT set initdefault to this)
> #   1 - Single user mode
> #   2 - Multiuser, without NFS (The same as 3, if you do not have networking)
> #   3 - Full multiuser mode
> #   4 - unused
> #   5 - X11
> #   6 - reboot (Do NOT set initdefault to this)
> #
> id:3:initdefault:
> 
> # System initialization.
> si::sysinit:/etc/rc.d/rc.sysinit
> 
> l0:0:wait:/etc/rc.d/rc 0
> l1:1:wait:/etc/rc.d/rc 1
> l2:2:wait:/etc/rc.d/rc 2
> l3:3:wait:/etc/rc.d/rc 3
> l4:4:wait:/etc/rc.d/rc 4
> l5:5:wait:/etc/rc.d/rc 5
> l6:6:wait:/etc/rc.d/rc 6
> 
> # Trap CTRL-ALT-DELETE
> ca::ctrlaltdel:/sbin/shutdown -t3 -r now
> 
> # When our UPS tells us power has failed, assume we have a few minutes
> # of power left.  Schedule a shutdown for 2 minutes from now.
> # This does, of course, assume you have powerd installed and your
> # UPS connected and working correctly.
> pf::powerfail:/sbin/shutdown -f -h +2 "Power Failure; System Shutting Down"
> 
> # If power was restored before the shutdown kicked in, cancel it.
> pr:12345:powerokwait:/sbin/shutdown -c "Power Restored; Shutdown Cancelled"
> 
> 
> # Run gettys in standard runlevels
> 1:2345:respawn:/sbin/mingetty tty1
> 2:2345:respawn:/sbin/mingetty tty2
> 3:2345:respawn:/sbin/mingetty tty3
> 4:2345:respawn:/sbin/mingetty tty4
> 5:2345:respawn:/sbin/mingetty tty5
> 6:2345:respawn:/sbin/mingetty tty6
> 
> # Run xdm in runlevel 5
> x:3:respawn:/etc/X11/prefdm -nodaemon
> 
> Anna Zapata
> UTS - Network Security
> 303.871.2009
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
I had a problem like this and got it fixed by reinstalling the font server
the log files may tell you what X chocked on
so you could try reinstalling the X system

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
