From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 20:11:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212110111.gBB1BW103535@hartford-hwp.com>
References: <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk> <5.1.0.14.1.20021210115320.020c5d00@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021210115320.020c5d00@celine> (message from Ray
	Olszewski on Tue, 10 Dec 2002 12:10:37 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Ray,

>The first messages was an undeliverable notive from when I tried to
>send myself a test message almost a week ago:
>
>  brownh@hartford-hwp.com... Deferred: hartford-hwp.com.: Network is 
> unreachable

Hard to say at this point. The message should have been deliverable
to my current (RH7.3 machine) if it went out at all. Can't recall what
send the error message. 


Here is the result of my telnet experiment:

# telnet localhost 25
Trying 127.0.0.1...
Connected to hartford-hwp.com (127.0.0.1).
Escape character is '^]'.
220 hartford-hwp.com ESMTP Sendmail 8.12.5/8.12.5; Tue, 10 Dec 2002 17:52:23 -0500
HELO localhost
250 hartford-hwp.com Hello hartford-hwp.com [127.0.0.1], pleased to meet you
MAIL from: haines@localhost
250 2.1.0 haines@localhost... Sender ok
RCPT to: brownh@hartford-hwp.com
250 2.1.5 brownh@hartford-hwp.com... Recipient ok
DATA A test
354 Enter mail, end with "." on a line by itself
QUIT
.
250 2.0.0 gBAMqNcp001528 Message accepted for delivery
^]
telnet> quit
Connection closed.


Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
