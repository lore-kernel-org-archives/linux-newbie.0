From: Ray Olszewski <ray@comarre.com>
Subject: Re: hard lockup help - OO the culprit?
Date: Wed, 17 Mar 2004 11:01:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040317104830.01f86028@celine>
References: <Pine.LNX.4.58.0403171038190.1041@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0403171038190.1041@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:56 AM 3/17/2004 -0600, James Miller wrote:
>Hello.  I've recently been having a problem with hard system lockups when
>using OpenOffice 1.1.  This is a Debian Sid system, running the 2.4.24
>kernel.  It happens intermittently when I use the down arrow to scroll in
>the document.  It happened for the second time in about a week today.  I
>try to scroll down by hitting the arrow at the bottom of the scrollbar and
>the system just freezes.  The mouse cursor will not move, and no keyboard
>input seems to get through (cannot kill X with ctrl-alt-bkspc, cannot
>reboot with ctrl-alt-del, cannot cycle desktops with alt-Fx).  Last time
>this happened I tried telentting in from another machine on my network but
>could not (connection attempt timed out).  I tried pinging, but got "56
>data bytes sent" and then nothing.  ctrl-c showed 100% packet loss.  So, I
>figured the only way to get the computer useable again was a hard reset
>(power button off/on), which I did.  I looked through /var/log/messages on
>reboot but didn't see anything that seemed pertinent.  Any ideas on how I
>might go about diagnosing this problem?  I should mention that I had many
>applications open (13?) and a vmware session (in suspend mode) at the time
>the lockup occurred.  There were no processor/memory intensive
>applications running at the time though.  Input appreciated.

At least for the first pass, you've done everything right (everything I can 
think of, anyway).

It sounds like either a kernel problem (improbable; even Sid kernels are 
quite stable) or one of the usual hardware problems (CPU overheating, bad 
RAM, bad swap) that present, if you had a STDERR device visible, as a 
kernel OOPs ... this guess based on the system not responding to ping (even 
a halt'ed system will, often, respond to pings).

Next step -- since you have remote login capability, open a telnet or ssh 
session before trouble starts and run "top". Of, if your screen is large 
enough, do this in an xterm that is visible onscreen when OpenOffice is 
running. Either way, you should get to see the info "top" reports about the 
system right at the point of failure -- CPU utilization, RAM and swap use, 
the few highest-CPU-use processes, etc. Also you'll see (a long shot here) 
if, just barely possible, an established remote connection remains active 
after the crash.

I'm assuming that you're using the .deb packages for OpenOffice. If you 
installed it outside of Debian, please mention that next time.

Also mention next time if you are using any non-standard kernel modules 
(including X-related ones, like X-server-related framebuffers) ... my 
comment about kernel stability applies to the actual kernel code, not 
add-in modules.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
