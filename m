From: Peter <heisspf@skyinet.net>
Subject: Re: GrabWeather Error
Date: Fri, 14 Jul 2006 12:11:19 +0800
Message-ID: <200607140411.k6E4BJvr008751@skyinet.net>
References: <44B5E8D1.60401@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 12 Jul 2006 23:31:45 MST."
             <44B5E8D1.60401@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org


ray@comarre.com said:
> Add a  line something like this one:
>  > my ($StationInfo, $UpdateTime, $SkyConditions, $CodedMETAR);

> $SkyConditions = " "	;

Thanks! That did it.
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
