From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 11:32:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040612111803.01fd5808@celine>
References: <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine> <Pine.LNX.4.58.0406121104520.1489@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406121104520.1489@debian-emach>
References: <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>, linux-newbie@vger.kernel.org

At 11:20 AM 6/12/2004 -0500, James Miller wrote:
>This is all a bit beyond me, Ray.  But, taking your advice again, I looked
>in /etc/modules - nothing there referring to usb.  Then, I looked in
>/etc/rc2.d: there, I found S15usbmgr which I changed to NoS15usbmgr.
>Rebooted with the 2.6.5 kernel, issued startx - same system hang requiring
>a telnet session to reboot the machine.  Next, I looked in rcS.d.
>Nothing about usb in there, but I found something relating to another
>package I recently installed - hotplug.

This is probably unrelated to your problem, but the apt-cache listing for 
hotplug claims that it conflicts with (and is a replacement for) usbmgr. If 
you are trying to  use both in init scripts, the results could be ... well, 
unpredictable.

>So, I changed S40hotplug to
>NoS40hotplug.  Rebooted, issued startx and - WALLA! - normal X and gui
>startup!  I'm not quite sure where to go from here, apart from doing some
>more testing to make sure the hotplug thing is the culprit (changing
>NoS15usbmgr back to S15usbmgr).

This is a symlink to a script (in /etc/init.d). The next step (after the 
one you suggest) is to read the script and see what it does ... most 
likely, what kernel module(s) it installs. That should isolate the 
conflicting item (daemon, kernel module, or whatever).

>  I looked at the xfree log in /var/log
>that you mentioned, but could not identify any significant problem areas -
>not that my xfree log interpretation skills are much to speak of.

 From your earlier descriptions, it sounds like X is being stalled 
somewhere in its initialization stage. What is the last thing X reports 
doing in the log?

>Anyway, while I do a bit more experimentation, let me just ask what you
>think of upgrading X on this system to the latest 4.3?  I'd like to update
>it anyway.  Do you think it holds any potential for resolving this
>problem, or it could possibly interfere with any further troubleshooting?

Especially since you are running Sid (Debian unstable), I always favor 
upgrading to current versions when you are having trouble. Transient 
problems in Sid packages are not all that rare -- that's in part WHY it's 
called "unstable" -- so you just about always want to make sure a problem 
is not just the result of a glitch in a package that has been fixed. In 
fact, I'd go so far as to recommend a full upgrade or dist-upgrade, not 
just upgrading to the current version of xserver-xfree86 (and any 
dependencies it automatically upgrades).

Unless you have one of the (extremely rare) cards that XFree86 occasionally 
drops support for, there is no downside to upgrading your X packages that I 
can think of.

>Similarly, a 2.6.6 kernel is now available for Sid.  While I'm not too
>wild about loading a new kernel (I run vmware and so will have to compile
>new modules for it if I upgrade the kernel), I would consider it if it
>held some potential for resolving the current display problem.  Any advice
>on that?

No, none. As I said previously, I'm still using 2.4.something myself. You 
need advice from someone else, someone current with 2.6.x kernels.

>Thanks so much for your input: at least I have a vague idea now
>of the problem's nature.
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
