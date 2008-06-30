From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: Ethernet driver (MAC connected to switch instead of PHY)
Date: Mon, 30 Jun 2008 18:28:49 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B08BAD4D6@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hi,

Perhaps not a relevant question on this list, but still trying before
posting on linux-net:

I'm doing a network driver for the MPC8313E-rdb board, which has 2
ethernet MACs. I'm successfully able to bring up the second MAC that is
connected to a Marvell PHY (and hence has a given phy address). So far
so good, but here is the problem:

As per the board documents, the first MAC is connected to an L2 switch
(Vitesse VSC7385) which is a 5 port switch (and the board actually has 5
RJ-45 ports on it). There are no phy addresses provided in the board
document for this, and as per the diagram, there is no MDC / MDIO signal
between the MAC & the Switch. So my questions:

1) In my case where MAC is connected to a 5 port switch instead of a
PHY. Is this functionally equivalent to MAC being connected to 5 PHYs?

2) Can I use the kernel generic MII routines to init / manage the
switch?

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
