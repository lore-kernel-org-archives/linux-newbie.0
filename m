From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: tape transfer with mencoder
Date: Sat, 5 Aug 2006 14:54:36 -0400
Message-ID: <20060805185436.GA1411@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com> <4494F3BD.5090102@comarre.com> <20060801150244.GA1134@lnx2.kvinet.com> <44CF960B.4060009@comarre.com> <20060802180134.GA1605@lnx2.kvinet.com> <44D114D7.9040903@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44D114D7.9040903@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 08-02, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >On 08-01, Ray Olszewski wrote:
<snipped>
> >>
> >>I do video capture on two different machines. I've only done tape 
> >>transfer on the higher quality of the two, which is also my main 
> >>fileserver. Its specs are:
> >>
> >>	Athlon64 3000
> >>	1 GB DDR 400 (3200) RAM
> >>	main HD is a Seagate 300 GB drive, I think UDMA 100 (maybe 133),
> >>		with (of course) DMA enabled
> >>	kernel 2.4.27, compiled for Athlon, Debian-Sid install
> >>
> >>And all the stuff you put in parentheses represents correct assumptions 
> >>about my setup:
> >>
> >>	Soundblaster sound card (es1371 driver)
> >>	AverMedia TV card (bttv driver), with jumper cable to sound card
> >>	several different VHS-NTSC VCRs
> >
> >
> >	OK, thanks Ray.. You're way update of my 1.3gHz Duron and 1gB
> >PC133 SDRAM.. Trying all capture schemes that I can I've deduced that
> >I have to be content with a max of 20fps and 384x288.. No matter CLI
> >or X11 run.. I'll try to fit an Athlon supported by the MB. Specs say
> >2.6 IIRC, or live with what I have.. <grin>
> 
> Well ... yes and no. You had specifically asked about what I used for 
> capturing from tapes. Prior to getting the Athlon (just this year), I 
> for several years used the app "vcr" on a 1 GHz Pentium-3 machine with 
> 768 MB or 1 GB (I forget) of P133 RAM. vcr used different codecs from 
> mencoder, but it used more CPU cycles whenever I tried the two on the 
> same equipment ... and it handled off-the-air captures just fine (used 
> about 35% of CPU cycles on the P3).

	I am now using mencoder, raw, 29.97 320x240 with the
recording smooth but the quality not quite as good as the original
viewed with Xawtv.. Also confusing that the view quality different
between mplayer (svgalib) and mplayer (X11) with Xine (X11) the best
of all.. Record mencoder--play xine.. I'm really confused now.. Got to
be the video card entering into the mix somewhere.. Recording to the
same HD partition as the programs; top reports a toggle'd idle of 75%
to 95%.. Recording to another HD I get a solid id of +- 95% all the
time.. I've decided that "id" is the best indicator, at least for me,
keeping watch on what the CPU is doing..



> I assume we are talking about the same thing -- *total* CPU use as 
> reported by "top" up at the top (that is, 100% - "idle" percent). 
> **NOT** process-specific CPU use, or just "user" use (actually, recent 
> versions of top seem to have changed the labels to be less readable, so 
> for them I mean id = idle, us = user). Especially when you have X 
> running, context switching can be a big part of CPU load, and 
> proces-specific CPU use doesn't pick this up.
> 
> If we are talking about the same thing, then I'm impressed at the 
> efficiency of your encoding system. And then you're right to doubt that 
> a faster CPU would help. In that case, I *think* the next thing I'd 
> check is interrupts ... when doing video, I always make sure that I'm 
> not IRQ sharing anything involved in the capture process ... the bttv 
> card, the sound card, or (unlikely) the hrad disk. In my case, the NIC 
> too, since I'm accessing the capture host remotely, over ssh.

	I'm not using the NIC and all work from /root.. Only IRQ's
involved would be the soundcard, I believe.. I've got to study more
about PCI assigned IRQ's.. It never ends, eh?

> 
> Based on my experience, I'd doubt that a 1.3 GHz CPU is up to doing 
> real-time capture at that size. My 1 GHz P-3 sure wasn't ... it dropped 
> frames if I tried 640x480x29.97. If you're doing this and seeing 10% 
> total CPU use, either something is very odd or you know some trick I don't.

	No tricks and the more I mess, the less I know.. <grin> I
wish the authors would list the defaults better as there are a
bazillion parameters.. I expect that everything enters into the loop
from time to time and I'm lucky to get anything working...



> I'm not *quite* sure what you are asking. I just checked, though, and my 
> mencoder (while doing a short off-the-air test capture) displays to the 
> screen like this:
> 
> ++++++++++++++++++++++
> Pos:  38.2s   1144f ( 0%)  30fps Trem:   0min   0mb  A-V:0.000 [819:128]]
> ++++++++++++++++++++++++
> 
> The s (seconds) and f (frames) values increment steadily, at the rates 
> you'd expect, but not the others (min and mb). Then at the end, I get 
> this output:
> 
> ++++++++++++++++++++++
> Flushing video frames
> 
> 
> CBR audio: 16000 bytes/sec, 576 bytes/block
> 
> Writing AVI index...
> Fixing AVI header...
> ODML: Aspect information not (yet?) available or unspecified, not 
> writing vprp header.
> 
> Video stream:  802.869 kbit/s  (100358 bps)  size: 12045047 bytes 
> 120.020 secs  3595 frames
> 
> Audio stream:  128.000 kbit/s  (16000 bps)  size: 1919808 bytes  119.988 
> secs
>   MJP: returning!
> ++++++++++++++++++++++++++++++

	You answered the query:  0min 0mb and A/V doesn't change no
matter what.. The ones on the left do, but they also change even if
you're not actually recording correctly.. The Pos: report helpful..
With zero input there's no real indication until you play the file..



> Hope this helps, Hal. I'd also recommend that you try the exact command 
> I provided above and see what that does for you, if you're having 
> trouble with mencoder itself. Or, even better, try this one (it will 
> record off-the-air, if your vidcap card is receiving TV signals and it 
> tuned to a valid channel) to see if the problem is specific to use of 
> the VCR:
> 
> mencoder  tv:// -tv driver=v4l:device=/dev/video0:input=0:\
> immediatemode=1:forceaudio:adevice=/dev/dsp:\
> norm=NTSC:audiorate=32000:width=320:height=240:fps=29.97 \
> -oac copy    -oac mp3lame -lameopts preset=medium \
> -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
> -ofps 29.97 -endpos $whichtime -o $filename

	Immense help Ray; getting deeper and deeper.. <grin> I'm not
locked to PAL and really can't be in the US.. That 384x288 is default
using Xawtv and can't be changed.. It was good to find that input=0
means "Composite1" as used by many other programs.. My BTTV card
doesn't have a tuner; it's composite and SVideo only..

> 
> Change the 320 and 240 to 384 and 288 (the PAL numbers) of you're on a 
> PAL setup, but otherwise leave it as is, at least for a test, and see 
> what you see in mplayer or xine or whatever you use to watch recordings.

	I check things with mplayer (svgalib, CLI) and mplayer
(X.org-X11) or Xine (X-11).. All three different and, to confuse
things more, Xine plays back Xaw AVI's with blue flesh tones.. The
"red" adjuster is stuck off.. Plays mencorders OK. I've documented
what I have to do, so no real problem.. It's not getting easier, eh??

	Bottom line; I'll be using mencorder as the "standard" now
and see what other mischief I can get into... Appreciate!!!! CLI is
so much better, using vc's to watch and adjust other things, without
getting into too much trouble.. <grin>

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
