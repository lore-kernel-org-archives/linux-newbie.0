From: "Robert" <robert_schmidli@hotmail.com>
Subject: Sendmail won't receive remote messages
Date: Tue, 26 Aug 2003 19:23:51 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bif8v7$sd7$1@sea.gmane.org>
Reply-To: "Robert" <robert_schmidli@hotmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

My mail server has been working without a glitch for a number of months.
All of a sudden it won't receive messages from the Internet.  Local mail
within my network is still received.  Our ISP is under new management - so
maybe its not a problem with my system!

I'm able to access my webpage OK over the net at http://www.mydomain.com.au.

Could somebody let me know whether there's a problem with my config, or is
there a problem with my ISP?

Below is a description of my setup:

OS: Slackware 9.0
Sendmail 8.12.9
Firewall: only port 25 open to receive mail
I access my mail with Squirrelmail and IMAP2

If I telnet to my mail server from a dialup, everything looks OK (I've
substituted my address with a fictitious one):
----------------------------------------------------------------------------
# telnet myserver.com.au 25
220 myserver.com.au ESMTP Sendmail 8.12.9/8.12.9; Tue, 26 Aug 2003 07:34:58
+1000
helo 63.60.42.226
250 myserver.com.au Hello 1Cust226.tnt3.cbr2.da.uu.net [63.60.42.226],
pleased to meet you
mail from: me@mycomputer.com
250 2.1.0 me@mycomputer.com... Sender ok
rcpt to: robert@myserver.com.au
250 2.1.5 robert@myserver.com.au ... Recipient ok
data
354 Enter mail, end with "." on a line by itself
this is a test
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
