From: Ray Olszewski <ray@comarre.com>
Subject: Re: ppp0 (urgent)
Date: Thu, 18 Jul 2002 12:29:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020718122336.02181b00@celine>
References: <20020718183903.18909.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020718183903.18909.qmail@web2.mailbox.hu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosiakos@mailbox.hu>, Newbie <linux-newbie@vger.kernel.org>

At 08:39 PM 7/18/02 +0200, Korosi Akos wrote:
>[...]
>
>But how is that kppp don't creates a ppp0 interface?
>It writes the error that ppp0 can not be found (or similar, I will
>write the exact output of kppp tomorrow).

I don't use kppp and never have ... but assuming it is a fairly standard 
pppd implementation, it should create the ppp0 interface once it succeeds 
in dialing to and handshaking with the ISP. To say more, I (and no doubt 
others) will need to see the logfile output of kppp and any processes it 
calls (edited ONLY to replace any *passwords* with something obvious like 
XXXXXXX, please).

>I thought that I have to create ppp0 with ifconfig because on the other
>machine there was a ppp0 interface in ifconfig output.

As I said before, this is incorrect.  ifconfig does not create interfaces; 
it reports on (and configures) existing interfaces.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
