From: Ray Olszewski <ray@comarre.com>
Subject: Re: TFT display on Debian GNU/Linux
Date: Sat, 30 Aug 2003 10:32:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030830103024.01fceaa8@celine>
References: <5.1.0.14.1.20030830082746.01fd7170@celine>
 <AKsB3CAKDMU$EwFp@gcbagley.demon.co.uk>
 <5.1.0.14.1.20030830082746.01fd7170@celine>
 <g0cG6CA5uNU$EwzU@gcbagley.demon.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <g0cG6CA5uNU$EwzU@gcbagley.demon.co.uk>
References: <5.1.0.14.1.20030830082746.01fd7170@celine>
 <AKsB3CAKDMU$EwFp@gcbagley.demon.co.uk>
 <5.1.0.14.1.20030830082746.01fd7170@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:15 PM 8/30/2003 +0200, geoff bagley wrote:
> >When SuSE "recognizes" it, what does it then "auto-configure" it *as*? SuSE
> >will be writing an XF86Config-4 file that describes the configuration ...
> >and, just possibly, setting up some kernel modules (a framebuffer, maybe)
> >... and you should be able to use its results to guide you in setting up 
> Woody.
>
>Thank you for the tip.  I will re-install SuSE and check that out.
>
> >
> >BTW, selections like vesa choose video cards, not displays. What video card
> >(or chipset, if this is a laptop) are you using?
>
>No, it is not a laptop - it is a stand alone 17" TFT panel display.
>It plugs into a parallel port just like a normal monitor.

I assume you mean a VGA port.

>I will have a look at what the video card is and select that.
>Maybe that is the answer.

It should be at least part of the answer. I believe TFT displays do have 
some special requirements that can affect Modeline entries, but I don't 
know the details. As you might imagine, they are most discussed in the 
context of laptops, where dealing with the quirks of LCD displays has been 
a requirement for years.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
