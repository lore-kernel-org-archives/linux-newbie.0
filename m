From: Ray Olszewski <ray@comarre.com>
Subject: Re: eth0 promiscuous mode
Date: Fri, 30 Aug 2002 09:24:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020830091825.02180090@celine>
References: <5.1.0.14.1.20020829210529.02179020@celine>
 <200208300931.14643.natarajan_k@hotpop.com>
 <5.1.0.14.1.20020829210529.02179020@celine>
 <5.1.0.14.1.20020830063513.021bd240@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D6F9AC0.2030501@tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: David Yeu <dyeu@tulane.edu>, linux-newbie@vger.kernel.org

See below.

At 11:18 AM 8/30/02 -0500, David Yeu wrote:


>Ray Olszewski wrote:
>>
>>Normally, the firmware in a NIC filters incoming traffic and passes to 
>>the OS only those Ethernet frames that are addressed to the NIC's 
>>hardware (MAC) address. When in promiscuous mode, the NIC firmware passes 
>>ALL Ethernet frames up the ladder, not just ones sent to its MAC address. 
>>tcpdump is probably the most common app that uses promisc mode, but there 
>>are others.
>
>Don't mean to hijack the thread, but I have a related question:
>
>Will promiscuous mode work properly if my computer is plugged into a 
>switch? I've tried unsuccessfully to use tcpdump or tethereal to view

Yes. Promiscuous mode *itself * still works properly, in that the NIC 
*itself* still passes on evey frame it sees.. But an app like tcpdump will 
not see all packets because the *switch* only sends out on the port to the 
NIC frames that are intended for the NIC's MAC address (or Ethernet 
broadcast frames).

Some switches (but not the cheap ones, like the one I have, and very likely 
the one you have, if you are a home user) have special ports that do 
receive all frames, just to permit traffic monitoring by sysadmins.

>all the network traffic, but I'm always confined to traffic that either
>originates or is destined to my machine (broadcasts too).  Or is it
>perhaps the NIC?  Do all NICs have the ability to go into promiscuous
>mode?

I don't know that *all* NICs can ... but I have never encountered one that 
cannot.


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
