From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Cinelerra--Video Editing??
Date: Fri, 16 Jun 2006 14:12:41 -0400
Message-ID: <20060616181241.GA1110@lnx2.kvinet.com>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4491D6F6.9030901@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org


On 06-15, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >I have Cinelerra working and am trying simple editing like removing
> >extraneous head and tail frames from .vob files that were captured
> >from VHS or Beta tape with xawtv and converted from it's default .avi
> >to .vob using videotrans because Cinelerra will not work with .avi
> >files..
> >
> >After editing I render the project to a mpeg4 file that views with
> >the audio out of sync.. I tried both ways: a single .vob file with
> >muxed audio or separate video, m2v and audio, mp2 files.. If I
> >render either way without editing, the sync is fine...
> >
> >I suspect this may be "normal" but can't seem to find any clues on
> >the Web... Most of the forums I've checked seem to mostly talk about
> >getting the program running in the first place.. No easy task it
> >seems.. I didn't "sail" through it either. <grin>
> >
> >Any comments appreciated!! BTW I got one suggestion that I didn't
> >have enough memory, 512mB; so I upfitted to over 1gB, with no obvious
> >improvement.. The CPU is a Duron 1.3gHz which should be fast enough
> >according to most accounts.. I don't think it's the HD's because
> >rendering unedited files are in perfect sync... TIA.
> >
> 
> Just a couple of questions, Hal. If I follow you right, the sync is 
> still good after the videotrans step, but fails only after you use 
> Cinelerra to delete sections of the video (and corresponding audio). 

	Yes and bear with me as I detail: videotrans -m ntsc -M
anyfile.avi <enter> creates; anyfile.vob. The original .avi file is
76mB and the .vob file is 7.6mB with no discernable quality diff that
I could see viewing with either mplayer or xine.. MPlayer reports the
.vob file as Mpeg12, 29.970fps with 48000 2 channel audio, even
though the original audio was either mono or stereo.. Obviously the
avi file is raw and the vob compressed but in both cases perfectly in
sync..

	If I invoke: videotrans -m ntsc anyfile.avi, it creates two
files: anyfile.m2v and anyfile.mp2.. MPlayer reports the video as
MPEG2 and the audio as, 48000 2 channel. (Am OK so far because I read
that MPEG1 is muxed audio and MPEG2 is separate video/audio..)
(Loading these separate files into Cinelerra views in sync, before
editing.  Have I checked after editing? Not sure, but I've got to look
into that..)

	Cinelerra editing to remove the extraneous head and tail
frames with the picture and sound "locked" together on the time line,
I render to a "quicktime for Linux," as recommended, muxed .mov file,
that views out of sync and MPlayer reports it as a Mpeg4 file, as
expected.. BUT, I note the report as video MP4 and audio 41000 2
channel.. Maybe that's the problem 48000 converted to 41000... Maybe
MP4 can't "handle" 48000??? I've got to check more into this.. (I
just noticed this whilst doing the above for this.)

	Why can't I save the edited file as a .vob like the
original?? Good question; wish I knew.. Too bloody many acronyms and
codecs for me I think.. That's for me and Cinelerra to figure out
/or/ possibly, yet another back end??



> Assuming that:
> 
> 1. What does the out-of-sync look like? Does it start out sync'd and 
> drift away gradually and consistently over the length of the edited 
> video; does it jump in spurts around the deletes (or elsewhere); or is 
> it consistently off for the length of the video? Or something else I 
> haven't thought of?

	Only trying small, 5-10 minute run time files, I'm not sure..
Sporadic dialogue makes it hard to tell but it looks like all lip
sync is a fixed offset.. You are probably thinking about dropped
video frames along the way and, again, I'm not completely sure.. I
have so much more to learn.. (I bought a book but it was limited in
scope.) You know the drill; click this, click that... <grin>




> 2. Am I right in assuming that you are capturing at standard NTSC speed, 
> 29.97 frames per second? And maintaining that framerate when you do the 
> videotrans transcode? Assuming a yes ... when do the actual Cinelerra 
> editing,  might you be messing this up somehow (moving from 29.97 to 30 
> fps, or even to whatever the framerate is for PAL ... 24 fps maybe?)?

	This is the subject of another quandry: I configure xawtv to
capture "NTSC" instead of it's default PAL.. That's easy.. It, also,
defaults to 12fps but I can change that in increments up to 29.970..
I've found that up to 20fps seems to work OK, over that it doesn't
like.. I've put this anomoly aside for the time being because
videotrans changes any captures to 29.970 default as long as I use
the -m ntsc flag.. Anyway--as mentioned--the captured .avi file and
it's converted .vob file are both in perfect sync before editing..
I've got to think more about 48000 and 41000 sound.. That's got to be
it I think.. Maybe, eh?? My mind is blown... I thought about trying
'transcode' instead of 'videotrans' as well as 'tovid', but I don't
think that's the problem.. 




> Sync problems with captured video aren't rare. Using mencoder here, I 
> still run into occasional cases where TV shows lose sync during the 
> commercial breaks, for example. I also run into sync problems, 
> presumably in the lame mp3 encoder, when I try to change the sampling 
> rate. And back when I used vcr, it had a drift problem that made sync 
> noticeably bad after about 2 hours or continuous recording. That said, 
> though, I never see a sync problem when editing; they always occur at 
> capture.

	Too many options and I see much out of sync stuff on the
telly too, so we're not alone... In that business all my life,
analogue, I may be too critical. Who knows.. The Moviola was MUCH
easier... <grin>




> Unfortunately (for the purpose at hand), video editing is one of the few 
> places I find I prefer to use Windows tools, specifically Virtual Dub, 
> so I can't make suggestions that are specific to Cinelerra.

	I fetched Virtual Dub at one time but this stubborn Scot
refuses to use any M$ stuff these days.. Oh well, my hang up..
IIRC Virtual Dub is GPL though... Hmmmmm. I'm allergic to M$'s
crashes too..



> The suggestion about memory was almost surely a red herring; even 
> real-time video capture isn't that demanding of memory. (I do my main 
> capturing on a 1.7 GHz Celeron with 256 MB RAM and UDMA100 hard disks.) 
> And since this is not real-time processing, CPU speed should also be 
> irrelevant.

	You're right and I got to thinking that most Linux video code
was written before the more than 1gHz CPU's were common.. However,
that doesn't stop the Cinelerra group to "recommend" using a box with
2Gb memory, dual 2.0gHz CPU's and a SATA HD... Of course that might be
needed when editing multi video tracks in collages, whatever.. It is
a powerful program, quite professional and is used professionally
too.. If I could find an easier Linux route for my so called simple
means.. Both the HD's in that box are UDMA100's but does Linux know
that?? Another research road.. (When someone recommends something,
why don't they say why?? No complaint intended considering the
thousands of people hours to write that code..)



> BTW, is the audio file type really "mp2" or was that a typo?

	No, as mentioned above that's what videotrans labels the
audio file both in my case above and when the files are prepared for
DVD burning as outlined by Chuck..

	As usual; APPRECIATE!!

	Can I back track and interject another query? Why can't I
capture set to 29.970?? What would be the stumbling block; the HD
writes?? I have that machine dedicated to video only with all the
daemons I know removed.. Afraid to remove more for fear I'll really
upset the apple cart.. Maybe a complete kernel rebuild could be in
order??

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
