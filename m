From: Ray Olszewski <ray@comarre.com>
Subject: Re: Spam from linux-newbie
Date: Tue, 09 Mar 2004 08:43:29 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040309082546.01fd2d10@celine>
References: <5.1.0.14.1.20040309064723.01f8cf48@celine>
 <20040309090735.55A3FD842@heisspf>
 <5.1.0.14.1.20040309064723.01f8cf48@celine> <177406456750.20040309092508@wa5rrh.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <177406456750.20040309092508@wa5rrh.org>
References: <5.1.0.14.1.20040309064723.01f8cf48@celine>
 <20040309090735.55A3FD842@heisspf>
 <5.1.0.14.1.20040309064723.01f8cf48@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:25 AM 3/9/2004 -0600, Jim Reimer wrote:
>On Tuesday, March 9, 2004, 9:05:59 AM, you wrote:
>
> > Peter -- This is simply too vague to permit a decent reply. Other replies
> > seem to be making different guesses about what you mean. I won't try to
> > guess. I offer what specifics I can below.
>
>I receive very little spam here, and most of what I get is being
>routed through vger.  Had to dig through the trash to find one,
>but here are the headers from an example:
[details deleted]

Thanks, Jim. Once I saw an example and had an idea of what to look for, I 
found two more examples in my own Trash (both of which my SPAM screening 
had caught). The relevant Received: header fragments from them are:

         Received: from [12.0.249.86] ([12.0.249.86]:18 "HELO 
vetparas.unizh.ch")
         Received: from [202.188.20.133] ([202.188.20.133]:15623 "HELO 
vernal.wireline.slb.com")

And the example you (Jim) provided has this header:

         Received: from [68.152.174.70] ([68.152.174.70]:8460 "HELO 
verlan.com")

I'd infer from this that the list is not especially a target for SPAM, but 
a small amount of SPAM is slipping through whatever filtering it already 
does. (My own filtering is only about 90% effective, so a small amount of 
slippage is not surprising to me.) Note that the actual source and the 
From: "source" are unrelated in Jim's example; they were in the two I found 
as well.

I doubt there is anything that can be done about this at the list level. In 
any case, the appropriate person to ask is the list owner, not the list in 
general.

If you care enough, you might do reverse lookups of, or traceroutes to, the 
actual source IP addresses, and complain to abuse@ for each of their ISPs. 
I'd be surprised if that would have any actual effect, though ... these 
days, I only complain about the most egregious and disgusting SPAM (child 
porn offers, credit card scams that look unusually convincing).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
