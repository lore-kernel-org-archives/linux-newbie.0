From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Cinelerra--Video Editing??
Date: Mon, 19 Jun 2006 15:09:15 -0400
Message-ID: <20060619190915.GA1249@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com> <4494F3BD.5090102@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4494F3BD.5090102@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 06-17, Ray Olszewski wrote:
> Wrong number; you want to look at total CPU use, not CPU use assigned to 
> the program explicitly by the kernel. (You say something about this 
> later.) Overhead use can be caused by a program but assigned to another 
> program ... with xawtv, X itself is the prime candidate ... or to the 
> kernel ... so it shows up as system use, not user use. For A/V stuff 
> especially, the only good way to figure things out is by comparing total 
> CPU use, as reported by top, with the relevant app running and not running.
> 
> But I think the CPU numbers you report look okay, if I understand them 
> right. The versin of top I use reports CPU use this way:
> 
> 	Cpu(s):   0.0% user,   0.0% system,   0.0% nice, 100.0% idle

	OK I have this now. Later on when rendering files I note the
usage around 86%, mp2enc, but the sync problem is now moot, at least
for shorter files. More on this later.. I'll start doing more capture
testing, with the editing problem mostly out of the way, at least
with shorter files..




> Ok. 404 MB/minute is about right for completely uncompressed capture, 
> figuring 320w x 240h x 24-bit-color x 29.97fps x 60 seconds. And that's 
> high enough that your disk drives might not be able to keep up with it. 
> Check (time a large cp that involves really moving the files, not just 
> changing directorry entries) to be sure.
> 
> The streamer files are compressed somehow ... maybe to mpeg2 (the size 
> seems about right for that)? Or maybe high-quality mpeg4 (here I capture 
> at about 10 MB/minute, but that's via an explicit setting in mencoder). 
> In any case, streamer-size files shouldn't overload disk I/O.
> 
> Since you are using mplayer anyway ... have you tried using mencoder for 
> the captures? Try a command something like this (assuming you're 
> capturing from tapes via NTSC video and sound-card audio):
> 
> 	mencoder tv:// -tv driver=v4l:device=/dev/video0:input=1: \
> 		immediatemode=1:forceaudio:adevice=/dev/dsp:norm=NTSC \
> 		:audiorate=32000:width=320:height=240:fps=29.97 \
> 		-oac copy    -oac mp3lame -lameopts preset=medium \
> 		-ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
> 		-ofps 29.97 -endpos $whichtime -o $filename
> 
> replacing $whichtime (number of seconds to record) and $filename with 
> appropriate values. (Your bttv card may require input=3, but you'll know 
> that from using it with xawtv and streamer.)
> 

	It seems almost every program front ends for mplayer and
mencoder.. I tried using 'tovid' rather than 'movie-to-dvd' converting
the files from .avi to something that Cinelerra could work with..
Either .vob, as I've been using or .mpg created by Tovid.. The
.mpg files are larger but end up with 48000/2ch, 720x540, 32bpp and
29.970.. AND, when edited with Cinelerra I don't lose sync, rendering
them to MPeg4 as a QuickTime for Linux file as recommended by
Cinelerra...(.mov) Your 32000 audiorate requirement for sync puzzles
me especially since your final viewing will be 44100 I suspect.. The
32000, 44100 and 48000 "standards" are confusing; not the sampling
rate per se but why the various programs fiddle with it so much..
32000 is plenty high in the frequency response; most couldn't tell
the difference.. Maybe their animals though, eh?? Why the 48000
standard; who can hear 24kHz?? Overkill??

	Apparently there's a ton of different parameters I must learn
with video so I'll be at it for a long, long time. <grin>

	Glued to "top" I note that swap is never used with anything I
try, so memory seems plenty.. Since I bought it, I'll leave it be
rather than changing back to 512K..




> 
> Someone else already pointed out that you need a kernel that supports 
> high-memory to go above 900 MB or so.

	Yes, Christian wrote and I accessed the URL you mentioned
below that has the complete information.. I don't believe I have to
re-compile the kernel though; maybe later..




> Your concern about RAM used comes from looking at the wrong line. You 
> want to watch the second line, which reports 32 MB used and 879 MB free.
> 
> The difference is in cache and buffer space. The Linux kernel (most any 
> modern kernel, I think) leaves recently-used programs and files in 
> memory, as long as the memory isn't needed for something else. As a 
> consequence, over time a Linux host will fill up any imaginable amount 
> of RAM, using the measure on the first line ... video capture is 
> particularly good at this.

	I'll pay more attention in the future and might learn more..
The cache figure explains much of what goes on with this business..
Amazing stuff..



> The Gentoo FAQ has a particularly good discussion of all this stuff. 
> Read it at
> 
> 	http://gentoo-wiki.com/FAQ_Linux_Memory_Management

	I was impressed with their site so ordered a live copy of
their latest release.. Peter is using it and says it's good but I'm
still a Slackware person..

	Bottom line; I'm in business with my original project until I
can find some other mischief to get into.. Your tutoring has surely
speeded up and flattened my learning curve considerably.. Appreciate!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
