From: "Phillip Morgan" <pmorgan@qpbd999.quickpages.net.au>
Subject: (unknown)
Date: Wed, 1 May 2002 20:02:36 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <aar4eb$7qt$2@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Subject: 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: linux-admin@vger.kernel.org

Hi all,

I have 2 slackware linux servers (kernel 2.2.6), running on a lan with 
a winNt4 Sp6 system, and 10 Windows XP clients. One linux is primary 
DNS, web (apache), mail (sendmail), and ftp/telnet. The second linux is 
for secondary DNS and backup only.

NT box is the pdc for the users and also runs MS SQL and coldfusion. 

I am converting over to ADSL and my ISP has given me 4 IP addresses 
only. One for each server and one for the router. The servers public 
addresses are 61.95.1.221 - 61.95.1.223, and the router is 61.1.95.220. 
The private addresses are 192.168.0.2 - 192.168.0.4, with the router 
being 192.168.0.1 (the gateway for all clients). They say they have 
correctly NAT'd the public to private addresses.

I'm running Bind 8 for the named/dns

I host 5 domains, and they share a single IP (ie they use named based 
virtual hosting).

Problem is it don't work.

I set up the DNS files with the public addresses and redelegated the 
domains. Couldn't get to web site from outside, but what's even worse, 
none of the internal clients could receive email, display any of the 
websites, but could send email and surf outbound.

So, question - what is the right way to do this? Where might I find 
some detailed documentation on this set up?

ps. When I did get the DNS files set up, the primary dns server sent a 
notify to the secondary, which then said it reeceived the notify from 
itself, which is a non-master??? Say what?

Cheers
-- 
Phill

://www.quickpages.biz
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
