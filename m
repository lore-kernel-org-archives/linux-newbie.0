From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Sat, 10 May 2003 09:39:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030510091650.01eae530@celine>
References: <5.1.0.14.1.20030510082110.01eae2b0@celine>
 <20030510100903.GA1586@localhost.localdomain>
 <5.1.0.14.1.20030510082110.01eae2b0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030510160917.GA890@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for finding the original message. It did not occur to me that it 
might be 6 weeks old ... I don't normally keep list traffic anywhere close 
to that long. The original message tells us two things:

1. The poster was using TurboLinux 6.0 Lite. I don't know how that distro 
starts xdm, and I wonder if anyone here has used it and knows.

2. The X setup is bad enough that he cannot use it to login and open an xterm.

With that background ...

... there is one other candidate approach I forgot to mention. If the 
system is on a network and accepts remote connections (via telnet or ssh), 
the easiest way to fix this is simply to login remotely and make the needed 
changes. I don't know why I didn't think to mention it, since it is the 
actual way I usually fix X-display problems.

At 10:09 PM 5/10/2003 +0600, Amin wrote:
[...]
> > distro-neutral; not all distros use the runlevel setting
> > to launch xdm (or gdm). Debian, for example, uses a script
> > in /etc/init.d that gets called from runlevel 2 (which it
> > uses as its default runlevel).
>
>Sorry, I didn't know about this.  I assumed it was
>controlled by ``inittab''.

Right. That's (as I recall) how Red Hat does it, and it is the most common 
method ... just not a universal one.

Especially here on a list for beginners, knowing what parts of a setup are 
distro specific and what parts (reasonably) standard across distros is 
tricky. That's why I always tell people they HAVE to mention what distro 
and version they are using to get meaningful help ... and why you will 
often see me qualify my answers as describing the Debian approach to some 
setup issue. Remember the old joke about "assume".

> > Amin made reference to a "messy GUI" in his reply. Since I
> > never saw the original message, and he did not quote any
> > of it, it is possible that the original questioner
> > indicated some reason why he or she could not actually use
> > the GUI interface to open an xterm (or possibly even to
> > log in). In that case ... typically, distros that run xdm
> > also open a hidden console on /dev/tty1, which one can
> > access by pressing CTRL-ALT-F1 when the xdm display is
> > active. You can then log in, make any needed changes, and
> > reboot.
>
>That is a good idea, but I was afraid that it would mess
>around with X.  I tried it once (I'm using RH8.0), and it
>seemed to hose my X server.

I don't know what you mean by "mess around". This approach leaves X for a 
vt console, and you never go back to X. Depending on details incidental to 
the original question, switching to a vt then trying to switch BACK to X 
might cause problems you could characterize as "seemed to hose my X 
server". But since the purpose is to allow the user to disable launching of 
xdm, who cares? Any "hosing" will not survive a reboot. And how much more 
"hosed" can this X get than what the original poster described?

BTW, it is possible that the "hidden console" is on some other vt, not F1, 
so this experiment should try at least all of F1-F6 before giving up. (I 
seem to recall that Slackware used to put it on F6, but I'm not sure, and 
it has been a long time since I switched away from Slackware).

> > Finally, if even that does not work, at the lilo prompt
> > (assuming we're talking about an install that uses lilo),
> > instead of accepting the default load, you can usually
> > enter "linux single" to boot/init into single-user mode
> > with a console rather than X presented.
>
>I assumed Linux was the lone OS on the PC, so there was no
>bootloader.

This comment is meaningless; every system has a bootloader (otherwise it 
will not boot) ... or, to be exact, every system that boots from a hard 
disk does. (You *can* create a rescue floppy that loads the Linux kernel 
directly, but this is hardly a normal boot method, even for systems that 
run a single OS.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
