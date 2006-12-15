From: Hal <haltec@kvinet.com>
Subject: SMTP AUTH with SMART_HOST Client only??
Date: Fri, 15 Dec 2006 14:16:15 -0500
Message-ID: <20061215191615.GA2017@lnx2>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


	ADSL support has upset my apple cart as far as outgoing SMTP
mail is concerned to my regular smart_relay ISP where my mailboxes
are located..

	Fetching mail no problem using getmail connected as dial-up
or ADSL.. Sending mail no problem, dial-up, but via ADSL I've run
into the SMTP AUTH problem used by Verizon's outgoing smtp server..
Have fetched at least ten HOWTO's, that are mainly addressed to
server or combination server/client support.. I'm bogged down. <g>

	I need some input as to what has worked for others, rather
than try so many.. Slackware comes bundled with Sendmail 8.13.X which
I can use but find Sendmail 8.11.4 is better for my use even though
it's not as "secure." I've never had a problem with 8.11.4, running
as a single user system, rather than a server.. Knock on wood, eh?
One first query is; I wonder if Cyrus-sasl is needed as a client only,
etc.. (I might be using Slackware 10.2, 2.4.31 if that helps.)

	TIA and Happy Holidays to all..

-- 

         Hal.      GNU/Linux -- Slackware 10.1, kernel 2.4.29
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
