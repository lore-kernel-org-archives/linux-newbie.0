From: Eric Bambach <eric@cisu.net>
Subject: Re: getting a console prog to run on tty2 at bootup
Date: Sat, 11 Dec 2004 00:07:54 -0600
Message-ID: <200412110007.54356.eric@cisu.net>
References: <Pine.LNX.4.58.0412100651320.8769@localhost.localdomain>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412100651320.8769@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Friday 10 December 2004 07:11 am, James Miller wrote:
> Hello all.  I'm running a new Debian variant called "Ubuntu"--sort of an
> unstable/testing composite.  I run a number of console apps and like to
> keep a virtual console open for them (as opposed to using xterms).  I've
> found a nice sort of console windowing program called "twin" that allows
> me to run all my console apps in a single virtual terminal.  Right now, I
> start all this manually: on bootup, I hit ctrl-alt-F2 and issue the
> command to start twin.  What I'd like to do is automate it a bit more so
> that twin automatically runs on tty2 when I boot the system.  I understand
> that I probably need to edit the file /etc/inittab to make this happen.
> Is this correct?  Are there any other startup files that would need
> editing to do what I want here?  
Nah, inittab should do it :)

> Furthermore, exactly how would I edit 
> /etc/inittab to accomplish this?  I think the relevant portion of the file
> to edit is this one:

See below. Yes thats exactly the spot.

> # Note that on most Debian systems tty7 is used by the X Window System,
> # so if you want to add more getty's go ahead but skip tty7 if you run X.
> #
> 1:2345:respawn:/sbin/getty 38400 tty1
> 2:23:respawn:/sbin/getty 38400 tty2
> 3:23:respawn:/sbin/getty 38400 tty3
> 4:23:respawn:/sbin/getty 38400 tty4
> 5:23:respawn:/sbin/getty 38400 tty5
> 6:23:respawn:/sbin/getty 38400 tty6
>
> I think the 23 refers to the port telnet runs on, right?  Seems I need to
> edit the line 2:23:respawn:/sbin/getty 38400 tty2, but the question is
> how?  Do I replace /sbin/getty with the path to twin and add any command
> line switches after (-hw=tty is what I use when I run it manually from a
> console)?  Does the 38400 need to be in there, and for that matter, the
> 23?

Yes telnet DOES run on 23, but that has nothing to do with the file ;)
the first number is the virtual console # and the second number is the 
runlevels. Notice that VC 1 ALWAYS starts up: runlevels 2345.  Try something 
like this and make sure to comment out the original line:

2:23:respawn:/bin/twin -hw=tty -etc -etc -etc -more -args

And run init -q (from memory, if -q doesnt work try man init) to get init to 
re-read the conf file. Dont worry if you bork the line, init will disable 
respawning if the program respawns too fast. If that happens just correct the 
line and run init -q again. Since you said this is a test box I don't think 
you'll have too much trouble if you happen to screw something up that 
requires a reboot ;)

> Any advice on editing relevant startup files properly in order to get twin
> running on tty2 at system startup would be appreciated.

I am not very experienced in what you are trying to do EXACTLY but its close 
enough you should be able to figure it out form there.The 38400 and firends 
are command line arguments to getty. Just drop them. The fields go 
VC# : RUNLEVELS : OPTIONS : COMMAND
> Thanks, James
>
> PS I log into the virtual terminal as my system's user before running twin
> when I do this manually.

-- 

-EB
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
