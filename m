From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: framebuffer console
Date: Wed, 17 Dec 2003 00:03:16 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312162347200.28443@ppg_penguin>
References: <Pine.LNX.4.58.0312150920510.1041@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312150920510.1041@debian-box>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 15 Dec 2003, James Miller wrote:

> I hope this is the right place to ask this sort of newbie question.  Here
> goes . . .  I was chatting with a programmer online the other day about
> his (console-based) program.  This individual said he doesn't use X
> windows, and doesn't have it installed on his system.  This is not
> entirely new to me, since I've used svgalib before and found it a great
> way to get graphical output from an under-resourced system (btw: isn't the
> svgalib project going moribund, unfortunately?)  Anyway, the individual of
> whom I speak said that he uses Links 2 for graphical web browsing.  Most
> importantly, he said he is always in "framebuffer console."  I don't quite
> understand what "framebuffer console" is, and relatedly, how it aids in
> running something like Links 2 (I ran Links 2 in graphical mode with
> svgalib, though).  I did some searching around on the 'net about this and
> found a couple of things that talked about the matter, but the basic issue
> still sort of escapes me.  I'd like to ask if anyone onlist could write
> a basic description of the framebuffer console for me, explaining a bit
> about what it is and what it does.  If you could also say something about
> how a graphical program like the Links 2 browser works under it, that
> would be great, too.  Finally, links to other info on the matter would be
> welcome as well (I already looked at the "Framebuffer How To", but it's a
> little beyond what I need: it tells you how to implement the framebuffer,
> which is of limited help to someone who's not entriely sure what it is).
> Thanks in advance for any input on this.
>
> James
> -

 If I understand correctly, the framebuffer is a way of viewing the
screen as an array of pixels instead of an array of character cells.  I
think it started out on mac hardware, because that is how they are
organised.  On x86 the available console framebuffer drivers depend on
your graphics card - most support vga, but more specific drivers tend to
be better (e.g. atyfb, radeon, g400).  The big benefit is that you can
get more characters in the console, e.g. 1024x768 gives me a 128x48
display after I've set a suitable font. This is _distinct_ from the
XFree fb driver.  The downside is it might be slower than using a text
console with character cells.

 The real fun comes when you're trying to work out what bootargs to use
to get a sensible-sized display.  It seems as if every driver has its
own syntax, and some of the documents out there are no longer up to
date.  I can probably offer some suggestions for the mystique, g400,
radeon, and tdfx cards if anybody is interested.  At least on macs you
don't have to do this, they just work (mostly) in the available
resolution.

 As to links, I haven't used the graphical version, but it's got the
full 1024x768 or whatever to play with, so it sounds a useful way to go.
Might give this a go some time (of course, it means saying goodbye to
tabbed browsing).  I can remember running fbview (?) to view images
centered in the console window, but one of my upgrades broke it and I
never got it running again.

 I'm all for slimming systems down, but for most recent systems the
overhead from X and a light window manager is not very much.

HTH

Ken
-- I'm as free as a bird now, and this bird you cannot chain.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
