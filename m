From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Continous buzzing sound in kde
Date: Mon, 29 Mar 2004 15:24:31 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403291624.31882.pa3gcu@zeelandnet.nl>
References: <20040329083248.0F35120950@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040329083248.0F35120950@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Monday 29 March 2004 10:32, Peter wrote:
> Thanks Richard!
>
> I solved the problem!!!
>
> In the control center sound system in Sound I/O disable "Enable full duplex
> operation".

In the trace you sent me i found;

ioctl(3, SNDCTL_TMR_TIMEBASE, 0xbffff640) = -1 ENOTTY (Inappropriate ioctl for 
device)

Yes, i was about to write to you, the above is what i think is/was the 
problem, however it should not cause a buzzing sound, anyway glad it now 
works.

> Regards

-- 
If the Linux community is a bunch of theives because they
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
