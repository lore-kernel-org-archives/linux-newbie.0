From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 12:27:15 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040612121108.01fc9a80@celine>
References: <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine> <Pine.LNX.4.58.0406121354120.1825@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406121354120.1825@debian-emach>
References: <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:04 PM 6/12/2004 -0500, James Miller wrote:
>On Sat, 12 Jun 2004, Ray Olszewski wrote:
>
> > This is a symlink to a script (in /etc/init.d). The next step (after the
> > one you suggest) is to read the script and see what it does ... most
> > likely, what kernel module(s) it installs. That should isolate the
> > conflicting item (daemon, kernel module, or whatever).
>
>I've appended the script to the end of this email: I don't understand very
>well what it does, but I don't see any module loading going on there.
>Could I ask you to take a look and see if you see anything troublesome?

I don't use hotplug here. You would do better to get advice on this part 
from someone who does use it. I can help you read the script, though.

The immediately relevant portions of the script are the ones that run if 
the script is run as with the "start" choice. It then does three things:

         First (at the top of the script), makes sure that the kernel 
supports hotplug, by checking for the presence of the relevant pseudofile 
(in /proc).

         Second (in the "start" section), writes the output of the 
executable /sbin/hotplug to a /proc pseudofile (this is actually a location 
in the kernel) called /proc/sys/kernel/hotplug . You might want to run 
/sbin/hotplug from the command line to see what its output is.

         Third, executes the function run_rcs (above in the script).

This function in turn runs whatever scripts  (*.rc) are in the directory 
/etc/hotplug ... this is presumably system specific.


> >  From your earlier descriptions, it sounds like X is being stalled
> > somewhere in its initialization stage. What is the last thing X reports
> > doing in the log?
>
>It seems to overwrite the previous log on every boot, doesn't it?  If so,
>I've lost the error messages from previous boots (it hasn't hung the last
>7 or 8 times I've rebooted, since I've commented out those things).
>Should I make it hang so as to get the output?

If it were me, I wouldn't bother. You can always return to this if you do 
not identify the problem in some other way ... and I think you are right to 
focus your attention on hotplug right now.

> > is not just the result of a glitch in a package that has been fixed. In
> > fact, I'd go so far as to recommend a full upgrade or dist-upgrade, not
> > just upgrading to the current version of xserver-xfree86 (and any
> > dependencies it automatically upgrades).
>
>I'll take that under consideration.  One question regarding this: since
>I've been apt-get install(ing) kernels, does this mean when I do a
>dist-upgrade I get a new kernel as well?

Depends. Since you use stock kernels, it should do so. But ... are you 
installing  a kernel as (for example) "kernel-image-2.6-386" or as (for 
example) "kernel-image-2.6.5-1-386"? There isn't a "right" or wrong" answer 
to this ... both choices are reasonable ... but they cause upgrades to work 
differntly.

The first of these is a pseudo-package that always (by convention) points 
to the most recent real kernel-image package ... so if, for example, 
packaging moves from 2.6.5 to 2.6.6, this package will automatically do an 
upgrade. The second is an actual package with a specific kernel version, 
and if you use it, an upgrade will only install a new kernel if that 
specific package has been modified.

SInce I always use bespoke kernels I compile from source, I don't have any 
actual experience with the system I've just described, so please be 
forewarned that I might have the details wrong.

>Thanks, James
[script deteils deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
