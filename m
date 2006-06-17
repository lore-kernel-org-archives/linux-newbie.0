From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Cinelerra--Video Editing??
Date: Sat, 17 Jun 2006 15:41:34 -0400
Message-ID: <20060617194133.GA1262@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <449346E4.8000702@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 06-16, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >	Can I back track and interject another query? Why can't I
> >capture set to 29.970?? What would be the stumbling block; the HD
> >writes?? I have that machine dedicated to video only with all the
> >daemons I know removed.. Afraid to remove more for fear I'll really
> >upset the apple cart.. Maybe a complete kernel rebuild could be in
> >order??
> 
> 
> OK. I see two possibilities: CPU and hard disk. (In writing this, I 
> assume "can't capture" and "doesn't like" means too many dropped frames.)

	Wrong phrasing as I now find it does capture at 29.970 both
using xawtv or streamer, CLI, that reports A/V: as no more than
0.001 during playback using mplayer, but when the file stops it jumps
up to 0.015 or so at the very end of a run.. Keeping better records I
see that the xawtv capture files are 403mB/min compared to the
<30mB/min using streamer; same other parameters, size, rate, etc..
Top reports 6-7% cpu usage with xawtv or 37-39% with streamer..
HDParm reports DMA (on).. On playing back I note all the xawtv
captures are reported:  "Badly interleaved file -- switching to -ni
mode," by mplayer.. That line is not reported playing back streamer
grabbed files.. I doubt if this has much to do with the original
posted problem though.. Just guessing and reading more: Wonder if a
bad interleave; meaning a bad multiplex??, could be a problem with
Cinelerra but not mplayers' viewing?? 




> CPU -- For years, I captured on a 1 GHz Pentium-3 system. Using vcr and 
> compressing to mpeg4 (DivX), a 320x44-x29.97 fps capture took about 65% 
> of CPU cycles. I tried xawtv briefly, before setting on vcr, but I don't 
> recall how its CPU load compared (X overhead from context shifts could 
> make it a *lot* worse than the cli-based app I used). But one thing I'd 
> recommend your doing is trying to capture at 29.97 fps while watching 
> CPU load (as reported by "top") in an xterm. If you see it hitting 90% 
> or more a lot, that's the likely source of your dropped frames. (Do be 
> sure you use an xterm, not switch over to a vt, since if X overhead is 
> the culprit, you need the X display to be active to see the effect, 
> which will show as a high "system" load.)
> 
> Drives -- Since you are doing raw capture, you're needing to write a LOT 
> to the hard disk. You don't report exact numbers, but you do mention a 
> 76 MB file and typical lengths of 5-10 minutes for the fies you capture 
> at 20 fps. If we assume 5 minutes, that's 15 MB/minute to write, and 
> moving up to 29.97 fps kicks that up to about 23 MB/minute. That's not 
> too much of the drives use DMA -- here, mine write something like 2 
> GB/minute -- but if they don't, it could easily cause problems.
> 
> Use (as root) "hdparm" to check this, following this example 
> (substituting the right /dev/* entry for your setup):
> 
> 	new-flagg:~# hdparm /dev/hdd
> 
> 	/dev/hdd:
>  	multcount    = 16 (on)
>  	IO_support   =  1 (32-bit)
>  	unmaskirq    =  1 (on)
>  	using_dma    =  1 (on)
>  	keepsettings =  0 (off)
>  	readonly     =  0 (off)
>  	readahead    =  8 (on)
>  	geometry     = 15017/255/63, sectors = 241254720, start = 0

	Both drives on my "video" machine same as above except the
geometry of course and multcount is (off).. Can't seem to find what
that really means so I tried one run with it set and didn't notice any
obvious difference.. It seems to be shorthand for Multiple Sector
Count" but what does that mean?? I just noticed that my machines
readahead is 256 (on).. Does that mean anything??



> 
> The one you're interested in is (duh!) "using_dma". If it is set to 0, 
> your drive does NOT currently use DMA. Change that (assuming the drive 
> supports DMA; you said yours were UDMA100, so they do) with a command 
> like "hdparm /dev/hdd -d 1".
> 
> If neither of these hits the target, post a followup with
> 
> 	the CPU-load numbers from the first test

	The above is the cpu% of the program.. The system cpu% is 100
during idle and around 60-70 during a recording.. I wish I knew what
so much of this means in real life..




> 	output of "free"

	I didn't check that except to note that the 1.0gB swap file
was not used at all.. One puzzler though is that total memory is
listed as 902616, when BIOS reports the actual 1.25gB of fitted
memory.. Free says used=880976 and free=21640 idling?? That doesn't
look right to me.. Herewith anyway:
------------------------------------------------------------------------------
             total       used       free     shared    buffers     cached
Mem:        902616     880976      21640          0       7096     841912
-/+ buffers/cache:      31968     870648
Swap:      1004052          0    1004052
------------------------------------------------------------------------------
> 	confirmation or correction of my guess that the problem is dropped 
> 	frames
> 	what kernel you are using ("uname -a")

	Slackware 10.2 with it's "test26.s" kernel; 2.6.13...
Normally 2.4.31 is installed but Cinelerra wouldn't compile using
it.. BTW I went thru all this with FC4 and it's RPM package and was
in worse trouble than now.. Such fun?? Also, tried FC5 and Cinelerra
didn't work at all with it, IIRC..




> 	what capture device you are using and what kernel module it
> 	uses (I've been assuming some bttv device, but there are
> 	others around as well).

	I, originally, had an ATI AllInWonder but it's not as well
supported as BrookTree; so I got a BT878 card and am using it.. Am
almost positive I didn't do any Linux capturing with the ATI card,
just viewing.. Some of the files were captured using the program that
came with the ATI card under Win98FE, but I can't remember which
now.. I should start from the beginning again, I think...




> At this point, it is hard for me to make any additional suggestions 
> about the sync problem. When I used vcr, I captured audio at 48000. When 
> I switched to mencoder, I had to cut it back to 32000 to get proper 
> sync. So it is certainly possible that Cinelerra has some problem with 
> integrating 48000 into MP4 ... or it may just be some bad setting in 
> Cinelerra that you haven't found yet.

	You have offered yeoman service and I appreciate that.. As
you know, so much of the features are un-documented expecially the
error reports.. Not complaining, the developers have their hands full
especially with streaming video that's a subject all it's own..
<grin> I shouldn't expect to get it mastered in a few hours..




> On this score, I'd suggest making a video in which it is easy to see how 
> the sync fails ... maybe a talking head reciting poetry or something of 
> that sort (I assume you're not set up to record anything truly exact, 
> like a metronome ticking). A better characterization of the sync problem 
> could provide some guidance.

	That's a good idea and I should really practice my engineer
training better and standardise on one route and, especially, pin
down one problem before I aggrivate it with another.. I've got to
sort out what MPlayers' report really means: Typically for a 3 minute
recording it will report: A: 179.6   V: 180.0   A/V: -0.347.. That,
to me, means the two recording lengths are different but I watch the
A/V dynamically during recording and it never deviates away from
0.000 until the playback stops.. Some times the end is 0.000 but
never predictable, that I can see..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
