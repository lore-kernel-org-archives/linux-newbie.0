From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: iptables problem.
Date: Sun, 28 Aug 2005 17:53:22 +0200
Message-ID: <200508281753.22543.pa3gcu@zeelandnet.nl>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

Hi All.

Has anybody every tryed getting a VPN connection thro his/her firewall here on 
this list.??
I can get it to work no problem with iptables FORWARD ALLOW, but not when i 
use my default setting of, FORWARD DENY and;

iptables -t nat -A PREROUTING -i eth0 -p tcp -d x.x.x.x --dport 1723 -j DNAT \ 
--to 10.11.12.28:1723
iptables -A FORWARD -i eth0 -o eth1 -p tcp -d 10.11.12.28 --dport 1723 -j \ 
ACCEPT

I also tryed the following.

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 1723 -j DNAT --to \ 
10.11.12.28
iptables -t nat -A PREROUTING -i eth0 -p 47 -j DNAT --to 10.11.12.28

I have used google and found plenty of folks with my problem, but i can seem 
to find a mail or faq site actually giving the solution.

Yes this mail may seem vauge because it possably is, but if you are a net-guru 
i certainly can supply more info and possably my whole iptables script 
off-line of course.

-- 
Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
