From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 19:32:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266024F5@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Well my reason for not giving is that it is a public IP and does not have
any firewalls in place. This exposes my server much more to unauthorized
"visit"

Anyway...lets get down to getting this done.

I am on RH Linux 8
uname -a is Linux 2.4.18
netstat -nr gives
192.168.1.0			0.0.0.0		255.255.255.0		U
eth1
xxx.xxx.xxx.0		0.0.0.0		255.255.255.0		U	eth0
127.0.0.1			0.0.0.0		255.0.0.0
U	lo
0.0.0.0			xxx.xxx.xxx.1	0.0.0.0			UG	eth0

ifconfig gives me that eth0, eth1 and lo are correctly configured.

ip_forward gives a "1"

What do the gurus say???


-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: Wednesday, January 21, 2004 7:02 PM
To: linux-newbie@vger.kernel.org
Subject: RE: 2 NIC cards not talking


At 04:52 PM 1/21/2004 -0500, Chadha, Devesh wrote:
>[...]
>Ray:
>I have static IP and therefore I cannot give the actual IP address.

I don't understand why, unless for some reason you think that your IP 
address is a secret. Once you start using the address for any purpose, it 
will be known to everyone you deal with, after all.

Even if you are that secretive, we do need to know a couple of things about 
the address. One, is it a public IP address? Two, is it on a different 
network (probably what you call a "subnet") from the internal, LAN 
interface? If we don't know at least that much information reliably, then 
we won't be able to eliminate, or spot, some possible sources of your
problem.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

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
