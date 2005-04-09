From: James Miller <jamtat@mailsnare.net>
Subject: Re: auto start WM on second VT
Date: Fri, 8 Apr 2005 20:27:17 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504082010160.5555@localhost.localdomain>
References: <5.1.0.14.1.20050408102653.02048aa8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050408102653.02048aa8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 8 Apr 2005, Ray Olszewski wrote:

> First, let's clear up a bit of terminology.
<snip>
Thanks for those clarifications. They clarify both how the terminology is 
used as well as what the computer is doing--much needed gap-filling 
information for someone like me.

> You *might* be better served by switching to (what I think of as) the 
> Slackware approach, adding lines to /etc/inittab for consoles 7 and 8 that 
> run xdm (or actual X logins), and removing the xdm script symlink from your 
> default runlevel directory. If you want to take this approach, any Slackware 
> user here should be able to give you a sample of what the inittab entry 
> should look like ... I *think* is is just --
>
>        7:23:respawn:/usr/bin/X11/xdm
>
> -- but I can't be certain because I don't have a working system here that 
> uses this method of starting xdm, so I'm drawing on a memory that is years 
> old.

I picked around a bit further in /etc/X11/xdm and /usr/X11R6 trying to 
figure out how all this works. It's rather mind-boggling trying to puzzle 
out how all the relevant files relate to one another, not to mention how 
each is supposed to work on its own. Your slackwarish suggestion seems 
worth trying. My problem with it the way it stands, though, is that it 
invokes xdm, which doesn't give me any sort of menu for chosing between 
WM's. It's just a bare login window. If I log into it, I'll get another 
Gnome session (my main WM on this machine) rather than the ion3 session I 
want. I'll attempt now to puzzle out if there's a way to add other WM's to 
some sort of menu, starting with the man page.

> PS - Did you give up on the sound card, or get it working? Or are you still 
> in the process of trying?

I've pretty much given up since it managed to completely stump me as well 
as the experts via me. It seems to me that, were I finally to succeed with 
this card, it would be by defeating the BIOS's settings somehow. And that 
would be a lesson likely applicable only to this particular computer/mobo. 
That doesn't seem to justify further effort. Before going out and buying a 
PCI card though, I do want to try out a real SoundBlaster (16) someone is 
sending me. Since these are more clearly Linux-compatible, if it also will 
not work, I can rest more fully assured that the BIOS is the source of my 
problems with the Soundman card. Thanks for your help on that.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
