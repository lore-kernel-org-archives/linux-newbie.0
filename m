From: David Yeu <dyeu@tulane.edu>
Subject: Re: eth0 promiscuous mode
Date: Fri, 30 Aug 2002 11:18:08 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D6F9AC0.2030501@tulane.edu>
References: <5.1.0.14.1.20020829210529.02179020@celine> <200208300931.14643.natarajan_k@hotpop.com> <5.1.0.14.1.20020829210529.02179020@celine> <5.1.0.14.1.20020830063513.021bd240@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org



Ray Olszewski wrote:
>
> Normally, the firmware in a NIC filters incoming traffic and passes to 
> the OS only those Ethernet frames that are addressed to the NIC's 
> hardware (MAC) address. When in promiscuous mode, the NIC firmware 
> passes ALL Ethernet frames up the ladder, not just ones sent to its MAC 
> address. tcpdump is probably the most common app that uses promisc mode, 
> but there are others.

Don't mean to hijack the thread, but I have a related question:

Will promiscuous mode work properly if my computer is plugged into a 
switch? I've tried unsuccessfully to use tcpdump or tethereal to view
all the network traffic, but I'm always confined to traffic that either
originates or is destined to my machine (broadcasts too).  Or is it
perhaps the NIC?  Do all NICs have the ability to go into promiscuous
mode?

Thanks in advance.

Dave.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
