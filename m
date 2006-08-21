From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mencoder Problem??
Date: Mon, 21 Aug 2006 11:34:53 -0700
Message-ID: <44E9FCCD.3030107@comarre.com>
References: <20060821173712.GA1177@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060821173712.GA1177@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> This should be directed to Ray since he tutored me in mencoder
> recordings at 320x240, fps=29.97, with no more than 3-4 duplicate
> frames and the screen report of 29 or 30 fps.. This worked flawlessly
> whilst using my Sony Beta machine as the input to the BT378 card..
> Invoking mencoder CLI and viewing with mplayer either svgalib or
> xterm..
> 
> Changing to a Sony or Funai VHS machine, everything else the same,
> that changed and the report then had the duplicate frame report
> repeated for almost the entire 5-9 minute runs and 15fps or,
> sometimes, 25fps reported.. Viewing the AVI recordings, they were all
> in sync and looked acceptible with mplayer reporting 320x240 and
> 29.97fps.. No matter which run the A: V: were right on with A/V: no
> more than something like -0.003 max..
> 
> Figuring they were OK I tried several other, same Funai machine as
> input, and the report then, out of the blue, changed to 29 or 30fps
> again, depending on the playing tape, but seemed to be ramdom rather
> than following a pattern..
> 
> I can't find any comments on this so thought maybe this could be
> considered "normal," or that various tapes are automatically
> evaluated by mencoder and parameters changed..
> 
> I need some comments, good or bad, from someone who's more familiar
> than I.. TIA..
> 

Just fishing here, Hal ... did you do these various tests with the same 
tape (aside from the Beta ones, of course)? I ask because sometimes TV 
broadcasts actually do include duplicate frames. Specifically:
	
	movies are normally filmed at 24 fps. A TV broadcast of a movie uses 
some sort of sync'ing device to convert to (in NTSC land) 29.97 fps, and 
it generates duplicate frames to do so. I see this -- duplicate frame 
reports, I mean -- all the time when I record movies off the air.

	animated shows (like The Simpsons) are typically drawn at 12 or 15 fps 
(it may vary, or I may just be forgetting), so recordings of them at the 
NTSC standard will show many, many duplicate frames.

I'm afraid I've never paid any attention to the fps rates that 
home-quality camcorderss shoot at, but they too could vary, either over 
time or by price, I suppose. I haven't noticed duplicate-frame reports 
when I transcribe tapes, but I usually discard the diagnostic output 
unread, so I may be missing it.

Despite these reports, mencoder is still *encoding* at a constant frame 
rate. It's just telling you that two successive source frames are 
identical. That's why the playback always reports 29.29 fps.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
