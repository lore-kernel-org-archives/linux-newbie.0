From: Ray Olszewski <ray@comarre.com>
Subject: Re: Samba as DC
Date: Sun, 27 Apr 2003 23:34:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030427232201.01f493c0@celine>
References: <000201c30d2b$968e0330$4b01a8c0@deadbox>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000201c30d2b$968e0330$4b01a8c0@deadbox>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I cannot fully answer your question, becauswe a full answer requires that 
someone instruct you about how to configure a WiFi router of unknown make 
and model. Even *we* aren't that good.

It is likely, though, that your WiFi WAP/router is like mine ... it is a 
NAT'ing router. That means that there is no straightforward way to combine 
the WiFi network and the wireline network on the other side of it. To 
confirm my guess, see if a host on the wireline LAN can ping your laptop 
... if I'm guessing correctly, it will fail (either with "host unreachable" 
or silently ... depends on the routing table of your wireline router).

In any case, unless the WiFi router has a bridging mode (not implausible, 
but you've told us nothing about this device), just changing the netmasks 
from /24 to /16 won't fix your problem, and trying it will probably make a 
mess (the WiFi router won't route to the wireline LAN properly, most likely).

Figuring out the best way to solve this gets us way down the road of WiFi 
security ... even if you can use a bridging mode, do you want to? Is WEP 
adequate to secure your LAN (assuming you're even using WEP on the WiFi LAN)?

At 08:12 PM 4/27/2003 -0600, Chris Rose wrote:
>
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>First off, i'll confess that i know very little about exactly what a 
>domain controller does, so i might be barking up the wrong tree, here, and 
>there may be a much simpler solution.
>
>I have a firewall (Clarkconnect - they're really good) that acts as a 
>router for my home network/cable internet.  It currently provides DHCP 
>services and NAT.
>
>I just bought a wireless router, though, and now i have a problem.  My 
>laptop is now on the router's subnet (192.168.0.*) while the rest of the 
>systems are on the firewall's internal subnet, along with the WAN side of 
>the wireless router (192.168.1.*)
>
>What i want is to get filesharing working again between all these 
>systems...  Is it as simple as changing the subnet masks from 
>255.255.255.0 to 255.255.0.0?  Or do i have to set up DC services on the 
>firewall?  And if i do, how do i do it?
>
>Thanks in advance...



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
