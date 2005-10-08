From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netconfig Fail
Date: Fri, 07 Oct 2005 21:18:32 -0700
Message-ID: <43474898.8040206@comarre.com>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>	<4344D330.2050005@comarre.com>	<20051007122344.3780b5c0.heisspf@skyinet.net>	<43465DBF.50907@gelm.net> <20051008113905.42e32ecb.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051008113905.42e32ecb.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> On Fri, 07 Oct 2005 07:36:31 -0400
> chuck gelm <chuck@gelm.net> wrote:
> 
> 
>>Peter:
>>
>>  Please adjust your system clock.
>>Your clock may be more than 5 hours ahead.
>>My email viewer is sorting your emails after Ray's responses.
>>:-|
>>Regards, Chuck
> 
> 
> My clock is correctly set for the local time which is +8 from UTC (GMT).
> 
> Since I run from DSL I see when giving command date I get
> 
> Sat Oct  8 11:35:15 EDT 2005.
> 
> I don't know what the EDT part stands for. I think in slack it is PHT which is correct.

EDT normally stands for Eastern Daylight Time, Eastern being the time 
zone for the East Coast of the United States. It is UT-4, not the UT+8 
you want. And that interpretation is consistent with what your mail 
software is actually sending, for example:

	Date: Sat, 8 Oct 2005 11:43:22 -0400

So even if your local time looks correct to you, your time *zone* is 
wrong, and that will cause e-mail (which always specifies both the local 
time and the UT offset) to appear wrong in any e-mail client that 
reports time based on either the recipient's local time zone or UT.

I'm not familiar with the designation "PHT", but since it is UT+8 and 
your mail server is "mail.meridian.ph", I'm guessing it refers to the 
Philippines.

To check what your computer thinks UT currently is, run "date -u". If it 
is wrong but your local time looks right, that is another indication of 
a timezone error.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
