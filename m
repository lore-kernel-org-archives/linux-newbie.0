From: James Miller <jamtat@mailsnare.net>
Subject: Re: getting a valid display under Debian
Date: Tue, 11 Nov 2003 18:20:58 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0311111718010.3176@homenet>
References: <5.1.0.14.1.20031111121913.01fa3d58@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031111121913.01fa3d58@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Tue, 11 Nov 2003, Ray Olszewski wrote:

> To configure X in Debian-Sid, you have several options.
>
> 1. Edit /etc/X11/XF86Config-4 by hand (of course). You may find this
> tricky, if your prior experience is only with X11R6 3.x.x, because 4.x.x is
> *very* different.
>
> 2. Use dpkg to do it. As I recall, the appropriate command is
> "dpkg-reconfigure xserver-xfree86".
>
> 3. The command-line program "xf86config" is still available (I'm nor sure
> what .deb has it, but surely it is one included in the X task install). I
> haven't used it in years, though (I use method 2 above for video-card or
> montor changes and 1 for fine tuning), so I can't tell you how tricky, or
> just different, it might be actually to use.
>
Thanks for that input, Ray.  I'll be trying out number 2.

> I assume you are having this problem both with and without the "fluxbox"

Yes, I added that entry, thinking it might resolve the problem.  It seems
to have made no difference - same blank screen.

> edit you mention making. I also assume you've redirected X's STDERR output
> to a file and looked there for anything of interest. If not, try these
> things if you can ... by way of an ssh or telnet session into the problem
> host, if necessary, for the second of them.
>
I know even less about interpreting the output under discussion than I
know about how to redirect STDERR output.  That said, I'm willing to try
and generate such output and look it over, if you're willing to provide
some tips on how to do that.  I think I'd prefer trying this before
something like telnetting in, since I'm even more clueless about what to
do in a telnet session (and how to set the host up to permit one).

> As to your actual symptoms, it is (again, of course) meaningless to say
> that the failure persists "no matter what I do" except insofar as it
> applies to the things you actually think of to do, something I and others
> can only guess about. So, if you need more help than the prior comments

I think my meaning is actually quite transparent.  Given the context
(which is asking for help, as you must surely understand), "no matter what
I do" means "I've tried everything I can think of, so I'm turning to you
(who know more than me about it) for help on what more I might do."  Don't
feel badly about misinterpreting such a simple assertion: I understand
that, just because someone is an expert in computer matters, they may yet
lack prowess in areas that seem quite simple to me and people like me -
such as human communication and interpretation of texts.  But do try
harder next time to look for obvious signs of meaning in the surrounding
context.

> 1. Is the power light on the monitor green or orange when the screen is blank?
>
Yes, definitely green.  Has been the whole time.

> 2. Do you try CTRL-ALT-F1 to get back to a vt? If so, what happens?
>
Well, like I said, "I can't get to any virtual terminals" (that's what you
mean by "vt," correct?): ctrl-alt-Fanything leaves me at the same blank
screen.

> 3. If just doing #2 doesn't show a vt display, does power-cycling the
> monitor *after* you do #2 have any effect?
>
Power-cycling brings me back to the same blank screen after re-powering.

> 4. If "no" to #3, do you at this point have an "invisible" vt? Can you, for
> example, reboot the system (assuming you are or can become root) with the
> command-line "reboot" command? (Or substitute some other test ...

Nothing happens when, on the conjectured invisible vt, I log in as root
and type "reboot" or "shutdown."  I just tried it several times.  So, it
seems there is no invisible vt, don't you think?

> Also, if you post again on this, please mention what settings the Slackware
> version uses for the monitor variables ... hfreq, vfreq, and whatever the
> others are. And which xserver you are using in both cases (Slackware and
> Debian).
>
For Slackware: hfreq=31.5; vfreq=60.  Possible resolutions I selected:
640x480 and 800x600 (couldn't remember for sure if this monitor does the
latter: I think not, but I included it under Slack and it hasn't
interfered).  s3v server under Slack, s3virge server under Debian.

> Last thought ... the X 4.x.x did, I believe, drop support for some older
> hardware. You might be getting snagged by that (with respect to the video
> card). I don't *think* this applies to S3Virge, but I'd have to check at
> xfree86.org to be certain, and you can check there as easily as I can.
>
Ok. even though the s3virge server is listed as one that can be chosen
under the Dedian/X install I have, I'll go there and check.

Further input appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
