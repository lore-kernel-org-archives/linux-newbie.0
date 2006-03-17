From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert .avi to .vob/Linux only??
Date: Fri, 17 Mar 2006 13:48:34 -0500
Message-ID: <20060317184834.GA1264@lnx2.kvinet.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <44061B5A.3000309@gelm.net> <20060316195810.GA1027@lnx2.kvinet.com> <4419CF26.10104@gelm.net> <4419F01D.3070306@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4419F01D.3070306@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 03-16, Ray Olszewski wrote:


> Hal -- What resolution are you capturing the tape at? With what I recall 
> of your equipment, I'm betting on 320x240. This is way below the 
> resolution (640x480 or 720x480) of "real" DVDs and could account for the 
>  size differences you are seeing. With this spproach, you are not 
> deinterlacing the full image you see on videotape, which can account for 
> the visible quality degredation (something I also see here, and that I 
> don't know what to do about it without a faster CPU that can capture at 
> 640x480 deinterlaced). Finally, you may be capturing at too low a 
> bitrate for the conversion to DVD to do much.

	Xawtv reports 384x288 16 bpp 12.000fps whilst recording.. I'm
presuming this is automatic as, so far, I haven't found a way to try
and adjust it upwards.. The 12fps is strange, again to me, as I
thought it had to be 29?, near 30, for NTSC.. I have lots to
learn..<g>




> I don't capture here with xawtv; I use mencoder (I didn't even remember 
> that xawtv had a capture mode, and I don't see one mentioned in the man 
> page I have for it). But if you want to explore possibilities on that 
> end, please post again with the details of your xawtv capture settings, 
> including what "top" tells you about CPU use during a capture (so we get 
> an idea of you have the power to run at higher-quality settings in real 
> time).

	I didn't know that mencoder would grab streaming video and
when I man mencoder I get mplayer's man text.. Most of the acronyms
are strange to me too.. I've purchased two books on multimedia, sight
unseen, and they are both "click this, click that," Fooey.. <grin>

	Running tops whilst recording I get average loads around 0.11
and CPU SYS around 3.7%.. Even that doesn't sound right to me... I
have 512mB SDRAM and a 1gB swap partition, never, seemingly, used...

	Xawtv doesn't have many actual settings except I have to
change the PAL default to NTSC, of course and enter the input jack in
the rc file.. I use both composite1 or SVideo... Merely invoking
xawtv in an xterm and right clicking on the blue video window, I can
click on capture /or/ use the shortcut, thence select AVI, thence
enter a single filename & click on the record bar, a toggle.. The
picture disappears during recording; a small inconvenience so far
using the sound as a reference, and I get a running red text report
of what's going on.. So far I don't know what most of them are.. Ugh.

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
