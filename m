From: Ray Olszewski <ray@comarre.com>
Subject: Re: [kazrak+kernel@cesmail.net: Re: hardware advice for a PC
  moron]
Date: Sun, 18 Jan 2004 10:17:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040118100405.01f4cd78@celine>
References: <20040118172622.GA19258@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040118172622.GA19258@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:26 PM 1/18/2004 -0500, Rei Shinozuka wrote:
>thanks for the pointers.
>
>as a general rule:
>
>1. is there any difference in functionality between the various
>    AMD and intel processors?  i.e., am i better off starting with
>    one versus another?

Of course there are differences between the 2 lines, just as there are 
differences within the Intel line between, say, a fast Celeron and a P4. 
Your best choice depends a lot on the details of what you want to do with 
the system, and what other hardware choices you make. For example, as I 
recall, one use you want to make of this system is capture and playback of 
realtime video. That requires *either* a fast CPU *or* a dedicated encoder 
on the vidcap card (and maybe a dedicated decoder on the video-out side).

>2. is it worth getting a "fancy" 3d card (are they supported under
>    linux) or is a plain-jane card good enough for 1280x1024x24bits.
>    are any cards ATI or NVIDIA considered good or bad under linux?

"Worth" is always a tricky call. In part it depends on how easily you come 
by, and part with, money, something no one here can help you with. As to 
what things technical advice can help with ... in practice, most any card 
will support a static X desktop at 1024x768x24 bits; that requires only 
about 8 MB of display RAM. You want a little more resolution, but any 
recent card with 32 MB of video RAM should suffice for that. What you call 
the "fancy" cards matter in three possible ways:

1. 3D acceleration. This mainly matters for playing games, something I do 
not do on Linux systems, so I will leave this one for someone else to discuss.

2. xVideo support. This is the hardware-level support needed for efficient 
playback of realtime video. Most newer cards support it, but you should 
check any card you are considering against the X database (somewhere at 
www.xfree86.org, but you'll have to look around for it) to be sure your 
card is supported. Most are, but there are odd exceptions (the savage 
driver supports xVideo, for example, but not on the Savage2000 chipset).

3. Non-standard output. Some video cards provide output to devices other 
than VGA displays ... TV-out (to NTSC or PAL devices) is the most common. 
But getting this to work under X can sometimes be a challenge. For example, 
the stock ati X driver does not support TV-out; you need to compile a 
poorly supported, non-standard driver to get TV out. OTOH, nVidia offere s 
afre-price but proprietary X driver that includes good support for TV out 
on many (maybe all, but I can't know that or sure) of the nVIdia cards, and 
the standard X nv driver will, with the nvtv supplementary application, 
support TV out in some cases.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
