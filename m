From: Haines Brown <brownh@hartford-hwp.com>
Subject: configuring sendmail to cope with AOL
Date: Thu, 22 May 2003 15:52:30 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305221952.h4MJqU8n017518@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux@hartford-hwp.com

I'm using sendmail as my mta, but recently experienced AOL's refusal
to accept mail from "residential" sources having dynamic IP
addresses. This primitive method to cope with spam has apparently been
causing pain for several years, but for some reason it's only now
biting me.

I get the impression that the way around this is to reroute outgoing
mail to *@aol.com (and perhaps *@netscape.com) to my ISP's mail
server.

I've heard of people configuring their qmail and postfix to do this,
but I'm runnng sendmail and haven't a clue on what to do. Hand-holding
would be appreciated.

A simple question: What's involved in using an ISP's mail server? Do
all ISP's have such a server available for their customers? Do I need
permission to use it? Is it likely to involve an additional charge?

Haines Brown  
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
