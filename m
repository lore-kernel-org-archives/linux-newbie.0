From: Ray Olszewski <ray@comarre.com>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 17:21:10 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021210171852.020d3150@celine>
References: <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212110111.gBB1BW103535@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:11 PM 12/10/02 -0500, Haines Brown wrote:
[...]
>Here is the result of my telnet experiment:
>
># telnet localhost 25
>Trying 127.0.0.1...
>Connected to hartford-hwp.com (127.0.0.1).
>Escape character is '^]'.
>220 hartford-hwp.com ESMTP Sendmail 8.12.5/8.12.5; Tue, 10 Dec 2002 
>17:52:23 -0500
>HELO localhost
>250 hartford-hwp.com Hello hartford-hwp.com [127.0.0.1], pleased to meet you
>MAIL from: haines@localhost
>250 2.1.0 haines@localhost... Sender ok
>RCPT to: brownh@hartford-hwp.com
>250 2.1.5 brownh@hartford-hwp.com... Recipient ok
>DATA A test
>354 Enter mail, end with "." on a line by itself
>QUIT
>.
>250 2.0.0 gBAMqNcp001528 Message accepted for delivery
>^]
>telnet> quit
>Connection closed.

Good. This is s completely successful transmission of an smtp message. So 
sendmail itself is fine. If any problems remain with fetchmail downloads, 
the likely location for them is the fetchmail configuration ... which you 
haven't describes on the list yet (I don't think).



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
