From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Intranet/Internet Email Server
Date: Tue, 17 Sep 2002 15:47:37 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003a01c25e83$1380f3a0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I want to setup intranet mail for 30+ users.  Now some of these users
have InterNET email through our hosting company. If the mail is from
them and to an outside address I want the server to pass the message to
our mail server at the hosting company. If the message is from a user
that we do not want to have interNET mail then I want the message
bounced back to the user.

Things that I would like but are not necessary.
I would like to be able to have all incoming and outgoing mail scanned
for virus. If this creates to much overhead then I would scrap this
idea.

I am not asking for step by step instructions but if you could help me
out on what apps I would want to handle all of this that would be great.
I have been reading a little on sendmail and I think that it can handle
all off these things but I have not researched it enough yet.

System
-----------
Red Hat 7.3
1.6ghz
256mb ram

Other things i plan to run incase you where wondering
----------
Hylafax
Squid

* on a side not would recompiling the kernal to only have the exact
options i need and not installing any x-windows create a system boost in
performance. Would it even be noticable?

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
