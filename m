From: Ray Olszewski <ray@comarre.com>
Subject: Re: sendmail over ppp
Date: Mon, 15 Dec 2003 17:27:08 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031215170432.01fc3d50@celine>
References: <20031216010920.30413.qmail@www.linkmania.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031216010920.30413.qmail@www.linkmania.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:09 AM 12/16/2003 +0000, Szonyi Sebastian Calin wrote:
>Hi
>I have some questions regarding reading and sending mail
>through an ISP.
>
>Prerequisites: isp uses login and password autentication
>
>1. How do i read mail from my isp ? should i use fetchmail
>for this
>without involving sendmail ?
>2. how do i send mail with sendmail through my ISP ?
>I searched on the internet and i couldn't find how to set
>the username and password for sendmail to autenticate to
>the smart relay
>(I understood that i have to set my ISP as a smart relay
>host in
>sendmail.cf file )
>
>Any poiters to relevant documentation will be apreciated.
>(I have documentation for sendmail at home but i'm not sure
>i really
>have time to read all of it :-)

Good answers to your questions have more to do with the details of how your 
ISP is providing service than with Linux as such.

First, receiving mail:

If your connection is not on 24/7 (as most dialup-ppp connections are not), 
you will probably receive your e-mail with an address like 
yourname@yourisp.com . It will be received by your ISP's mail server and 
held there for you, for downloading using POP3 (or, possibly, IMAP). In 
this case, you will need to use a POP3 client to get the mail; fetchmail is 
the standard client for Linux (though many browsers will act as POP3/IMAP 
clients too, if you prefer that approach).

If I am right in assuming that your ISP gives you access to your e-mail via 
POP3 or IMAP, then sendmail is irrelevant to your receiving mail.

Second, sending mail:

If your ISP requires userid/password authentication to send e-mail, it 
probably uses "pop before smtp". This means that when it gets an smtp 
connection from you (to send mail), before it accepts the mail it requires 
you to make a POP3 connection, which provides the password mechanism. 
(Please note that this is a guess, though -- it is the common way I know to 
do it, but I have no way to know for certain what *your* ISP actually does.)

In practice, on the client side, you comply with this requirement by 
checking mail before sending a message. Possibly if you set fetchmail to 
check mail frequently (every 10 minutes, perhaps, plus whenever a ppp 
connection is initiated), that will be enough to satisfy your ISP ... as I 
said, all this depends on what your ISP has decided to require, something 
no one her can tell you.

For some general background on POP before SMTP, take a look here to see 
what one ISP requires:

         http://www.greencis.net/support/popb4smtp.shtml

Unless your ISP blocks outgoing destination-port-25 connections (some do, 
some don't), you could try using sendmail to send your e-mail directly to 
its destination, bypassing the ISP's relay. That is a stock sendmail (or 
exim or postfix or whatever) configuration, requiring nothing special from 
you ... though you will run into some anti-SPAM rejections if your IP 
address is on the "dialup list" (DUL) of some of the RBH sites.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
