From: "John T. Williams" <jowillia@vt.edu>
Subject: DNS DHCP
Date: 24 Dec 2003 17:21:08 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1072304468.9715.11.camel@localhost>
Reply-To: jtwilliams@vt.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have been trying to get a dns running in my father's intranet.  The
situation is that he gets dsl severs witch is split by a belkin wireless
router.  Using bind9, I have successfully configured one of the
computers in the intra net as a dns server, and have manually created
zone files which allow for the successful resolving of computer names in
the intranet.  All of this is happy and good, however I fear greatly
getting a call from my father asking me to fix it, every time the ip
address changes on one of the computers.  The problem I'm having is
figuring out how to update the zone files and reload the dns server when
a change occurs to the dhcp table.  I was wondering if anyone had any
suggestions, or am I doomed to fix this by hand forever more?  I realize
that I'm am probably not providing enough information, but was unsure
what else to include. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
