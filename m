From: Ray Olszewski <ray@comarre.com>
Subject: Re: TFT display on Debian GNU/Linux
Date: Sat, 30 Aug 2003 08:32:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030830082746.01fd7170@celine>
References: <AKsB3CAKDMU$EwFp@gcbagley.demon.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AKsB3CAKDMU$EwFp@gcbagley.demon.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:20 PM 8/30/2003 +0200, geoff bagley wrote:

>I have a TATUNG  (Vibrant) VL7A 17" TFT LCD display.
>
>It works very well on SuSE 8.0 Linux at 1280 by 1024 pixels.
>
>SuSE recognizes it and auto-configures.
>
>However, I can't find a way to make it work on Debian GNU/Linux 3.0
>(Woody).  As you may imagine, it doesn't appear in the list of supported
>displays.   I have so far tried vesa, but with no luck.
>
>I can get Mutt,  and also Midnight-Commander to work OK, but I guess
>without using  X.

When SuSE "recognizes" it, what does it then "auto-configure" it *as*? SuSE 
will be writing an XF86Config-4 file that describes the configuration ... 
and, just possibly, setting up some kernel modules (a framebuffer, maybe) 
... and you should be able to use its results to guide you in setting up Woody.

BTW, selections like vesa choose video cards, not displays. What video card 
(or chipset, if this is a laptop) are you using?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
