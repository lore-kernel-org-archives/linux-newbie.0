From: Ray Olszewski <ray@comarre.com>
Subject: Re: Ethernet Hub UTP + BNC??
Date: Thu, 21 Apr 2005 11:02:53 -0700
Message-ID: <4267EACD.8020403@comarre.com>
References: <20050421174425.GA898@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050421174425.GA898@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: We run a hobby ethernet LAN in our home with four machines
> connected via 10Base2, BNC coax, cabling.. It works fine but we're
> looking ahead when UTP will be "standard" as we see no new MBs
> without the RJ45, cat 3-5 cable, sockets.. We're not interested in
> any but the 10mbs speed..
> 
> The query is: During the transition, especially since one of the
> machines is 25 feet from the other 3 and the coax cable already built
> in the walls -- we wonder if we could connect using both UTP and BNC?
> 
> We note that hubs are available; typically 8 UTP and 1 BNC but it
> sounds like the BNC is only for linking extra hubs....
> 
> I can't seem to find a definative answer as to whether we could use
> the same hub for; typically -- 3 UTP cables and 1 coax cable...
> 
> TIA and cheers,

Well, Hal ... it's been a long time, but I used to do just what you're 
describing ... we had a 10Base2 (what you're calling BNC; also called 
thinnet) "backbone that connected several hubs and a couple of servers, 
combined with a lot of 10BaseT (what you're calling UTP) clients. No 
problems, as long as we were careful about terminating the 10Base2 ends 
properly (that is, even if it's only 2 nodes, don't skip the 
T-connectors and terminating resistors).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
