From: Ray Olszewski <ray@comarre.com>
Subject: Re: Ogle and slow DVD playing.
Date: Mon, 30 Sep 2002 12:56:52 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020930125022.02c79ec0@celine>
References: <20020930191336.C2A2D3C02@sitemail.everyone.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020930191336.C2A2D3C02@sitemail.everyone.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: jlalarcon@linuxnobis.com, linux-newbie@vger.kernel.org

At 12:13 PM 9/30/02 -0700, Jose Luis Alarcon wrote:
>   Hi all. Long time since i was here last time.
>
>   Anybody can tell me what can are the reasons why ogle play the DVD movies
>very slow?.

Probably not, given that in this context, "slow" has multiple meanings. (Do 
you mean it takes a long time to *start* playing the movie? Or that is 
plays at half the normal speed? Or something else?)

Give us a better description of the problem, along with the basics of your 
setup.

Include ogle details -- what version? Playing through X or not? If through 
X, what X server do you use?

On your DVD drive, do you have DMA enabled (through hdparm)?

Have you seen this behavior with a particular DVD, with some of the DVDs 
you play, or with all of the DVDs you play?

Taking a long time to start, BTW, is normal ... ogle has to get the DVD 
decryption started, a process that involves region checking and other stuff 
I forget right now ... can easily take a minute or two even on fast 
equipment (I see these delays on a 1 GHz P-3, for example).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
