From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cinelerra--Video Editing??
Date: Sat, 17 Jun 2006 23:33:33 -0700
Message-ID: <4494F3BD.5090102@comarre.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060617194133.GA1262@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> On 06-16, Ray Olszewski wrote:
> 
>>Hal MacArgle wrote:
>>
>>>	Can I back track and interject another query? Why can't I
>>>capture set to 29.970?? What would be the stumbling block; the HD
>>>writes?? I have that machine dedicated to video only with all the
>>>daemons I know removed.. Afraid to remove more for fear I'll really
>>>upset the apple cart.. Maybe a complete kernel rebuild could be in
>>>order??
>>
>>
>>OK. I see two possibilities: CPU and hard disk. (In writing this, I 
>>assume "can't capture" and "doesn't like" means too many dropped frames.)
> 
> 
> 	Wrong phrasing as I now find it does capture at 29.970 both
> using xawtv or streamer, CLI, that reports A/V: as no more than
> 0.001 during playback using mplayer, but when the file stops it jumps
> up to 0.015 or so at the very end of a run.. Keeping better records I
> see that the xawtv capture files are 403mB/min compared to the
> <30mB/min using streamer; same other parameters, size, rate, etc..
> Top reports 6-7% cpu usage with xawtv or 37-39% with streamer..

Wrong number; you want to look at total CPU use, not CPU use assigned to 
the program explicitly by the kernel. (You say something about this 
later.) Overhead use can be caused by a program but assigned to another 
program ... with xawtv, X itself is the prime candidate ... or to the 
kernel ... so it shows up as system use, not user use. For A/V stuff 
especially, the only good way to figure things out is by comparing total 
CPU use, as reported by top, with the relevant app running and not running.

But I think the CPU numbers you report look okay, if I understand them 
right. The versin of top I use reports CPU use this way:

	Cpu(s):   0.0% user,   0.0% system,   0.0% nice, 100.0% idle

If you are saying that the last number is still in the 60-70% range when 
capturing, than CPU load is not the problem.

> HDParm reports DMA (on).. On playing back I note all the xawtv
> captures are reported:  "Badly interleaved file -- switching to -ni
> mode," by mplayer.. That line is not reported playing back streamer
> grabbed files.. I doubt if this has much to do with the original
> posted problem though.. Just guessing and reading more: Wonder if a
> bad interleave; meaning a bad multiplex??, could be a problem with
> Cinelerra but not mplayers' viewing?? 

Ok. 404 MB/minute is about right for completely uncompressed capture, 
figuring 320w x 240h x 24-bit-color x 29.97fps x 60 seconds. And that's 
high enough that your disk drives might not be able to keep up with it. 
Check (time a large cp that involves really moving the files, not just 
changing directorry entries) to be sure.

The streamer files are compressed somehow ... maybe to mpeg2 (the size 
seems about right for that)? Or maybe high-quality mpeg4 (here I capture 
at about 10 MB/minute, but that's via an explicit setting in mencoder). 
In any case, streamer-size files shouldn't overload disk I/O.

Since you are using mplayer anyway ... have you tried using mencoder for 
the captures? Try a command something like this (assuming you're 
capturing from tapes via NTSC video and sound-card audio):

	mencoder tv:// -tv driver=v4l:device=/dev/video0:input=1: \
		immediatemode=1:forceaudio:adevice=/dev/dsp:norm=NTSC \
		:audiorate=32000:width=320:height=240:fps=29.97 \
		-oac copy    -oac mp3lame -lameopts preset=medium \
		-ovc lavc -lavcopts vcodec=mpeg4:vbitrate=9 \
		-ofps 29.97 -endpos $whichtime -o $filename

replacing $whichtime (number of seconds to record) and $filename with 
appropriate values. (Your bttv card may require input=3, but you'll know 
that from using it with xawtv and streamer.)

[...]
>>	output of "free"
> 
> 
> 	I didn't check that except to note that the 1.0gB swap file
> was not used at all.. One puzzler though is that total memory is
> listed as 902616, when BIOS reports the actual 1.25gB of fitted
> memory.. Free says used=880976 and free=21640 idling?? That doesn't
> look right to me.. Herewith anyway:
> ------------------------------------------------------------------------------
>              total       used       free     shared    buffers     cached
> Mem:        902616     880976      21640          0       7096     841912
> -/+ buffers/cache:      31968     870648
> Swap:      1004052          0    1004052
> ------------------------------------------------------------------------------

Someone else already pointed out that you need a kernel that supports 
high-memory to go above 900 MB or so.

Your concern about RAM used comes from looking at the wrong line. You 
want to watch the second line, which reports 32 MB used and 879 MB free.

The difference is in cache and buffer space. The Linux kernel (most any 
modern kernel, I think) leaves recently-used programs and files in 
memory, as long as the memory isn't needed for something else. As a 
consequence, over time a Linux host will fill up any imaginable amount 
of RAM, using the measure on the first line ... video capture is 
particularly good at this.

The Gentoo FAQ has a particularly good discussion of all this stuff. 
Read it at

	http://gentoo-wiki.com/FAQ_Linux_Memory_Management

[...]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
