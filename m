From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: dma turned off
Date: Mon, 15 Nov 2004 22:29:13 +0100
Message-ID: <200411152229.13082.pa3gcu@zeelandnet.nl>
References: <20041111031327.278F03F57C@heisspf> <200411111658.28958.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200411111658.28958.pa3gcu@zeelandnet.nl>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Thursday 11 November 2004 16:58, Richard Adams wrote:
> I would go as far as saying its NOT you or your hardware at fault,many have
> problems with DMA and friends at the minute.
> One draw back of using an up to date kernel which has not been widely
> tested.

Sorry it took me a long while to reply and i must admit i seem to have lost 
your reply to this mail and the other mails of this thread, so i am now 
talking blind as i cant seem to find the archives anymore anywhere.

I seem to remember you mentioning that you had compiled a new kernel.???
If that is true then maybe you did not define your IDE chipset, if that is the 
case then that is your problem as the kernel will fall back onto, "slow but 
works on anything" sort of arrangement.
The command 'lspci' should say what the chipset is, then 
checkout /usr/src/linux/config and make sure you have defined support for 
that chipset.

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
