From: Ray Olszewski <ray@comarre.com>
Subject: Re: distribution choice
Date: Thu, 27 Feb 2003 12:02:50 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030227112842.01f216e0@celine>
References: <200302271859.h1RIxUE9026632@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302271859.h1RIxUE9026632@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I think Brian's general response here is right on target. Most of us know 
(and like) one distribution, and perhaps know a bit about one or two 
others. But I very much doubt any of us is in a real position honestly to 
compare all (or even all the major) distributions available.

Rather than pretend to an expertise I don't have, I'll try to be helpful by 
commenting on how well Debian fits with each of your criteria.

At 01:59 PM 2/27/2003 -0500, Haines Brown wrote:
>I've always used Red Hat. My installation of 7.3 began to go sour last
>fall after a clumbsy video driver installation. Things got more
>and more complicated, and I ended up having to do a fresh install of
>Red Hats 8.0. Since then, things just have not worked right and I'm
>spending all to much of my valuable time doing repairs, often
>unsuccessfully.
>
>I'm considering a retreat to 7.3, but must also consider changing
>distributions. Here are my criteria:
>
>1. I like to rely as much as possible on keyboard input rather than
>    the mouse. Red Hat seems to be moving in the opposite direction,
>    and more and more I'm being forced to use the mouse.

I mostly use my systems as remote servers (my everyday desktop is a Win2K 
machine) accessed via ssh sessions. So in that context, *everything* is 
done with the keyboard. The main exceptions are some video apps that run in 
X ... they all run very nicely from xterms, though they usually have GUIs 
that require a pointing device (a trackball, for me).

>2. I must have multiple desktops and window stacking. I don't know
>    that any window manager supports stacking order except
>    enlightenment. Yet I like Gnome's panel and applets. These two
>    applications don't get along well in RedHat 8.0, but do in gentoo;
>    I don't know about other distributions. I've never used Windows,
>    and so don't find anything appealing in a Windows-like interface.

I use the minimalist X wm Blackbox myself, so I can't comment on these 
heavyweight X wm choices, beyond noting that they are all available in 
Debian. Blackbox, like almost all wms, provides multiple workspaces (I 
assume the equivalent to your "desktops") but not window stacking ... as I 
said, it is minimalist, uncluttered, and (for me) tranquil and soothing.

>3. I've got plenty of hardware muscle, so don't worry much about
>    speed. It is fairly standard SCSI and USB stuff, hardware
>    compatibility is probably not a big issue.

This is mostly in the kernel, so I would expect it to be distribution 
agnostic. Hardware *detection* is a different issue, and on that score, 
Debian fares poorly ... unless you use very mainstream stuff, you have to 
tell Debian a lot about your hardware.

>4. I don't need to be at the bleeding edge in terms of kernel and
>    applications, but I need my stand-alone workstation with DSL
>    connection to be secure and reliable. I've an interest in ham radio,
>    which used to favor one distribution, but I assume there's no
>    significant difference today.

DSL usually (though not always) implies PPPoE, and for that, the RP package 
is pretty much it, also distro independent. I don't know anything about the 
ham radio stuff. In the past, the Debian package manager set up PPPoE for 
me just fine (now I have a static address and a NAT'ing router -- also 
Debian based -- so I no longer use RP PPPoE).

>5. I don't find ease of installation to be an issue, and am quite
>    willing to put up with gentoo's notoriously slow compile.

I don't know Gentoo closeup, so any notoriety it exhibits has escaped my 
attention. Do you mean kernel compiles? If so, Debian is nothing special 
either way here.

Debian is OK on ease of installation ... not awaul, not great, and more 
suited (in my opinion) to custom installs than to "standard workstation" 
installs. (Debian uses a set of dummy "task" packages to provide some 
standard configs, but I stopped using them years ago, finding them a bit 
bloated for my taste.)

>6. I'm quite willing to edit configuration files by hand, but will
>    occasionally need spiritual advice, and so would prefer a
>    distribution that's not too exotic. I find configuration files that
>    are on the move to be a pain.

I supose "not too exotic" means one where you can ask questions and get 
useful answers. I don't think there are a lot of Debian users here on this 
list, but there is an active (for me, too active) set of Debian help lists. 
You might want to subscribe to one or a few of them, as well as similar 
lists from other candidate distros, to get a sense of which offer the kind 
of help you would like.

Also consider that more and more, specialized applications have their own 
sites and user lists, where you can ask more focused questions and 
(usually) get specialized help.

>7. I mostly use a few standard applications, especially emacs.

I don't use emacs myself, but my son is a real emacs fan, and he's quite 
happy with Debian's support for it. I can't comment, of course, on unnamed 
"standard applications", except perhaps to note that if they really are 
standard, then all the distros will support them fairly well (that's almost 
the definition of "standard", I would think).

>In light of this, which distributions should I be considering? Does
>one of them stand out in your opinion as an obvious choice in light of
>my criteria?

I would say that your question, as posed, does not have an "obvious" answer.

I'd need a better sense of the actual apps you use to answer this question, 
beyond saying that any of the conventional "major" distros -- RH, Mandrake, 
SuSE, Debian, I suppose even Slackware (sorry, Richard) -- are candidates. 
I would limit my range of choice to the distros that are active enough that 
they get regular updates, so the core apps are current, as bugfree as 
possible, and not vulnerable to security threats ... you mention none of 
this in your list of criteria, but it's hard for me to think about software 
choices without considering these issues.

(It's those issues that cause me to like Debian. Debian Stable is a 
rock-solid way of doing core, conventional things, and Debian Unstable is 
good at keeping up to date with bleeding-edge apps. Richard, perhaps you'd 
like to comment on Slackware in this regard, especially its system for 
providing security-related updates?)

You might ask yourself to what extent your problems with RH come from 
trying to use the free version of a distro intended to make money (it's 
been far too long since I used RH, or anything but Debian and specialized, 
small distros like LEAF, for me to dare try to answer this for you). If the 
answer looks like "quite a bit", then consider Debian on that score ... 
it's designed to be free, supported by its community of maintainers. After 
Debian, consider Slackware ... not free in the same sense, but still coming 
out of Walnut Creek, which makes its money modestly by selling CDs, not by 
trying to be a big-name IPO.

I'd be *very* cautious about a "retreat" to RH 7.3, unless you can satisfy 
yourself that it gets good security updates ... with a DSL connection, you 
are vulnerable to attacks from the Internet pretty much all the time, right?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
