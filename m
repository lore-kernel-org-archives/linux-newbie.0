From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert .avi to .vob/Linux only??
Date: Wed, 22 Mar 2006 09:14:16 -0500
Message-ID: <20060322141416.GA1023@lnx2.kvinet.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <44061B5A.3000309@gelm.net> <20060316195810.GA1027@lnx2.kvinet.com> <4419CF26.10104@gelm.net> <4419F01D.3070306@comarre.com> <20060317184834.GA1264@lnx2.kvinet.com> <441C6007.50000@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <441C6007.50000@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 03-18, Ray Olszewski wrote:
> OK, Hal. I'm still not really up to speed on xawtv, but I've offered a 
> few thoughts below that you might find helpful, along with some (I hope 
> more helpful) info on getting started with mencoder, if you want to try 
> that route.


	Yes I do and will, thanks, but first I tried 'streamer' a CLI
scheme from the xawtv team and was able to select 20 fps with an
occasional dropped frame.. I think one of my biggest problems is not
learning, but un-learning 30 years as a Motion Picture Sound Man;
analogue and vacuum tubes only... <grin> In other words when I hear
"15fps" that means under cranking to me; speeded up motion.. Not the
same as digital of course.. I can't seem to find a "table" or other
tutorials that correlate what to expect "fps" and "resolution"
compared to CPU speed and HD access, if that's the right word.. Both
the HD's are UDMA 100's but are they "running" that fast??




> Hal MacArgle wrote:
> >On 03-16, Ray Olszewski wrote:
> >
> >
> >
> >>Hal -- What resolution are you capturing the tape at? With what I recall 
> >>of your equipment, I'm betting on 320x240. This is way below the 
> >>resolution (640x480 or 720x480) of "real" DVDs and could account for the 
> >>size differences you are seeing. With this spproach, you are not 
> >>deinterlacing the full image you see on videotape, which can account for 
> >>the visible quality degredation (something I also see here, and that I 
> >>don't know what to do about it without a faster CPU that can capture at 
> >>640x480 deinterlaced). Finally, you may be capturing at too low a 
> >>bitrate for the conversion to DVD to do much.
> >
> >
> >	Xawtv reports 384x288 16 bpp 12.000fps whilst recording.. I'm
> >presuming this is automatic as, so far, I haven't found a way to try
> >and adjust it upwards.. The 12fps is strange, again to me, as I
> >thought it had to be 29?, near 30, for NTSC.. I have lots to
> >learn..<g>
> 
> 384x288x25 fps is the PAL standard. 24 fps is the standard for movie 
> film. From these settings, I'm guessing that your config file isn't 
> fully adapting your instance of xawtv to ntsc. NTSC is 29.97 fps 
> (actually sort of double that, but interlaced so there are only 29.97 
> full frames sent) ... some apps treat this as 30, but careful ones use 
> the right value.

	Silent movies were 16-18 fps of course but I'm not sure the
comparision holds much water here with digital in the mix.. I note
that, once the files are convered to vob's, they will be
29.97fps/NTSC. Xawtv allows selecting various fps's but not
resolution, which stays at 384x288 or 320x240.. Maybe that's a VHS
"standard?"




> If you are really capturing at 12 fps, this should lead to awful, 
> stilted motion in your videos. It's about the rate that most cartoons 
> (like the Simpsons) animate at.

	All I've done, so far, look OK even on a 27" TV, except when
there's a fast pan involved and the TV scan lines predominate.. More
learning...




> >>I don't capture here with xawtv; I use mencoder (I didn't even remember 
> >>that xawtv had a capture mode, and I don't see one mentioned in the man 
> >>page I have for it). But if you want to explore possibilities on that 
> >>end, please post again with the details of your xawtv capture settings, 
> >>including what "top" tells you about CPU use during a capture (so we get 
> >>an idea of you have the power to run at higher-quality settings in real 
> >>time).
> >
> >
> >	I didn't know that mencoder would grab streaming video and
> >when I man mencoder I get mplayer's man text.. Most of the acronyms
> >are strange to me too.. I've purchased two books on multimedia, sight
> >unseen, and they are both "click this, click that," Fooey.. <grin>
> 
> mencoder/mplayer's man page is almost useless. Searching for information 
> via Google, then experimenting a bit to tweak the recipes you find, is 
> more productive.
> 
> Here is the perl script I use to run mencoder in VCR-capture mode. You 
> can do this from the command line, but I prefer (a) the way I set up the 
> arguments and (b) the easier readability of a long string of options set 
> up in the incremental fashion I use. Your taste many vary, of course.

	I will try mencoder when I get some time.. Thanks again..

<snipped>




> Reported load is meaningless in this context. For CPU use, you want to 
> look at the combination of user + system, not just SYS (most cpu use 
> will be in user, not system, when capturing). Using a 1.7 GHz Celeron 
> here, and capturing using settings similar to those above (but capturing 
> from broadcast TV, not tape), I usually see about 30-35& combined CPU 
> load. This is high enough that I can't go up to 640x480 capture, which 
> would roughly quadrouple the CPU load so lead to significant frame-drop 
> losses.
> 
> One thought ... is it possible that you are capruring without encoding? 
> That would keep CPU use low, but it would create immense files ... on 
> the order of 2 MB/sec for the capture settings you report (320 x 240 x 
> 16bits x 12fps).

	Xawtv does capture sans encoding but Streamer does.. The avi
files of the former are at least 3-5 times larger.. I don't know, yet,
what Videotrans or Tovid does with the Streamer files yet.. Either
are viewable interleaved picture and sound on the computer...




> >	Xawtv doesn't have many actual settings except I have to
> >change the PAL default to NTSC, of course and enter the input jack in
> >the rc file.. I use both composite1 or SVideo... Merely invoking
> >xawtv in an xterm and right clicking on the blue video window, I can
> >click on capture /or/ use the shortcut, thence select AVI, thence
> >enter a single filename & click on the record bar, a toggle.. The
> >picture disappears during recording; a small inconvenience so far
> >using the sound as a reference, and I get a running red text report
> >of what's going on.. So far I don't know what most of them are.. Ugh.
> >
> 
> Yeah, now that you write all of this, I do remember trying to use xawtv 
> in capture mode, way back when (4 years ago or thereabouts). I found it 
> unsatisfactory, but I really do not recall why ... codec problems, 
> maybe? For awhile I used a cl program called "vcr" until mencoder 
> settled down to the point where I decided it was better and switched to it.
> 
> You could also look at MythTV. It's more "TiVo-like" in its style, by 
> which I mean best suited for timeshifting TV watching. But its 
> supporters have made it usable for many other things too, and you may 
> find its style of onscreen interaction and community support more to 
> your liking than either xawtv or mencoder.

	For the present I only need a storage media for backing up
VHS tapes that'll view on a stand alone DVD player.. We're getting
there with plenty of help, eh?? Main Actor is another one for, what,
$199 a pop?? It takes time...




> Of course, this all just considers the capture half of your problem. I 
> don't burn DVDs here (except for iso9660 data DVDs), so I can't offer 
> any advice on that part.

	For now, capturing is the weak link.. Preparing and burning
the DVD covered nicely by Chucks script as well as using the very
much supported Tovid route... Before bttw, when I was using an ATI
All In Wonder, that was, and continues to be, the big problem with
those cards too according to the Gatos list server.. I bought two
books on Multi-Media, neither covering any of this.. :^(... <grin>

	Appreciate!!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
