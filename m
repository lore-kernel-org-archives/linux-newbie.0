From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sendmail won't receive remote messages
Date: Tue, 26 Aug 2003 07:17:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030826070427.01f0a9f0@celine>
References: <bif8v7$sd7$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bif8v7$sd7$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:23 PM 8/26/2003 +1000, Robert wrote:
>My mail server has been working without a glitch for a number of months.
>All of a sudden it won't receive messages from the Internet.  Local mail
>within my network is still received.  Our ISP is under new management - so
>maybe its not a problem with my system!
>
>I'm able to access my webpage OK over the net at http://www.mydomain.com.au.
>
>Could somebody let me know whether there's a problem with my config, or is
>there a problem with my ISP?

How? You don't give us any meaningful information about either your ISP or 
your "config". You don't even say what the failures look like from the 
remote end.

Does ALL external mail not arrive, or just some sites (could be an auth 
issue if only some sites fail)?

If you bypass your usual remote-access methods anh just use vi to look at 
the mail spool file, are the messages still missing?

Are there any differences between the addressing of the local and remote 
mails? I mean something that might cause sendmail to think it is being 
asked to act as a relay when off-site mail comes in? Since you obfuscated 
at least some of the info in your test below, I can't infer anything from 
it about address issues.

The obvious thing to try as a test is telnet'ing to port 25 on your server 
from a comparably (to the e-mail failures) remote site (one outside your 
ISP's address block). Since you "substituted my address with a fictitious 
one", I cannot do that test for you,nor can anyone else here. But if that 
is the test you describe below as "telnet to my mail server from a dialup" 
(that is, if the "dialup" is from a different ISP), then you might complete 
the report of its results. After you complete the e-mail with the specified 
"." only line, what happens? Does the message go through?

Since you mention an ISP management change, the possibility that your ISP 
now blocks port-25 connections that bypass their e-mail relays is a real 
one in principle, but hard to reconcile with the test you report below (but 
since I don't know where the "dialup" is relative to your server, I can't 
be sure of anything).


>Below is a description of my setup:
>
>OS: Slackware 9.0
>Sendmail 8.12.9
>Firewall: only port 25 open to receive mail
>I access my mail with Squirrelmail and IMAP2
>
>If I telnet to my mail server from a dialup, everything looks OK (I've
>substituted my address with a fictitious one):
>----------------------------------------------------------------------------
># telnet myserver.com.au 25
>220 myserver.com.au ESMTP Sendmail 8.12.9/8.12.9; Tue, 26 Aug 2003 07:34:58
>+1000
>helo 63.60.42.226
>250 myserver.com.au Hello 1Cust226.tnt3.cbr2.da.uu.net [63.60.42.226],
>pleased to meet you
>mail from: me@mycomputer.com
>250 2.1.0 me@mycomputer.com... Sender ok
>rcpt to: robert@myserver.com.au
>250 2.1.5 robert@myserver.com.au ... Recipient ok
>data
>354 Enter mail, end with "." on a line by itself
>this is a test
>-





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
