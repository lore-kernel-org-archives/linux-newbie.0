From: Ray Olszewski <ray@comarre.com>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Tue, 11 Jan 2005 22:55:51 -0800
Message-ID: <5.1.0.14.1.20050111220955.02b21ba8@celine>
References: <200501112319.42894.eric@cisu.net>
 <41E439F4.6030404@comcast.net>
 <200501112319.42894.eric@cisu.net> <41E444EC.4000708@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E444EC.4000708@comcast.net>
References: <200501112319.42894.eric@cisu.net>
 <41E439F4.6030404@comcast.net>
 <200501112319.42894.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-55E46069"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: eric@cisu.net

At 09:28 PM 1/11/2005 +0000, Jeremy Abbott wrote:

>What about a possible shell equivalent of XMMS, or at least an mp3 player 
>with a que,

mpg123, a command-line mp3 player, can be run given a list of files to 
play. That's the closest I can think of to a playlist (what I assume you 
mean by a "que") capability in a CLI player. I didn't check, but the 
similar program mpg321 probably has the same capability.

>  I already know I can run elm as opposed to Thunderbird?

Yeah, or mutt or mush. I imagine pine is still around too. e-mail is easy 
for a CLI to handle.

>Also, is there a better (i.e. graphical) web-broweser that runs from the 
>command line?  The only browsers I know of are links and lynx.

The two you name are the only ncurses-based browsers I am aware of. What 
you want, though, is (probably) a browser that uses svgalib.

I'm seeing some references that indicate that links2 (a grapgical version 
of links) can run using svgalib, but the Debian binary seems to be compiled 
to use X libraries, so you may need to compile your own version. Take a 
look at the links upstream site -- 
http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/index.html -- for 
the details.

There once was a version of arachne that I believe used svgalib, but I 
can't find any indication that it is currently available.

A little googling turned up lists of lightweight browsers at these URLs --

         http://users.netwit.net.au/~pursang/brows.html
         http://www.itp.uni-hannover.de/~kreutzm/en/lin_browser.html

-- though the svgalib choices they list all appear either to be gone or to 
be very early-stage alpha code.

The suggestion that you use X with a lightweight WM, which others have 
already made, really is good advice, probably much less work than diving 
down any of these rabbit holes. My own favorite in this respect is 
blackbox, though I think there are several others, such as your own example 
of fluxbox, that are also pretty good. With blackbox, I've run X on systems 
that have only 32 MB of RAM, with room to spare ... though some of the apps 
you are interested in themselves are too heavyweight for that.

Gentoo's source-based approach may make adding packages more trouble than, 
say, Debian or Fedora or Knoppix users have, but surely you're used to that 
aspect of Gentoo by now.

And the basic response you already received is also right ... apps familiar 
to us as X-based use shared libraries specific to X. They cannot write to a 
"raw" framebuffer.

>Eric Bambach wrote:
>
>>Hi,
>>I would say no. The X server isnt all too bloated if you use a 
>>lightweight window manager . Firefox, Openoffice, Xmms all use toolkits 
>>that need a backend X server to talk to. What gives you the impressions 
>>that X is that bloated? I would say just bite the bullet and search out a 
>>simple window manager. Sorry if anything doesn't make sense Im quite 
>>tired today, but I hope that answers your question.
>>
>>On Tuesday 11 January 2005 02:41 pm, you wrote:
>>
>>
>>>This may seem really newbieish, but I have been running Gentoo for quite
>>>some time now.
>>>
>>>Is it possible to forego X altogether, and run things like firefox,
>>>thunderbird, etc through the framebuffer from a bashprompt, rather than
>>>starting X and going from there.  The reason I ask, is I hate the bloat
>>>of Gnome and KDE, and don't have the time to learn to configure fvwm or
>>>fluxbox, etc.  In addition, the X server has a lot to it that I don't
>>>really need.  This is just a personal desktop, and aside from setting up
>>>samba to share mp3's with my fiance's computer (across the room), I
>>>don't do provide any servers.  I also generally don't use any graphical
>>>utilities for setting up or maintaing the system.  The only progs I
>>>really use in X are, Firefox, Thunderbird, XMMS, Openoffice, and
>>>occasionally KDevelop... mostly for editing my fvwm config.
>>>
>>>Thanks in advance for any help.
>>>
>>>Jeremy Abbott
>>>jkbullfrog@comcast.net






-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.6.10 - Release Date: 1/10/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
