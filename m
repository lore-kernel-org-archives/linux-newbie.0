From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 11:47:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266024EA@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "'pa3gcu@zeelandnet.nl'" <pa3gcu@zeelandnet.nl>, linux-newbie list <linux-newbie@vger.kernel.org>

Thanks Richard,

I would try that!!

A little history..
I have tried the home network howto and the script given there, but it did
not work. I tried to understand iptables and write them myself, that didn't
work! I have now loaded firestarter firewall....but still no result.

I shall try your solution after I reach home and get back to you tomorrow.

Regards,
Devesh


-----Original Message-----
From: pa3gcu [mailto:pa3gcu@zeelandnet.nl] 
Sent: Wednesday, January 21, 2004 11:38 AM
To: Chadha, Devesh; linux-newbie list
Subject: Re: 2 NIC cards not talking


On Wednesday 21 January 2004 16:23, Chadha, Devesh wrote:
> Juan,
>
> Eth0 has the external assigned IP by my ISP. Eth1 has a 192.168.x.x ip 
> address. Eth1 acts as the DHCP server for my LAN. My LAN is working 
> fine. I can connect machines to the LAN and even connect one machine 
> to another.
>
> But I cannot get eth1 to talk to eth0. I cannot connect the LAN to the 
> internet nor connect to any internal machine from outside!!

Then you need "masquerading", in otherwords iptables or ipchains. Also make
sure /proc/sys/net/ipv4/ip_forward is set to "1"

Something like the following for iptables;

#!/bin/sh

iptables --flush            # Flush all the rules in filter and nat tables
iptables --table nat --flush
iptables --delete-chain     #chains that are not in default filter/nat table
iptables --table nat --delete-chain

# Set up IP FORWARDing and Masquerading
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
iptables --append FORWARD --in-interface eth1 -j ACCEPT

echo 1 > /proc/sys/net/ipv4/ip_forward  # Enables packet forwarding by
kernel This is a must for both examples.

Or the following with ipchains.
/sbin/ipchains -A forward -s 192.168.11.0/24 -j MASQ
Change to suit your subnet.

> Do I need to bridge the 2 NICs ???

No.

> Regards,
> Devesh
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/




------------------------------------------------------------------------------
This message is intended only for the personal and confidential use of the
designated recipient(s) named above.  If you are not the intended recipient of
this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regarded as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
secure or error-free.  Therefore, we do not represent that this information is
complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
