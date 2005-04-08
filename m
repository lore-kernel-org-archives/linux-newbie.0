From: Ray Olszewski <ray@comarre.com>
Subject: Re: auto start WM on second VT
Date: Fri, 08 Apr 2005 10:47:12 -0700
Message-ID: <5.1.0.14.1.20050408102653.02048aa8@celine>
References: <Pine.LNX.4.61.0504080758090.5555@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504080758090.5555@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:24 AM 4/8/2005 -0500, James Miller wrote:
>After all those complex problems with sound, let me ask for some help on 
>something that should be much easier to resolve. It should just be a 
>matter of automating something I currently do manually. This refers to the 
>same Debian unstable system I discussed in the sound card thread.
>
>I've become attached to some console programs and had been running them in 
>a sort of console window manager called "twin" on a second VT. Works 
>nicely (if you can get the right vga mode to work with your video card) 
>but there are some inconveniences--for example if you need to run some X 
>app when you try opening an email attachment or something. The combination 
>of those two problems led me to consider instead running a lightweight, 
>console-like WM on that second VT. I decided on ion3, since I've had some 
>experience with that.
>
>I discovered through some web searching that setting this up to work 
>"manually" was very easy under Debian. It was easy because Debian 
>apparently does not use an .xinitrc file found in the user's home dir when 
>starting up Xwindows on display :0 (hope I've said that at least somewhat 
>correctly). However if you create an .xinitrc file in your home directory 
>that points to a valid WM binary on your system, then start Xwindows on 
>display :1 in a second VT, it will use that .xinitrc file and get the WM 
>running on the second display. This can be either a second copy of the 
>same WM or a different WM altogether. One can alternate between the two by 
>use of the ctrl-alt-F7 and ctrl-alt-F8 keys. An example of the command 
>line way of doing this is to press ctrl-alt-F2 to get to the second VT and 
>a (login, then) command prompt. From the prompt, simply issue startx -- :1.
>
>Works fine. The question I'm currently trying to resolve however, is 
>getting the WM to start up automatically in the second VT. This should 
>happen either after I log into the system (using xdm), or, short of that, 
>automatically. I gather it can be done by editing inittab, though I'm not 
>sure of the exact syntax. I suppose it might also be accomplished by 
>editing/creating some xdm config file. A third way might involve tweaking 
>startx. And this is what I'd like to ask advice on.
>
>Finally, my question. Can anyone offer suggestions on ways of getting the 
>second WM running on display :1 automatically? E.g., after I log in to 
>xdm? Hope this will be as easy as it seems.


First, let's clear up a bit of terminology.

In your setup (stock Debian, no matter if Woody, Sarge, or Sid for this 
purpose), you have consoles running on VTs 1 to 6. You have xdm, then X 
itself after login, running on VT7 (as DISPLAY 0 - DISPLAY is an env 
variable that applies only to X sessions, not CLI consoles).

When you do a "startx" from VT2, it actually starts X (as DISPLAY 1) on the 
first available VT, which is 8, not 2. (If you switch back to VT2 after you 
run startx, you'll still see a console that presents that command, followed 
by its output to STDOUT and STDERR, and that you can kill the X session 
from with a CTRL-C.)

This is the standard way to start X from a console. If you want the console 
available, not tied up, detach the job ("startx &").

There are two basic ways to start X sessions (including a login manager 
like xdm or gdm) as part of init:

1. Via an entry in /etc/inittab . I think most mainline distros still do it 
this way (I know Slackwere did, using a different runlevel for X-based 
inits), but Debian does not.

2. Via an init file. This is how Debian does it, via /etc/init.d/xdm, plus 
a symlink fro /etc/rc2.d/ to it.

Debian's approach makes it hard to start 2 X (or xdm) sessions as part of 
init, because the script is designed around the xdm session it starts being 
unique. To stay with this aproach, you'd need to write a custom script, or 
perhaps add some lines to an rclocal script if you've made one (it's not 
part of standard Debian).

You *might* be better served by switching to (what I think of as) the 
Slackware approach, adding lines to /etc/inittab for consoles 7 and 8 that 
run xdm (or actual X logins), and removing the xdm script symlink from your 
default runlevel directory. If you want to take this approach, any 
Slackware user here should be able to give you a sample of what the inittab 
entry should look like ... I *think* is is just --

         7:23:respawn:/usr/bin/X11/xdm

-- but I can't be certain because I don't have a working system here that 
uses this method of starting xdm, so I'm drawing on a memory that is years old.

PS - Did you give up on the sound card, or get it working? Or are you still 
in the process of trying?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
