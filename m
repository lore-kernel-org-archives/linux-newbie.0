From: James Miller <jamtat@mailandnews.com>
Subject: RE: Mandrake 8.1??
Date: Fri, 7 Mar 2003 08:57:10 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0303070837480.16791-100000@vector>
References: <3E68935B.455D0AC8@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E68935B.455D0AC8@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On 7 Mar 2003, ichi@ihug.co.nz wrote:

> James Miller wrote:
> >
> > dragging the mouse cursor to the edge of the screen causes
> > the screen to shift in that direction, making what was cut
> > off at that edge visible (while at the same time cutting
> > things off at the opposite edge).
> > I like this feature of "virtual resolution", and would like
> > to understand better how it works and how to tweak/set it up.
>
> See /etc/XF86Config, subsection Display
> ---------------
> Depth 4
> Modes "640x480"
> Virtual 800 600
> ---------------
> This example provides a virtual 800x600 display on a
> generic VGA screen.
>
Yes, I was able to successfully implement virtual resolution using these
tips. Thanks, Steven. I'm not sure this really solves your problem though,
Hal. It seems like it *could* - that is, if your friends don't mind using
virtual resolution and having, essentially, a "floating window" onto their
desktop, with only parts of it displaying, moving the cursor around being
required to see parts that are not visible. I found this setting a bit
unsettling the first time I encountered it, but have come to appreciate
it for smaller monitors. I don't know if your firends would think
likewise - especially if they are absolute newbies to Linux.

It seems like the problem you initially described, Hal, was one in which,
for some reason, the display size did not match the resolution. Why this
is, I cannot say. My guesses - but they are only guesses - would be that
it could have to do with more intricate video settings like vertical and
horizontal sync, or perhaps dot-clocks. If it's some thing like that, then
someone else here will have to inform on getting those settings right: I'm
pretty much in the dark on that. So, the information offered by Steven,
which was quite helpful to me, may or may not resolve your friends'
display problems. If they aren't turned off by the way virtual resolution
works, it seems like it could help: my guess is that, with virtual
resolution, actual display size becomes irrelevant. They should be able to
view the whole of the desktop - in increments - just by moving the mouse
cursor around, even if the settings that cause parts of the display to get
cut off without virtual resolution are not fully correct. If they don't
like the way virtual resolution works, then perhaps we can rely on someone
else onlist to provide details about how to adjust settings so that parts
of the display seem to be getting cut off don't get cut off.

More heat than light? Can't say for sure, but maybe someone else can
correct any errors I've perpetrated here.

James

PS I have also wondered in the past when I have encountered the situation
you've described, whether the gui application in question (in your case
Mandrake's control center) are somehow poorly written and are themselves
the source of the display issues, rather than the video card's/monitor's
display settings in XF86Config. Don't know the answer to that, but I'll
also throw that out for consideration.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
