From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cinelerra--Video Editing??
Date: Thu, 15 Jun 2006 14:53:58 -0700
Message-ID: <4491D6F6.9030901@comarre.com>
References: <20060615183404.GA1711@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060615183404.GA1711@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> I have Cinelerra working and am trying simple editing like removing
> extraneous head and tail frames from .vob files that were captured
> from VHS or Beta tape with xawtv and converted from it's default .avi
> to .vob using videotrans because Cinelerra will not work with .avi
> files..
> 
> After editing I render the project to a mpeg4 file that views with
> the audio out of sync.. I tried both ways: a single .vob file with
> muxed audio or separate video, m2v and audio, mp2 files.. If I
> render either way without editing, the sync is fine...
> 
> I suspect this may be "normal" but can't seem to find any clues on
> the Web... Most of the forums I've checked seem to mostly talk about
> getting the program running in the first place.. No easy task it
> seems.. I didn't "sail" through it either. <grin>
> 
> Any comments appreciated!! BTW I got one suggestion that I didn't
> have enough memory, 512mB; so I upfitted to over 1gB, with no obvious
> improvement.. The CPU is a Duron 1.3gHz which should be fast enough
> according to most accounts.. I don't think it's the HD's because
> rendering unedited files are in perfect sync... TIA.
> 

Just a couple of questions, Hal. If I follow you right, the sync is 
still good after the videotrans step, but fails only after you use 
Cinelerra to delete sections of the video (and corresponding audio). 
Assuming that:

1. What does the out-of-sync look like? Does it start out sync'd and 
drift away gradually and consistently over the length of the edited 
video; does it jump in spurts around the deletes (or elsewhere); or is 
it consistently off for the length of the video? Or something else I 
haven't thought of?

2. Am I right in assuming that you are capturing at standard NTSC speed, 
29.97 frames per second? And maintaining that framerate when you do the 
videotrans transcode? Assuming a yes ... when do the actual Cinelerra 
editing,  might you be messing this up somehow (moving from 29.97 to 30 
fps, or even to whatever the framerate is for PAL ... 24 fps maybe?)?

Sync problems with captured video aren't rare. Using mencoder here, I 
still run into occasional cases where TV shows lose sync during the 
commercial breaks, for example. I also run into sync problems, 
presumably in the lame mp3 encoder, when I try to change the sampling 
rate. And back when I used vcr, it had a drift problem that made sync 
noticeably bad after about 2 hours or continuous recording. That said, 
though, I never see a sync problem when editing; they always occur at 
capture.

Unfortunately (for the purpose at hand), video editing is one of the few 
places I find I prefer to use Windows tools, specifically Virtual Dub, 
so I can't make suggestions that are specific to Cinelerra.

The suggestion about memory was almost surely a red herring; even 
real-time video capture isn't that demanding of memory. (I do my main 
capturing on a 1.7 GHz Celeron with 256 MB RAM and UDMA100 hard disks.) 
And since this is not real-time processing, CPU speed should also be 
irrelevant.

BTW, is the audio file type really "mp2" or was that a typo?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
