From: Ray Olszewski <ray@comarre.com>
Subject: Re: eth0 promiscuous mode
Date: Fri, 30 Aug 2002 06:40:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020830063513.021bd240@celine>
References: <5.1.0.14.1.20020829210529.02179020@celine>
 <200208300931.14643.natarajan_k@hotpop.com>
 <5.1.0.14.1.20020829210529.02179020@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020830080636.GA620@diamond.ipht-jena.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Axel Siebenwirth <axel@hh59.org>, Linux Newbie <linux-newbie@vger.kernel.org>

At 10:06 AM 8/30/02 +0200, Axel Siebenwirth wrote:
>On Thu, 29 Aug 2002, Ray Olszewski wrote:
>
> > >interface be put in
> > >promiscuous mode initially or is there any option I should use to put 
> it in
> > >promiscuous mode? I use Mandrake 8.2.
>
>Very stupid question: What is the promiscuous mode? I think I see my NIC
>going into that mode when I start tcpdump...


This is a list for beginners, so while your question may be naive, it is 
hardly stupid. I mention this because I was struck by the large number of 
people apparently interested in discussing your syntax, but themselves 
either unable or unwilling to include an *answer* to the question in the 
messages they posted. Shame on all of you.

Normally, the firmware in a NIC filters incoming traffic and passes to the 
OS only those Ethernet frames that are addressed to the NIC's hardware 
(MAC) address. When in promiscuous mode, the NIC firmware passes ALL 
Ethernet frames up the ladder, not just ones sent to its MAC address. 
tcpdump is probably the most common app that uses promisc mode, but there 
are others.



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
