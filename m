From: James Miller <jamtat@mailsnare.net>
Subject: hard lockup help - OO the culprit?
Date: Wed, 17 Mar 2004 10:56:35 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403171038190.1041@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello.  I've recently been having a problem with hard system lockups when
using OpenOffice 1.1.  This is a Debian Sid system, running the 2.4.24
kernel.  It happens intermittently when I use the down arrow to scroll in
the document.  It happened for the second time in about a week today.  I
try to scroll down by hitting the arrow at the bottom of the scrollbar and
the system just freezes.  The mouse cursor will not move, and no keyboard
input seems to get through (cannot kill X with ctrl-alt-bkspc, cannot
reboot with ctrl-alt-del, cannot cycle desktops with alt-Fx).  Last time
this happened I tried telentting in from another machine on my network but
could not (connection attempt timed out).  I tried pinging, but got "56
data bytes sent" and then nothing.  ctrl-c showed 100% packet loss.  So, I
figured the only way to get the computer useable again was a hard reset
(power button off/on), which I did.  I looked through /var/log/messages on
reboot but didn't see anything that seemed pertinent.  Any ideas on how I
might go about diagnosing this problem?  I should mention that I had many
applications open (13?) and a vmware session (in suspend mode) at the time
the lockup occurred.  There were no processor/memory intensive
applications running at the time though.  Input appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
