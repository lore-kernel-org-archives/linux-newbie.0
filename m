From: Ray Olszewski <ray@comarre.com>
Subject: Re: Xwindows defaults
Date: Tue, 16 Jul 2002 09:18:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020716085338.021652f0@celine>
References: <20020717.013525.88@orac.clear.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020717.013525.88@orac.clear.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: cR@clear.net.nz, linux-newbie@vger.kernel.org

It is the right list, I think, but the wrong style of trouble report.

Figurative terms like "catatonic" and "lost" don't tell us enough. 
Remember, we can't *see* the actual problem; we know only what you *write* 
about it. Also, some X configuration stuff varies by distribution, and you 
haven't mentioned which Linux distro you use. Or which version of X. Or 
*how* you switched WMs (not "always a mistake", if, for example, your X 
popup menu offers a way to do it). For that matter, if you switched WMs, 
how it is that you only "think" you are running Sawmill now?

You haven't said what e-mail software you use, but it would be surprising 
if your e-mail is stored in a manner that would be threatened by even a 
complete reinstall of X.

It is unclear what you have in mind when you talk about having X "start 
with the default settings". For some X settings -- like the ones specified 
in XF86Config or XF86Config-4 -- there are no meaningful defaults. Perhaps 
you mean you want a specific user to start up with the systemwide defaults? 
To accomplish this, you probably just rename (or delete, but that's 
riskier, as you already understand) the files /home/$USERID/.xinitrc and 
/home/$USERID/.xserverrc (but do check the startx script to see if your 
distro uses different names for these files). You might also need to check 
for (and rename if found) /home/$USERID/.Xsession and 
/home/$USERID/.Xresources . Check your system for other home-directory 
files that begin with .x or .X as well.

I fear I cannot offer more specific advice -- in part because your trouble 
description, in part because I do not use Gnome, Sawmill, or Nautilus here.

If that general advice doesn't help ... or if my guess about what you meant 
was wrong ... please try again, with a more careful description of the 
problem and a description of the basics of your system. Then perhaps 
someone here will be able to offer more than general advice based on guesses.

At 01:35 AM 7/17/02 +0000, Chris Rodliffe wrote:

>This may not be quite the right list, but I'm getting desperate.
>My Gnome desktop has gone catatonic.   First I lost the pager, then
>the bar with the applets (can't remember its name).   Quitting &
>reloading X wouldn't bring it back.  I tried switching window managers
>(which is always a mistake) and now all I get when I start X is (I think)
>Sawmill, with icons for Nautilus and the Trash can.   If I start Nautilus
>the title bar is off the top of the screen and I can't get it down.
>The right mouse button works but the centre button does nothing,
>so I can't get any applications, the only way I can get out of X
>is Alt-Ctrl-F2.
>
>(If I log in as root, which happens to be configured for KDE,
>everything works).
>
>OK, what I *want* to do at this stage is delete some config files so
>X will start with the default settings.   But I don't want to delete
>the wrong files and kill X altogether.   I have a heap of emails I
>don't want to lose, for starters.    Can anyone help?




--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
