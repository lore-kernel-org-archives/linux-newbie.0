From: chuck gelm net <chuck@gelm.net>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 16:44:33 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400EF2C1.A9743C8F@gelm.net>
References: <5F84A09ECDD5D411973000508BE32470266024E3@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Chadha, Devesh" <devesh.chadha@lehman.com>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Hello, Chadha:

 You do not show how you attempt the 'ping',
nor the error message.

Please show exact ping command attempt.
Please show output of 'netstat -r -n'.

 Both cards (should not, cannot) be on the same subnet
for the 'firewall/router' to function.  The 'firewall/router'
should show a route to the local LAN (eth1) for all addresses as
192.168.x.y and a default route (0.0.0.0) to eth0.

An old 'netstat -n -r' of mine looked like:
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt
Iface
67.39.15.254    0.0.0.0         255.255.255.255 UH        0 0          0
ppp0
192.168.0.0     0.0.0.0         255.255.255.0   U         0 0          0
eth0
127.0.0.0       0.0.0.0         255.0.0.0       U         0 0          0
lo
0.0.0.0         67.39.15.254    0.0.0.0         UG        0 0          0
ppp0

 In the above case, ppp0 was a ppp-over-ethernet association with eth1.
You should mask out your real IP address for security (if static).

HTH, Chuck
p.s. I have never understood the signature threat! ? ! ? 
Perhaps a separate email identity for public messages?



 

"Chadha, Devesh" wrote:
> 
> Hi,
> 
> I have a linux box with 2 NIC cards, both are properly configured. Both are
> on the same subnet, but still don't ping to one another!!
> 
> I need to setup the box as the firewall/router that has eth0 set as external
> and eth1 as internal serving as DHCP server to other computers on the
> network. Both have static IPs assigned to them.
> 
> Regards,
> Devesh
> 6-6859
> 
> ------------------------------------------------------------------------------
> This message is intended only for the personal and confidential use of the
> designated recipient(s) named above.  If you are not the intended recipient of
> this message you are hereby notified that any review, dissemination,
> distribution or copying of this message is strictly prohibited.  This
> communication is for information purposes only and should not be regarded as
> an offer to sell or as a solicitation of an offer to buy any financial
> product, an official confirmation of any transaction, or as an official
> statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
> secure or error-free.  Therefore, we do not represent that this information is
> complete or accurate and it should not be relied upon as such.  All
> information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
