From: Ray Olszewski <ray@comarre.com>
Subject: Re: partitons and proper order
Date: Mon, 01 Nov 2004 09:14:26 -0800
Message-ID: <5.1.0.14.1.20041101091124.01f2c198@celine>
References: <Your message of "Sun, 31 Oct 2004 15:14:08 MST." <418563B0.6060306@kevino.org> <20041101070754.CE0D9255BA@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041101070754.CE0D9255BA@heisspf>
References: <Your message of "Sun, 31 Oct 2004 15:14:08 MST." <418563B0.6060306@kevino.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:07 PM 11/1/2004 +0800, Peter wrote:

>mike@kevino.org said:
> >  /boot partition within the first 500 megabytes of the drive.
>
>20 MB would be more than enough. I have 3 kernels on my /boot and use a 
>little
>less than 10 MB

You misread this, Peter. I did not write that the partition needed to be 
500 MB large, just thet is needed to be within the first 500 MB of the 
drive. In fact, I usually make it the first partition, and make it anywhere 
from 10 to 50 MB, depending on specifics of the system (mainly, of course, 
how many different kernels I expect to have on it at any time ... normal 
systems will, as you suggest, do fine with 10 MB or even less ... also how 
big the hard disk is).




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
