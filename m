From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 14:50:54 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406121445360.1825@debian-emach>
References: <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine> <5.1.0.14.1.20040612121108.01fc9a80@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040612121108.01fc9a80@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 12 Jun 2004, Ray Olszewski wrote:

> in the kernel) called /proc/sys/kernel/hotplug . You might want to run
> /sbin/hotplug from the command line to see what its output is.

No output.  Doesn't generate any error report or anything.  Just returns
to the root command prompt (ran it as root, of course).  My inclination
would be to just stick with usbmgr, since it does seem to be working.
I'll undoubtedly need to remove hotplug from the system before doing any
dist-upgrades.

> installing  a kernel as (for example) "kernel-image-2.6-386" or as (for
> example) "kernel-image-2.6.5-1-386"? There isn't a "right" or wrong" answer
> to this ... both choices are reasonable ... but they cause upgrades to work
> differntly.

The former.  Looks like I'm in for another kernel upgrade if I do apt-get
dist-upgrade.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
