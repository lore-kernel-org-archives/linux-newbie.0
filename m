From: Ray Olszewski <ray@comarre.com>
Subject: Re: Public & private IP addresses via IP Aliasing?
Date: Thu, 18 Sep 2003 18:48:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030918183814.01fd46f8@celine>
References: <20030918.182332.16221.402979@webmail11.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030918.182332.16221.402979@webmail11.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:22 AM 9/19/2003 +0000, beolach@juno.com wrote:

>On my home network, I am currently using IP-masquerading (aka NAT)
>on my linux gateway to provide internet access for the local net.
>This has been working fine in general, but I have some problems
>with internet multiplayer in certain games that I believe are due
>to the IP-masqing.  My ISP provides public addresses via DHCP, but
>I prefer having static addresses on the local net.  I was wondering
>if I could use both public & private addresses via IP Aliasing.
>
>Would this work?
>
>          Internet
>              |
>              |
>Gateway |- eth0 public dynamic address
>         |- eth1:0 bridged with eth0
>         |- eth1:1 private static address
>               |
>Local Net |- eth0:0 public dynamic address
>           |- eth0:1 private static address

Whether this would work or not depends on one detail that you were too 
vague about. Do you have two public addresses or only one? That is, do you 
want Local Net:eth0:0 to have the *same* IP address as Gateway:eth0 or a 
different address?

If they need to be the same address, then I do not know how to do it and 
suspect that there is no way to do it.

If they are different, the only piece that is not obvious is how to get the 
dynamic-public address assigned to the Local Net host. Normally, DHCP 
queries and replies do not cross routers, so you need a DHCP proxy running 
on the Gateway. There is such an application for Linux, called dhcp-relay 
... your distro's packaging system probably has it.

You also have to get the routing table on Local Net right, so it knows 
which interface/IP address to use for which traffic. And you probably have 
to proxy-arp the Local Net dynamic address on Gateway, since yuor ISP will 
not know that its public IP address is their route to the Local Net host. 
(Your bridging approach may take care of that ... I haven't done bridging 
recently enough to remember the details ... but I suspect that proxy arp 
will prove easier to implement.)

Finally ... games do have problems with standard NAT; they often require 
port forwarding to work. Also, sometimes the clients need to be told the 
external IP address through their configuration menus (this is something of 
a nuisance when dynamic addresses change). Depending on the specific games 
you are concerned with, you might find it easier to implement port 
forwarding for them.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
