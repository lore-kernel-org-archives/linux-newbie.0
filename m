From: Craig McDonald <craig@wattgroup.net>
Subject: RE: Proxy
Date: Fri, 20 Sep 2002 19:10:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1B4EC5AAAA55D511971A00B0D0AA97200E709B@SOL.wattgroup.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Received: from 192.168.100.5
          by *watt*.*;
          FRI, 20 Sep 2002 19:10:20 -0700
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 'Paul Kraus' <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org


You can create acl's with Squid to deny/permit certain sites, 
so you could create an acl with a list of site that you users are permitted
to view.
You can run a perl program called Calamaris to create reports

Squid documentation
http://squid-docs.sourceforge.net/latest/html/book1.htm

Calamaris
http://cord.de/tools/squid/calamaris/

Hope thats what you are looking for.

Craig


-----Original Message-----
From: Paul Kraus [mailto:pkraus@pelsupply.com]
Sent: 20 September 2002 18:33
To: linux-newbie@vger.kernel.org
Subject: Proxy


I want to be able to have all web traffic filter through my Linux
server. I need to be able to log all activity. Who made the request and
what pages they went to. I also need to be to use a white list. Only
allowing access to certain sites rather then a blacklist which just
refuses access to certain sites. I have been looking at the squid
package but it seems to be more of a web cache then a proxy. At least
all the documentation I have read on has be cache specific. Any
suggestions on what software I should run and maybe a link to the docs.
Thanks!

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
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
