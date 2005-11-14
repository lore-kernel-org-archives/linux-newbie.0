From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: pppoe/adsl-modem loopback??
Date: Mon, 14 Nov 2005 15:12:04 -0500
Message-ID: <20051114201204.GB1092@lnx2.w8mch.ampr.org>
References: <20051111221155.GA973@lnx2.w8mch.ampr.org> <4378A93F.1020805@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4378A93F.1020805@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 11-14, chuck gelm wrote:
> Hi, Hal:
> 
>  I've had aDSL with Earthlink and later Ameritech/SBC.  Of course,
> in each case there was equipment at the other end of my telephone
> line at the phone company's Central Office.

	Greetings: Ray queued me down the right path and with several
comments so I now have a handle on it along with a site and file he
recommended: DSL-HOWTO.pdf.. Of course I already had this file in
text form in Slackware's /usr/doc directory... Duh.. I yelled wolf a
mite too soon methinks...


> "...lug my desktop to town nearer the Central Office."
> 
>  Your ending statement is the least logical or the most likely
> reason why things are not working.  IMHO, there must be a DSL
> modem at both ends of the telephone company's lines.  I am guessing
> that you do not have DSL service, ergo you have no DSL modem at
> the CO end of your wires.  You gotta have a modem at both ends. :-|

	Yes and the Telco modem must send the proper signal to the
users modem to "lock." I've tested two Westells now, at the
neighbours site, and they both lock as expected.. Talking to that
modem shoudn't be a problem with Linux but with their XP lashup--
it'll take some time knowing me.. Maybe it'll really be plug 'n pray,
eh??




> "rp-pppoe but it fails because there is no carrier signal"
> 
> Yep, unless there is a modem at the CO end of the telephone wires,
> you will not get a carrier!  :-|

	Telco calls it "DSLAM" or something like that.. My notes are
not handy.. At any rate we're in business and the thruput should be
good as I paced their site to the CO and it's only 150 ft... Joy, eh?

	Appreciate!!
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
