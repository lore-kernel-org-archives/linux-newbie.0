From: Ray Olszewski <ray@comarre.com>
Subject: Re: auto start WM on second VT
Date: Fri, 08 Apr 2005 19:00:52 -0700
Message-ID: <5.1.0.14.1.20050408184004.01f561c8@celine>
References: <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine> <Pine.LNX.4.61.0504082010160.5555@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504082010160.5555@localhost.localdomain>
References: <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:27 PM 4/8/2005 -0500, James Miller wrote:
[...]
>I picked around a bit further in /etc/X11/xdm and /usr/X11R6 trying to 
>figure out how all this works. It's rather mind-boggling trying to puzzle 
>out how all the relevant files relate to one another, not to mention how 
>each is supposed to work on its own. Your slackwarish suggestion seems 
>worth trying. My problem with it the way it stands, though, is that it 
>invokes xdm, which doesn't give me any sort of menu for chosing between 
>WM's. It's just a bare login window. If I log into it, I'll get another 
>Gnome session (my main WM on this machine) rather than the ion3 session I 
>want. I'll attempt now to puzzle out if there's a way to add other WM's to 
>some sort of menu, starting with the man page.


No menus? This is a Debian system, right? The Debian package manager ... 
the package installation scripts, to be more exact ... should be adding 
menu choices to the standard X right-click floating menu without your 
needing to do anything, working ... as the Marketing Department would say 
... just like magic. (Always remembering that any sufficiently advanced 
magic is indistinguishable from technology.)

A standard Debian menu of this sort includes a WindowManagers section that 
lets you select among the available WMs.

All this is done by an app whose mane I'm not sure of (maybe "menu"), from 
the Debian package "menu". "apt-cache show menu" to see what I'm talking 
about, and install it if you haven;t already done so ... it will make your 
use of X much more convenient ... at least after you do the login via xdm.

Or, you might approach this by creating a dedicated userid to run this 
special WM setup, and use its .xsession file to set things up. Then just 
log into that userid in the second xdm, and you're set to go.

Avoiding the xdm step may be possible ... an initab line will run any 
program you like ... but offhand I can't tell you how to start an X session 
directly. (But try running, say, "top" instead of getty, and you'll see 
what I mean for simpler apps.) Your main problem will be assigning an 
effective userid to this session (I'm supposing you don't want it running 
as root, the way apps started by inittab lines normally run). Becsuewe of 
the security problems here,people don't seem to write about this option, so 
it may be tricky in ways that are not obvious at first glance.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
