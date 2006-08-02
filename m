From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: tape transfer with mencoder (was: Re: Cinelerra--Video Editing??)
Date: Wed, 2 Aug 2006 14:01:34 -0400
Message-ID: <20060802180134.GA1605@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com> <4494F3BD.5090102@comarre.com> <20060801150244.GA1134@lnx2.kvinet.com> <44CF960B.4060009@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44CF960B.4060009@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 08-01, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >On 06-17, Ray Olszewski wrote:
> >
> >>Since you are using mplayer anyway ... have you tried using mencoder for 
> >>the captures? Try a command something like this (assuming you're 
> >>capturing from tapes via NTSC video and sound-card audio):
> >>
> >>	mencoder tv:// -tv driver=v4l:device=/dev/video0:input=1: \
> >>		immediatemode=1:forceaudio:adevice=/dev/dsp:norm=NTSC \
> >>		:audiorate=32000:width=320:height=240:fps=29.97 \
> >>		-oac copy    -oac mp3lame -lameopts preset=medium \
> >>		-ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
> >>		-ofps 29.97 -endpos $whichtime -o $filename
> >>
> >>replacing $whichtime (number of seconds to record) and $filename with 
> >>appropriate values. (Your bttv card may require input=3, but you'll know 
> >>that from using it with xawtv and streamer.)
> >
> >
> >	This should be directed to Ray I guess but was wondering what
> >speed CPU he uses with the above to get 29.97fps without pauses and
> >if the HD is UDMA100?? (NTSC tapes, sound-card line in audio and bttv
> >BT878 capture card..
> >
> 
> I do video capture on two different machines. I've only done tape 
> transfer on the higher quality of the two, which is also my main 
> fileserver. Its specs are:
> 
> 	Athlon64 3000
> 	1 GB DDR 400 (3200) RAM
> 	main HD is a Seagate 300 GB drive, I think UDMA 100 (maybe 133),
> 		with (of course) DMA enabled
> 	kernel 2.4.27, compiled for Athlon, Debian-Sid install
> 
> And all the stuff you put in parentheses represents correct assumptions 
> about my setup:
> 
> 	Soundblaster sound card (es1371 driver)
> 	AverMedia TV card (bttv driver), with jumper cable to sound card
> 	several different VHS-NTSC VCRs

	OK, thanks Ray.. You're way update of my 1.3gHz Duron and 1gB
PC133 SDRAM.. Trying all capture schemes that I can I've deduced that
I have to be content with a max of 20fps and 384x288.. No matter CLI
or X11 run.. I'll try to fit an Athlon supported by the MB. Specs say
2.6 IIRC, or live with what I have.. <grin>

	Meanwhile a real head scratcher: Running SpinRite on both
HD's, Duron machine, I get 2600kBs sustained transfer on one HD and
8800kBs on the other, both UDMA100's with identical BIOS settings..
Checking on a much older machine with an UDMA66 HD; I get 4700kBs??
Back to the drawing board on that one, eh? I'm sure I used the "slow"
machine and that may be my biggest problem.. I should keep better
notes..


> Offhand, I don't recall what CPU use I see when transferring tapes (I 
> haven't done any recently). Recording off the air (analog cable, 
> actually), it's under 10%.

	CPU usage has been 10% or less here so I wonder if a CPU
speed up would really help??


> For off-the-air capture, my other machine is a Celeron 1.7 GHz, with 256 
> MB RAM, some UDMA100 hard disk, and the same sound and TV cards. Taping 
> off the air (digital cable this time), it only runs at about 20% CPU use 
> .. but tapes are noisier than my cable feed, so they place more demand 
> on the codec, so I don't know if this machine would do tapes well.
> 
> Note, though, that I only capture at 320x240. I've tried 640x480 but run 
> into problems there, for reasons I don't really understand (not CPU 
> limits, at least not on the Athlon ... maybe problems with deinterlacing?).

	All capture trys here at full DVD size of 720x480, 29.97 NG
	of course..

	One query about mencoder? Whilst recording I get two reports;
"0min" and "0mb".. Should they not report what's recording? Needless
to say I've not gotten mencoder to work yet for capturing.. In other
words when recording shouldn't both of them increment?  Thanks..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
