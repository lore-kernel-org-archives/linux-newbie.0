From: Phillip Susi <psusi@cfl.rr.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Wed, 16 May 2007 11:20:53 -0400
Message-ID: <464B2155.8040005@cfl.rr.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>  <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>  <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>  <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>  <a <a2ebde260705151549r2762ac1fk9a68db7b903e6525@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <a2ebde260705151549r2762ac1fk9a68db7b903e6525@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dong Feng <middle.fengdong@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Dong Feng wrote:
> If what you say were true, then an ISR would be running in the same
> context as the interrupted process. 

Yes, and it is, as others have said in this thread, which is a good 
reason why ISRs can't sleep.

> But please check any article or
> book, it will say ISR running in different context from any process.
> So ISR is considered in its own context, although it shares a lot of
> things with the interrupted process. I would only say *context* is a
> higher-level logical concept.

Depends on which book or article you are reading I suppose.  The 
generally accepted and often used thought is that ISRs technically are 
running in the context of the interrupted process, but because that 
context is unknown and therefore should not be used, it is often said 
that they run in no context, or outside of any context.  Sometimes 
people then assume that because they run outside of any ( particular ) 
process context, they must be in their own context, but this is a mistake.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
