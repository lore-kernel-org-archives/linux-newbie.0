From: "Adam" <adam@luchjenbroers.com>
Subject: IPv6 Routing question
Date: Mon, 7 Feb 2005 1:04:39 -0500
Message-ID: <20050207060439.13072.qmail@m1.name2host.com>
Reply-To: "Adam" <adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



I've got a server that's mapping all incoming IPs to IPv6 addresses of the

form ::ffff:(IP Address).



Will this interfere with IPtables\routing given that they are currently

working on TCP\IPv4? Will rules matching tcp or udp protocols still match?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
