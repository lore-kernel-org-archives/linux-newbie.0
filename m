From: Ray Olszewski <ray@comarre.com>
Subject: Re: newbies question about tv
Date: Fri, 31 Oct 2003 07:30:54 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031031072020.01f57d60@celine>
References: <20031031084737.53477fdb.c.lina@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031031084737.53477fdb.c.lina@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: c.lina@gmx.net, linux-newbie@vger.kernel.org

At 08:47 AM 10/31/2003 +0100, c.lina@gmx.net wrote:
>Hi all,
>
>I am a *real* newbie to linux, so please have mercy ....
>
>I have a tv-card and watching tv with motv works fine. Is there a tool
>with which I can record shows and later watch the recorded shows?
>(I have suse8.0)


Many, but the details depend on which TV-capture card you have (and, a tiny 
bit, whether you are in NTSC or PAL country - some recording apps don't 
handle the 29.97/fps frame rate of NTSC properly) and what video-out card 
you have (and if you are doing video out to a monitor or a TV).

Applications to check out for recording include avirec, vcr, ffmpeg, 
mencoder, and a few others that I cannot recall right now  These all work 
fine with any TV card that uses the kernel's bttv driver. I use vcr myself.

The main applications for playback are xine and mplayer. There is also 
aviplay and, probably, a few others. Their main need is an X driver that 
supports XVideo (or a really fast CPU, so that xshm can work without 
dropping frames) ... this is different (I think) from motv's screen display 
(I know xawtv is different, and I think motv is too), so don't assume you 
have this part working just because real-time TV watching works for you.

The most developed record-and-playback application I know of is MythTV. 
There is also FreeVo, which I've heard of but never looked at. MythTV works 
with both bttv-based cards and cards with hardware encoding that use the 
ivtv kernel driver.

If your distro doesn't include some of these apps (I use Debian, not SuSE, 
so don't know offhand what SuSE includes), you can track down the home 
sites of these projects through Google.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
