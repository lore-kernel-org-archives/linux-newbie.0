From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 18:55:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040611183923.01fc9dc0@celine>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <Pine.LNX.4.58.0406111946550.2199@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406111946550.2199@debian-emach>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:05 PM 6/11/2004 -0500, James Miller wrote:
>Thanks for your input, Ray.

For the most part, I'm going to wait to think more about this until you 
report the result of the telnet test. Also, since your problem does seem to 
be specific to X, you should round up the usual suspects here ...

         what kernel? Debian stock or compiled by you?
         what video hardware (card and monitor)?
         what X server (I saw a passing reference to radeon in the log 
output, but please confirm this)?
         am I correct in thinking (from the radeon reference) that you are 
using a framebuffer in the kernel?

Check the timestamp on /etc/X11/XF86Config-4 to make sure it hasn't been 
changed more recently than you think it should have been.

Debian normally is set up to log X's STDERR output to /var/log/XFree86.log 
Check there, rather than in /var/log/mesages, for the details of whatever 
problems X is finding.

In connection with the usb* installs, did you do an apt-get update/upgrade 
(or dist-upgrade) of the system? If yes, is it possible that doing so 
changed some of your X settings (by a new xserver-xfree86 package rewriting 
/etc/X11/XF86Config-4, which would cause you to lose any changes you made 
by hand ... that is, outside the debconf method)

As to usb modules ... since we only care about them if they are running, 
use "lsmod" to check that.

>On Fri, 11 Jun 2004, Ray Olszewski wrote:
[deleted]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
