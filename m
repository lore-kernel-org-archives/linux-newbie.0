From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sat, 23 Oct 2004 22:25:50 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410232219020.1287@debian-emach>
References: <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net> <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net> <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023151156.01f32200@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041023151156.01f32200@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hello Ray:

On Sat, 23 Oct 2004, Ray Olszewski wrote:

> One more thought: although the spec for setting video mode looks like you
> can put in any old values, in fact you have to use a mode that the kernel
> source understands. I don't have a 2.6.x source tree handy, but 2.4.21
> doesn't include any 1024x758-b@75 choices. The only entries I can find for
> 1024x768 in that source are:
>
>          /* 1024x768 @ 87 Hz interlaced, 35.5 kHz hsync *
>          /* 1024x768 @ 60 Hz, 48.4 kHz hsync */
>          /* 1024x768 @ 70 Hz, 56.5 kHz hsync */
>          /* 1024x768 @ 76 Hz, 62.5 kHz hsync */
>          /* 1024x768 @ 85 Hz, 70.24 kHz hsync */
>          /* 1024x768 @ 100Hz, 80.21 kHz hsync */
>
> So if your LCD panel will support multiple refresh rates, try picking from
> the choices listed above. Or get the kernel source and look in
> ./drivers/video/modedb.c to see what is available in your 2.6.x kernel.

I think I already tried 1024x768 @ 60 Hz and 1024x768 @ 70 Hz--unless I
entered the video= argument wrong.  That remains a possibility, but until
I find out how to list them right, I can't say for sure.

On whether my monitor supports multiple refresh rates.  This excerpt from
the manual seems relevant, doesn't it? "1.2 Features a. Multi-scanning at
horizontal frequencies of 31KHz to 64KHz and vertical frequencies of 60Hz
to 75Hz."

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
