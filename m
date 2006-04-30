From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Fedora core 4 and Totem Media Player??
Date: Sun, 30 Apr 2006 14:40:53 -0400
Message-ID: <20060430184053.GA1058@lnx2.kvinet.com>
References: <20060427200418.GA1963@lnx2.kvinet.com> <44515623.2030108@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44515623.2030108@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 04-27, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >Greetings am in trouble again researching media playing..
> 
> I don't know if this will get you out of trouble, but it's what I can 
> offer. Hope it helps.

	__Every__ bit, no matter how little helps, Ray.. I, usually,
can't see the forest for the trees...




> >Fedora core 4, default desktop install that includes the totem media
> >player launchable from one of the pull down menus..
> 
> totem comes in two flavors: totem-xine and totem-gstreamer. Each is just 
> a frontend to the named video app. From what you write it is impossible 
> to tell which version you have installed (Debian provides both, and a 
> quick Web search seemed to say that Fedora does too), but on Debian, the 
> package "totem" is a dummy package that installs totem-xine.

	This has, apparently to me, been changed.. Fedora core 4 has
neither of the above as files, just totem.X.X.rpm.. Uninstalling that
and installing another RPM file, totem-xine of an earlier vintage,
will not install without quite a few missing dependencies.. So it
seems many changes have been made; as you've mentioned many times..




> >Plays a selected known good avi file/s/ to test and the screen looks
> >like a fractal display with coloured lights and circular swatches of
> >colour that resembles a circular saw... (Audio is fine)
> 
> "known good" isn't good enough here. I've seen this sort of problem a 
> lot ... video files that will play in mplayer but not xine, or xvideo 
> but not xine, or about any other combination you can think of. (Though 
> offhand I cannot recall one that mplayer wouldn't handle, at least not 
> once I patched it to use the DIVX FourCC code.)

	Well all I can say is that the "test" files "known good" that
I've tried all play flawlessly using mplayer; captured by different
capture cards, both bttv and ATI (gatos), video cards and Slackware
versions.. To confuse things more, however, I tried all of these
"test" files on both Slackware 10.1, 2.4.29; and Slackware 10.2,
2.4.31 with Slacks bundled, standalone, Xine package and in all
cases, all files, the flesh tones are BLUE... A limited amount of
tweeking was tried finding that RED is missing... I didn't spend too
much time on this but found it interesting to say the least..



> It typically means the asserted video codec (that is, the FourCC codec 
> name) doesn't *quite* match the codec with that name available in the 
> player. For example, video encoded with an old (3.something, as I 
> recall) version of the DivX codec often came out as a mess ("a mess" is 
> pretty much the right technical term for what you've described) when 
> played back with the DivX 4.x coded ... but both had the FourCC code 
> "DIVX". Yuck.
> 
> Since avi is just a container format (that is, a way of combining the 
> audio and video data, plus some metadata), there is no knowing from 
> "known good" what codec is involved in your problems.

	I have much to learn about this, of course, and it seems I've
not lucked onto the proper defaults.. Since I have standardised on
grabbing with Xawtv I've tried to select play programs that mention
Xawtv's normal AVI files.. Of course we have the old problem of NTSC
and PAL because most of the development seems to come from PAL
country.. Simple in-compatibility has returned to haunt me, eh?? In
the __beginning__ there were only, what, three Linux versions; now
there's, what, 2000.. I think that's good even considering some of
the agony.. We survive..




> The guts of xine is a library. On Debian, the package is:
> 
> 	libxine1 - the xine video/media player library, binary files
> 
> The non-library package, called xine-ui, is just xine's own User 
> Interface, which totem substitutes for (there's also a gxine frontend 
> package). So look for something in Fedora with a similar name. The 
> underlying library should be something like:
> 
> 	/usr/lib/libxine.so.1.12.0
> 
> and there should also be an associated directory /usr/lib/xine/ with a 
> bunch of plugins. Probably some other stuff too.

	Slackware 10.1 and 10.2 has this; Fedora Core 4 does not.. No
mention of anything Xine except in the Totem docs; then only
fleetingly..




> >I invoked totem from a terminal command line and got the following
> >report that I don't understand.. Running that started the viewing
> >window and ran the avi file just like a mouse click:
> >
> >------------------------------------------------------------------------------
> >
> >(totem:4011): GLib-GObject-WARNING **: gsignal.c:1719: signal
> >** `got-redirect' is invalid for instance `0x9b84e90'
> > Message: don't ** know how to handle EMPTY
> >------------------------------------------------------------------------------
> 
> Is this all it said? The advantage of starting video players this way is 
> that they usually write a lot of helpful info about codecs and such to 
> STDERR. I'm afraid I don't know what this actual message means.

	That's all it said and the display was the aforementioned
fractals, etc.. At least some of the "swirls" had some red in them..
Ugh.. I keep trying things then going back to the totem binary and
noting that ldd reports no missing dependencies... I'll keep hacking
away.. APPRECIATE!!! ( Peter has since told me that his Fedora Core 4
worked fine, but he installed using the "work station" selection of
files rather than my selecting "desk top." There may be some files my
install missed, although the install help's don't mention this..
Seeing the above mention of GLib, may be a clue.. A missing library
that ldd didn't catch, perhaps.? )

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
