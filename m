From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling graphical login
Date: Thu, 31 Jul 2003 11:15:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030731110510.01fe1ec0@celine>
References: <35dbee635de148.35de14835dbee6@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <35dbee635de148.35de14835dbee6@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:53 PM 7/31/2003 -0400, Anshuman Singh Rawat wrote:
>Hi,
>I have a graphical login screen and I need to disable it as there is some 
>problem with my X. How does one disable it?

It depends on how you (your Linux distro, that is) enable(s) it in the 
first place. That varies a bit by distro. The two most common ways are:

1. Setting in /etc/inittab a default runlevel that causes xdm (or maybe 
gdm) to start. To disable it this way, change from a runlevel that starts 
xdm (or gdm) to one that does not. Most commonly, that involves changing 
the line in /etc/inittab that reads

         # The default runlevel.
         id:5:initdefault:

to read

         # The default runlevel.
         id:2:initdefault:

2. Running an init script that starts xdm (or gdm). To disable it this way, 
find the symlink to that script in the default runlevel and remove it. For 
example, my Debian systems use the script /etc/init.d/xdm to start X and a 
default runlevel 2. So I remove (or rename) the symlink /etc/r2.d/S99xdm .

BTW, even with  a "graphical login screen" running, you probably have 
consoles hidden away. So if the X stuff does not completely trash your 
display, pressing CTRL-ALT-F1 (through -F6, usually) will probably give you 
a text console where you can log in.

If you need more specific help, in a followup tell us what Linux distro and 
version you are using, which graphical login system you use (xdm or gdm), 
and whatever you know about how your system now starts X.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
