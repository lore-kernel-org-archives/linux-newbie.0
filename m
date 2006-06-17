From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cinelerra--Video Editing??
Date: Fri, 16 Jun 2006 17:03:48 -0700
Message-ID: <449346E4.8000702@comarre.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060616181241.GA1110@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
[...]
>>>Any comments appreciated!! BTW I got one suggestion that I didn't
>>>have enough memory, 512mB; so I upfitted to over 1gB, with no obvious
>>>improvement.. The CPU is a Duron 1.3gHz which should be fast enough
>>>according to most accounts.. I don't think it's the HD's because
>>>rendering unedited files are in perfect sync... TIA.
[...]
> 	This is the subject of another quandry: I configure xawtv to
> capture "NTSC" instead of it's default PAL.. That's easy.. It, also,
> defaults to 12fps but I can change that in increments up to 29.970..
> I've found that up to 20fps seems to work OK, over that it doesn't
> like.. I've put this anomoly aside for the time being because
> videotrans changes any captures to 29.970 default as long as I use
> the -m ntsc flag.. Anyway--as mentioned--the captured .avi file and
> it's converted .vob file are both in perfect sync before editing..
> I've got to think more about 48000 and 41000 sound.. That's got to be
> it I think.. Maybe, eh?? My mind is blown... I thought about trying
> 'transcode' instead of 'videotrans' as well as 'tovid', but I don't
> think that's the problem.. 
[...]
> 	You're right and I got to thinking that most Linux video code
> was written before the more than 1gHz CPU's were common.. However,
> that doesn't stop the Cinelerra group to "recommend" using a box with
> 2Gb memory, dual 2.0gHz CPU's and a SATA HD... Of course that might be
> needed when editing multi video tracks in collages, whatever.. It is
> a powerful program, quite professional and is used professionally
> too.. If I could find an easier Linux route for my so called simple
> means.. Both the HD's in that box are UDMA100's but does Linux know
> that?? Another research road.. (When someone recommends something,
> why don't they say why?? No complaint intended considering the
> thousands of people hours to write that code..)

[...]
> 	Can I back track and interject another query? Why can't I
> capture set to 29.970?? What would be the stumbling block; the HD
> writes?? I have that machine dedicated to video only with all the
> daemons I know removed.. Afraid to remove more for fear I'll really
> upset the apple cart.. Maybe a complete kernel rebuild could be in
> order??


OK. I see two possibilities: CPU and hard disk. (In writing this, I 
assume "can't capture" and "doesn't like" means too many dropped frames.)

CPU -- For years, I captured on a 1 GHz Pentium-3 system. Using vcr and 
compressing to mpeg4 (DivX), a 320x44-x29.97 fps capture took about 65% 
of CPU cycles. I tried xawtv briefly, before setting on vcr, but I don't 
recall how its CPU load compared (X overhead from context shifts could 
make it a *lot* worse than the cli-based app I used). But one thing I'd 
recommend your doing is trying to capture at 29.97 fps while watching 
CPU load (as reported by "top") in an xterm. If you see it hitting 90% 
or more a lot, that's the likely source of your dropped frames. (Do be 
sure you use an xterm, not switch over to a vt, since if X overhead is 
the culprit, you need the X display to be active to see the effect, 
which will show as a high "system" load.)

Drives -- Since you are doing raw capture, you're needing to write a LOT 
to the hard disk. You don't report exact numbers, but you do mention a 
76 MB file and typical lengths of 5-10 minutes for the fies you capture 
at 20 fps. If we assume 5 minutes, that's 15 MB/minute to write, and 
moving up to 29.97 fps kicks that up to about 23 MB/minute. That's not 
too much of the drives use DMA -- here, mine write something like 2 
GB/minute -- but if they don't, it could easily cause problems.

Use (as root) "hdparm" to check this, following this example 
(substituting the right /dev/* entry for your setup):

	new-flagg:~# hdparm /dev/hdd

	/dev/hdd:
  	multcount    = 16 (on)
  	IO_support   =  1 (32-bit)
  	unmaskirq    =  1 (on)
  	using_dma    =  1 (on)
  	keepsettings =  0 (off)
  	readonly     =  0 (off)
  	readahead    =  8 (on)
  	geometry     = 15017/255/63, sectors = 241254720, start = 0

The one you're interested in is (duh!) "using_dma". If it is set to 0, 
your drive does NOT currently use DMA. Change that (assuming the drive 
supports DMA; you said yours were UDMA100, so they do) with a command 
like "hdparm /dev/hdd -d 1".

If neither of these hits the target, post a followup with

	the CPU-load numbers from the first test
	output of "free"
	confirmation or correction of my guess that the problem is dropped frames
	what kernel you are using ("uname -a")
	what capture device you are using and what kernel module it uses (I've 
been assuming some bttv device, but there are others around as well).

At this point, it is hard for me to make any additional suggestions 
about the sync problem. When I used vcr, I captured audio at 48000. When 
I switched to mencoder, I had to cut it back to 32000 to get proper 
sync. So it is certainly possible that Cinelerra has some problem with 
integrating 48000 into MP4 ... or it may just be some bad setting in 
Cinelerra that you haven't found yet.

On this score, I'd suggest making a video in which it is easy to see how 
the sync fails ... maybe a talking head reciting poetry or something of 
that sort (I assume you're not set up to record anything truly exact, 
like a metronome ticking). A better characterization of the sync problem 
could provide some guidance.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
