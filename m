From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Tue, 11 Jan 2005 23:57:13 +0000
Message-ID: <41E467D9.7040003@comcast.net>
References: <200501112319.42894.eric@cisu.net> <41E439F4.6030404@comcast.net> <200501112319.42894.eric@cisu.net> <5.1.0.14.1.20050111220955.02b21ba8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050111220955.02b21ba8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: Ray Olszewski <ray@comarre.com>




>
> mpg123, a command-line mp3 player, can be run given a list of files to 
> play. That's the closest I can think of to a playlist (what I assume 
> you mean by a "que") capability in a CLI player. I didn't check, but 
> the similar program mpg321 probably has the same capability.
>
>
Thanks, I will check into this.

> Yeah, or mutt or mush. I imagine pine is still around too. e-mail is 
> easy for a CLI to handle.
>
I'm also just now checking into mutt, which is a prog I had forgotten 
about.  I used pine years ago when I was in high school.

> I'm seeing some references that indicate that links2 (a grapgical 
> version of links) can run using svgalib, but the Debian binary seems 
> to be compiled to use X libraries, so you may need to compile your own 
> version. Take a look at the links upstream site -- 
> http://atrey.karlin.mff.cuni.cz/~clock/twibright/links/index.html -- 
> for the details.
>
The links I was refering to is links2, but I will look into using svgalib.

> The suggestion that you use X with a lightweight WM, which others have 
> already made, really is good advice, probably much less work than 
> diving down any of these rabbit holes. My own favorite in this respect 
> is blackbox, though I think there are several others, such as your own 
> example of fluxbox, that are also pretty good. With blackbox, I've run 
> X on systems that have only 32 MB of RAM, with room to spare ... 
> though some of the apps you are interested in themselves are too 
> heavyweight for that.
>
I do have to ask you why using X is good advice (not to say your wrong), 
my understanding, is that X is cobbled together adding code ontop of 
code, to the point where it is barely readable.  Aside from the bloat 
(of which I was primarily writing of kde and gnome), I also have some 
minor display problems with X.  I have tried my monitor manufacturers 
range of vertical and horizonatal syncs, but notice a flicker.  I have 
also tried tried the exact values my monitor tells me I have when I am 
in Windowz XP (which is still on the system as backup, even though I 
have abandoned it), and it doesn't flicker, but I see some kindof funky 
lines, almost like my display is being slightly folded in on the top and 
bottom.  This could also have to do with the generic radeon driver I'm 
running.  I suppose I shall try installing the Ati drivers for X.

> Gentoo's source-based approach may make adding packages more trouble 
> than, say, Debian or Fedora or Knoppix users have, but surely you're 
> used to that aspect of Gentoo by now.
>
I personally have never had problems adding packages to Gentoo, aside 
from the long compilation process, but this is always the case when 
compiling sourcecode.  I tried Debian once, but it would not recognize 
my usb keyboard and mouse to install.  I have never run Fedora, though I 
did run Red Hat (I think 7.2) for a day, and quickly switched to 
Mandrake which I found much better.  I have also not tried Knoppix, but 
thought it only to be like a LiveCD distro for recovery and the like.  
What I like about Gentoo are the USE variabls I can choose before 
compiling, without having to alter make files for each package.  I have 
heard that there is a similar deal to Gentoo's portage in Slackware, but 
I have not tried it either.

> And the basic response you already received is also right ... apps 
> familiar to us as X-based use shared libraries specific to X. They 
> cannot write to a "raw" framebuffer.
>
To this I have to ask why?  I know for a fact that I am not the only 
person who has expressed this concern.  Where is the next generation X 
server?  Don't tell me Xorg, cause that is what I'm running, and it aint 
that different (not to sound to condescending).

I do however thank you for the help.  I will be continuing to research this.

Jeremy Abbott
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
