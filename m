From: Ray Olszewski <ray@comarre.com>
Subject: Re: ADSL (pptp [ver BCAA]) and PPPD connection problem.
Date: Sun, 12 May 2002 07:54:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020512145419.00cc6324@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Alexander Jenisch <Alexander_Jenisch@gmx.at>, linux-newbie@vger.kernel.org

How are you *trying* to start pppd? With ADSL, you normally need to use a
PPPoE package like the one from Roaring Penguin (in Debian Potato, it's
package pppoe, and I expect the name in Woody is the same).

At 01:50 PM 5/12/02 +0200, Alexander Jenisch wrote:
>hi all.
>
>i lately changed to adsl and encountered some problems with pptp and pppd 
>under debian (woody):
>pptp starts and stays in background, calling pptp_mgr (listed when typing 
>ps -uax) but pppd won't be started by pptp as inteded.
>to install both latest builds of pptp and pppd i got the sources and 
>compiled them myself. i configured pppd as written in various howtos and 
>don't think that i made any mistakes. though i cannot even check them 
>because pppd won't start. any guess how to set up pppd with a adsl modem 
>(alcatel speed touch) by hand? my kernel is 2.4.18 (with ppp), and the adsl 
>modem has 10.0.0.138 (default) as ip. it's connected to a switch and from 
>there to my linux machine.
>in windows me it works, though with some problems, when setting static dns.
>any guesses?



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
