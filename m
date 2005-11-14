From: chuck gelm <chuck@gelm.net>
Subject: Re: pppoe/adsl-modem loopback??
Date: Mon, 14 Nov 2005 10:11:59 -0500
Message-ID: <4378A93F.1020805@gelm.net>
References: <20051111221155.GA973@lnx2.w8mch.ampr.org>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051111221155.GA973@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: Trying to "help" a neighbour with her Westell ADSL modem
> on my bench too far from the CO to connect.. I know "help" is a
> mis-nomer because she knows more about ADSL than I... <grin> I've
> fetched all the docs etc from the Web and Westell that I can..
> 
> Does anyone know of a hardware "loopback" scheme, whatever, I can
> try? I know this info is sparce but I've found the modem using
> rp-pppoe but it fails because there is no carrier signal..
> 
> Does this make sense?? I'm almost positive there's nothing I can do
> except lug my desktop to town nearer the Central Office..
> 
> Any comments? TIA..
> 
> ---
>     Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
> .
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Hi, Hal:

  I've had aDSL with Earthlink and later Ameritech/SBC.  Of course,
in each case there was equipment at the other end of my telephone
line at the phone company's Central Office.

"...lug my desktop to town nearer the Central Office."

  Your ending statement is the least logical or the most likely
reason why things are not working.  IMHO, there must be a DSL
modem at both ends of the telephone company's lines.  I am guessing
that you do not have DSL service, ergo you have no DSL modem at
the CO end of your wires.  You gotta have a modem at both ends. :-|

"rp-pppoe but it fails because there is no carrier signal"

Yep, unless there is a modem at the CO end of the telephone wires,
you will not get a carrier!  :-|

HTH, Chuck




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
