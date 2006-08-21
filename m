From: Hal MacArgle <haltec@kvinet.com>
Subject: Mencoder Problem??
Date: Mon, 21 Aug 2006 13:37:12 -0400
Message-ID: <20060821173712.GA1177@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


This should be directed to Ray since he tutored me in mencoder
recordings at 320x240, fps=29.97, with no more than 3-4 duplicate
frames and the screen report of 29 or 30 fps.. This worked flawlessly
whilst using my Sony Beta machine as the input to the BT378 card..
Invoking mencoder CLI and viewing with mplayer either svgalib or
xterm..

Changing to a Sony or Funai VHS machine, everything else the same,
that changed and the report then had the duplicate frame report
repeated for almost the entire 5-9 minute runs and 15fps or,
sometimes, 25fps reported.. Viewing the AVI recordings, they were all
in sync and looked acceptible with mplayer reporting 320x240 and
29.97fps.. No matter which run the A: V: were right on with A/V: no
more than something like -0.003 max..

Figuring they were OK I tried several other, same Funai machine as
input, and the report then, out of the blue, changed to 29 or 30fps
again, depending on the playing tape, but seemed to be ramdom rather
than following a pattern..

I can't find any comments on this so thought maybe this could be
considered "normal," or that various tapes are automatically
evaluated by mencoder and parameters changed..

I need some comments, good or bad, from someone who's more familiar
than I.. TIA..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
