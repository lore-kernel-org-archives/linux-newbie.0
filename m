From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netscape6.2/Slack8.1 Problem??
Date: Wed, 30 Apr 2003 10:22:33 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030430101045.01f89a18@celine>
References: <20030430130258.A152@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030430130258.A152@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:02 PM 4/30/2003 -0400, Hal MacArgle wrote:
>Greetings: Netscape-6.2.3.i686-3 bundled with Slackware 8.1.0 -
>machine has 300mHz Celeron and 128mB SDRAM - installed OK and looked
>as expected except one glaring problem:
>
>Clicking on the normal box that usually accepts an entry - the
>arrow changes to an "I" but no typing appears in the box..
>
>Tried the File drop down menu that has a selection to enter an URL -
>same thing. It's almost like the keyboard is dead.. Of course the KB
>works fine with everything else, even when I installed Netscape 4.77
>on the same machine.. Back to 6.2.3 again - same KB problem..
>
>I'm stumped. Any suggestions or comments? TIA.

Only the obvious one. Netscape is traditionally a resources hog, and your 
hardware is pretty minimal ... RAM especially ... for a workstation that 
runs X in any of its modern, heavyweight configurations (the standard Gnome 
or KDE desktops, that is). And I don't know what other, background 
processes might also be running on the host.

So ... is it possible that what you are seeing is extreme slowness due to 
swapping? (You don't mention a swap partition, but with only 128 MB of RAM 
on an X workstation, I expect you have one.) Or, somewhat less likely, an 
actual out-of-memory condition (if by some chance you do not have a swap 
partition)?

If you run "top" in an xterm/eterm while the problem is occurring, what 
does it tell you about CPU utilization and memory use? Does "top" itself 
continue to run (update its display) when Netscape is unresponsive?

More generally, is the unresponsiveness isolated to the running Netscape 
process? (Is that what you meant by "Of course the KB works fine with 
everything else ..."?) Can you, for example, get the X popup menu and start 
new processes? Can you ssh in? Do other running processes respond if you 
switch to them? Does the mouse pointer move, and will X use it to change focus?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
