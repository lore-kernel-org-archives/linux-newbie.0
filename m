From: "Phillip Morgan" <pmorgan@qpbd999.quickpages.net.au>
Subject: Majordomo fails to send : error 524
Date: Tue, 18 Jun 2002 17:09:02 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206180709.g5I792R09437@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm setting up majordomo 1.94.5 for a single list, and have installed 
it as per the docs. This used to work on another machine using sendmail 
8.9.3 on slackware 2.2.6. I'm now using a new machine with sendmail 
8.11.4, and linix 2.2.19 and I get messages sent to the list returned..

What is a 5.2.4 error? I can't find it listed on RFC821, or its 
successor RFC2821... This is the error header...

>From: Mail Delivery Subsystem <MAILER-DAEMON@qpbd999.quickpages.net.au>
>To: owner-quantumleap@quantumleap.org.au
>Subject: Returned mail: see transcript for details  All headers  
>This is a MIME-encapsulated message
>
>Reporting-MTA: dns; qpbd999.quickpages.net.au
>Arrival-Date: Tue, 18 Jun 2002 17:01:06 +1000
>
>Final-Recipient: RFC822; quantumleap-list@qpbd999.quickpages.net.au
>X-Actual-Recipient: rfc822; /usr/local/majordomo-
1.94.5/lists/quantumleap@qpbd999.quickpages.net.au
>Action: failed
>Status: 5.2.4
>Last-Attempt-Date: Tue, 18 Jun 2002 17:01:06 +1000 

-- 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
