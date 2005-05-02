From: Ray Olszewski <ray@comarre.com>
Subject: Re: boot problem
Date: Mon, 02 May 2005 08:16:11 -0700
Message-ID: <4276443B.6020003@comarre.com>
References: <427617F5.1030307@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <427617F5.1030307@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbies <linux-newbie@vger.kernel.org>

Andrew wrote:
> I have just used the Slackware 'swaret' tool to upgrade from Slackware 
> 10.0 to 10.1. The result is my system no longer boots properly. Most 
> attempts to reboot get as far as 'Freeing unused kernel memory: 120k 
> freed', followed by a 'sh-3.00#' prompt, though on one attempt I got 
> something like 'kernel panic. attempted to kill init' (I haven't been 
> able to reproduce this). Where do I begin to sort this mess out?

It's difficult to say what your problem is from this sketchy a 
description, but the likely place to start tracking it down is by 
looking at your logs. The 'sh-3.00#' prompt at least means the system is 
throwing you into a shell as root ... probably in single-user mode ... 
so you should be able to read the logs.

But first take a look at whether /etc/inittab was changed by the 
upgrade. Dropping into single-user mode usually means a problem with 
init, not the kernel itself ... especially if the kernel makes it to the 
"freeing memory" step ... and this is the file the controls the 
operation of the init program.

Then see what init scripts were modified by the upgrade. (I forget where 
Slackware puts them, but look for a line in /etc/inittab similar to 
this: "si::sysinit:/etc/init.d/rcS". Unless it has changed recently, 
Slackware uses an old style of init-script organization that can easily 
get errors incorporated into it through an automated upgrade, and that 
*may* be all you are seeing. Make sure that whatever top-level init 
scripts inittab points to ... in the line like the one above and in a 
series of (probably) six that resemble "l2:2:wait:/etc/init.d/rc 2" ... 
are present on the system and executable.

Next thing is to look at your logs ... and at the output of "dmesg", if 
Slackware down't dump that to a logfile during boot/init (some distros 
do, but I don't know about Slack). It is likely, though not certain, 
that either the kernel itself, or init by way of syslogd, will be 
logging a better description of the problem than what is going to the 
screen.

Check your filesystems to make sure that they are a trpe that your 
kernel can mount. This is unlikely to be a problem, but just might be, 
for example if you're using ext3 but the kernel supports only ext2. See 
what "df" reports, and see if the entries in /etc/fstab are reasonable 
when compared with df's output.

The suggestion Chuck made, to install a different kernel, is likely his 
response to the kernel panic message you say you got on one occasion, 
and it may do the job for you, or it may be like using a cannonball to 
sway a fly. Definitely give it a try; there are a lot of things this 
"mess" *might* be that a kernel change will fix.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
