From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Mencoder Problem??
Date: Tue, 22 Aug 2006 13:19:51 -0400
Message-ID: <20060822171951.GA1244@lnx2.kvinet.com>
References: <20060821173712.GA1177@lnx2.kvinet.com> <44E9FCCD.3030107@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44E9FCCD.3030107@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 08-21, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >This should be directed to Ray since he tutored me in mencoder
> >recordings at 320x240, fps=29.97, with no more than 3-4 duplicate
> >frames and the screen report of 29 or 30 fps.. This worked flawlessly
> >whilst using my Sony Beta machine as the input to the BT378 card..
> >Invoking mencoder CLI and viewing with mplayer either svgalib or
> >xterm..
> >
> >Changing to a Sony or Funai VHS machine, everything else the same,
> >that changed and the report then had the duplicate frame report
> >repeated for almost the entire 5-9 minute runs and 15fps or,
> >sometimes, 25fps reported.. Viewing the AVI recordings, they were all
> >in sync and looked acceptible with mplayer reporting 320x240 and
> >29.97fps.. No matter which run the A: V: were right on with A/V: no
> >more than something like -0.003 max..
> >
> >Figuring they were OK I tried several other, same Funai machine as
> >input, and the report then, out of the blue, changed to 29 or 30fps
> >again, depending on the playing tape, but seemed to be ramdom rather
> >than following a pattern..
> >
> >I can't find any comments on this so thought maybe this could be
> >considered "normal," or that various tapes are automatically
> >evaluated by mencoder and parameters changed..
> >
> >I need some comments, good or bad, from someone who's more familiar
> >than I.. TIA..
> >
> 
> Just fishing here, Hal ... did you do these various tests with the same 
> tape (aside from the Beta ones, of course)? I ask because sometimes TV 
> broadcasts actually do include duplicate frames. Specifically:

	Different tapes but, in all cases, commercially bought; not
copies and not from the air.. (I can't view broadcasts--no tuner,
just composite in or SVideo that I don't have either)



> 	movies are normally filmed at 24 fps. A TV broadcast of a movie uses 
> some sort of sync'ing device to convert to (in NTSC land) 29.97 fps, and 
> it generates duplicate frames to do so. I see this -- duplicate frame 
> reports, I mean -- all the time when I record movies off the air.

	Ah, and I should know better.. I presumed that all tapes were
copied from motion picture film.. I bet some are, but most are copied
from master tapes that have been recorded at 30fps.. The plot
thickens.. I, now, remember my years in the strictly film business,
that original shows were copied to tape for distribution and even
storage, when TV arrived.. Modern?? Thank you for prodding my
nostalgic memory.. Bottom line: I can and will expect these
differences.. It didn't dawn on me.. Ugh..



> 	animated shows (like The Simpsons) are typically drawn at 12 or 15 
> 	fps (it may vary, or I may just be forgetting), so recordings of them at 
> the NTSC standard will show many, many duplicate frames.

	Matt Groenig (sic?), and others, in the animation business,
if they still use cells, would be financially smart to produce with
the least frames acceptable.. Again, you reminded me, but I thought
all animation stuff now-a-days was produced via computer.. Too much
to learn..



> I'm afraid I've never paid any attention to the fps rates that 
> home-quality camcorderss shoot at, but they too could vary, either over 
> time or by price, I suppose. I haven't noticed duplicate-frame reports 
> when I transcribe tapes, but I usually discard the diagnostic output 
> unread, so I may be missing it.
> 
> Despite these reports, mencoder is still *encoding* at a constant frame 
> rate. It's just telling you that two successive source frames are 
> identical. That's why the playback always reports 29.29 fps.

	I too, will now ignore as long as the final product is AOK..
That's the main thing, eh? BTW, I'm old enough to remember that
silent films were shot at 18 fps, depending on the "cranker." <grin>

	APPRECIATE!!!!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
