From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 14:43:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212101943.gBAJhgW03033@hartford-hwp.com>
References: <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk> (message
	from Carl on Tue, 10 Dec 2002 13:38:06 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org

Here are some preliminary results on fetchmail.

------------------
When I originally ran netsat -l, I got: 

  Active Internet connections (only servers)

    Proto Recv-Q Send-Q Local Address   Foreign Address   State      
    tcp        0      0 127.0.0.1:smtp      *:*           LISTEN    

But now for some reason it has changed to:
    tcp        0      0 hartford-hwp.com:smtp *:*         LISTEN 

Whatever the reason for the change, I gather this means something is
listing on the smtp port (25).  

--------------------

Setting up /etc/mail/access. I have:

	localhost.localdomain		RELAY
	localhost			RELAY
	127.0.0.1			RELAY You suggest inserting
--------------------

I also checked /etc/mail/local-host-names. It is empty by default.
You suggest entering "mailserver.mydomain.com", but since my machine
has neither a static IP address nor hame, I was not sure what to do. I
instead just put in my hostname (hartford-hwp.com), figuring it would
do no harm.

        # local-host-names - include all aliases for your machine here.
        localhost
        localhost.localdomain
        hartford-hwp.com

--------------------

Next, I ran netstat -lp

      # netstat -lp
        tcp     0    0 *:smtp  *:*    LISTEN      856/sendmail: accep

Port 25 accepts messages from sendmail?

--------------------

I started a telnet session, but didn't log in. Will do that, too, if
useful. 

  # telnet localhost 25
  Trying 127.0.0.1...
  Connected to hartford-hwp.com (127.0.0.1).
  Escape character is '^]'.
  220 hartford-hwp.com ESMTP Sendmail 8.12.5/8.12.5; Tue, 10 Dec 2002 
	13:12:00 -0500
 
-------------------
I didn't know what might be useful from /etc/mail/sendmail.cf, but as
I waited thinking about that, I saw that my fetchmail -k command
actually carried through. It took about 20 seconds to start the first
download. The next few messages took about 10 seconds each. Then a
batch of about 8 downloaded normally (2-3 seconds for the batch), then
slow again. Then fast again. The pattern was consistent for additional
tries. 

The first messages was an undeliverable notive from when I tried to
send myself a test message almost a week ago:

 brownh@hartford-hwp.com... Deferred: hartford-hwp.com.: Network is unreachable

After five days, it was deleted from queue. The batch of test messages
I sent myself (also 127.0.0.1, also localhost.localdomain) fell into a
black hole. 

I don't know where to look for a fechmail log, but I ran fetchmail -v
-v > /opt/tmp/-fetchmail.log. Because it was just one new message that
(successfully) downloaded, I'll here venture to paste the entire log:

Oops. Left it on the wrong HD. Will have to retrieve it next time I
boot the disk. But the message did not wave any red flags (but I may
well not recognize one even if I saw it).

Haines


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
