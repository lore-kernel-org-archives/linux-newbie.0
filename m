From: Ray Olszewski <ray@comarre.com>
Subject: Re: eth0 promiscuous mode
Date: Thu, 29 Aug 2002 21:10:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020829210529.02179020@celine>
References: <200208300931.14643.natarajan_k@hotpop.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208300931.14643.natarajan_k@hotpop.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: natarajan_k@hotpop.com, Linux Newbie <linux-newbie@vger.kernel.org>

At 09:31 AM 8/30/02 +0530, Natarajan K wrote:
>HI,
>         I am part of a LAN and get my IP through DHCP. Will eth0 
> interface be put in
>promiscuous mode initially or is there any option I should use to put it in
>promiscuous mode? I use Mandrake 8.2.


Huh? You don't need your interface in promiscuous mode. Your system sends 
out a broadcast packet to request a DHCP lease, and the DHCP server 
responds with a lease offer using the MAC address of your host. You do need 
to run a DHCP client on your system ... dhcpcd, or dhclient, or pump (not 
sure that Mandrake uses) ... to request the lease.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
