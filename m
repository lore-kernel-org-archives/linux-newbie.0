From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Problem running two domains on one Apache server
Date: Wed, 18 Jun 2003 13:06:36 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <008c01c33546$a1822670$d700a8c0@iih.usyd.edu.au>
References: <1055903157.9558.9.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nilesh Sahita <nksahita@softhome.net>, linux-newbie@vger.kernel.org

Nilesh Sahita wrote:
> When I access http://nstest1.homedns.org, I serves up
> test1/index.html - which is what I expected.  However, when I access
> http://nstest2.homedns.org, it serves up test1/index.html instead of
> test2/index.html.

Are you accessing the sites inside a local network?  Some routers and
firewalls have issues with internal loopback and virtual domains.

If you are behind a router/firewall then try to connect from outside the
network and see what happens.

Hope that helps.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
