From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: smtp_auth using home server
Date: Thu, 28 Nov 2002 10:21:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021128092136.GA9631@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: tschulze@teamfinders.org

Hello,

Does anyone have any advice they can offer on setting up smtp_auth on my SuSE 8.0 system at home?  The problem I am trying to solve is this.  My SuSE 8.0 system here at home (dragoon.nuthole.de/localhost) is set up to send my emails out as tschulze@temfinders.org.  Teamfinders.org is a domain that I have that is hosted by a hosting service, and that service is not my ISP.  My ISP is 1&1 here in Germany, and I have a separate domain there that they offered as part of my DSL package.  Several times now I have gotten email deliveries rejected because the dynamically assigned IP I receive from 1&1 is blackholed.  There appears to possibly be an issue with the machines at those addresses being open relays used for spamming.  I have checked my mail logs, and as far as I can tell, my machine is rejecting attempts to use it as an open relay.  Several of the rejection messages have suggested the possibility that the emails would have been accepted if I had been using smtp_auth.

I have read through SuSE's configuration file at /etc/sysconfig/sendmail, and shortly I will start working my way through /usr/share/doc/packages/sendmail/README and /usr/share/doc/packages/sendmail/op.txt.bz2.  I have also printed out several articles from www.sendmail.org/~ca/ and have begun to read through those.  (That's going to take several re-reads though before I've grokked all that.)  So, I have no shortage of information on the topic.  What I was hoping for was that if anyone on the list has some helpful hints or tips from having done something like this himself, particularly setting up a home server to climb out of the black hole, then that might help me get a step ahead.

Cheers,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
