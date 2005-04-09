From: James Miller <jamtat@mailsnare.net>
Subject: Re: auto start WM on second VT
Date: Fri, 8 Apr 2005 21:38:11 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504082120440.5555@localhost.localdomain>
References: <5.1.0.14.1.20050408102653.02048aa8@celine>
 <5.1.0.14.1.20050408102653.02048aa8@celine> <5.1.0.14.1.20050408184004.01f561c8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050408184004.01f561c8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 8 Apr 2005, Ray Olszewski wrote:

> No menus? This is a Debian system, right? The Debian package manager ... the 
> package installation scripts, to be more exact ... should be adding menu 
> choices to the standard X right-click floating menu without your needing to 
> do anything, working ... as the Marketing Department would say ... just like 
> magic. (Always remembering that any sufficiently advanced magic is 
> indistinguishable from technology.)
>
> A standard Debian menu of this sort includes a WindowManagers section that 
> lets you select among the available WMs.

Yep, standard Debian unstable, installed starting with a netinst CD. The 
menu program is installed, and menus are getting updated. Despite this, I 
see no WindowManagers section anywhere: maybe the packagers for Gnome 
thought no one would ever want to use any other WM after trying Gnome :) ? 
Don't see that anywhere--not among the Gnome menu items, nor under the 
"Debian" section.

> Or, you might approach this by creating a dedicated userid to run this 
> special WM setup, and use its .xsession file to set things up. Then just log 
> into that userid in the second xdm, and you're set to go.

I don't see any .xsession file in my user's directory either. In fact, I 
created my own .xinitrc file so I could get ion3 on logging in in a 
console and running startx -- :1. I couldn't find anything like the file 
you mention or .xinitrc when I originally started setting this all up. 
There's an .xsession-errors, but no .xsession--neither in my user's, nor 
in root's directories. Either Debian has begun doing something different 
in this regard or I'm just dense and am not understanding you here or am 
overlooking something obvious.

> Avoiding the xdm step may be possible ... an initab line will run any program 
> you like ... but offhand I can't tell you how to start an X session directly. 
> (But try running, say, "top" instead of getty, and you'll see what I mean for 
> simpler apps.) Your main problem will be assigning an effective userid to 
> this session (I'm supposing you don't want it running as root, the way apps 
> started by inittab lines normally run). Becsuewe of the security problems 
> here,people don't seem to write about this option, so it may be tricky in 
> ways that are not obvious at first glance.

I knew adding something like 7:23:respawn /usr/X11R6/bin/xinit must be too 
easy. It would only work if I made an .xinitrc file in root's home dir. 
And I'd be running the session as root then, as you indicated. Which I'd 
rather not do.

Maybe I'll just need to break down and install gdm or some other menu'd 
session manager. I thought there should be a way to get xdm to give me a 
menu of WM's, but looking over the manpage I've become sceptical. The 
author says:

LIMITATIONS
One  thing  that xdm isn't very good at doing is coexisting with other 
window systems.  To use multiple window systems on the same hardware, 
you'll probably be more interested in xinit.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
