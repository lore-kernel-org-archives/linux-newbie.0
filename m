From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: DNS server
Date: Fri, 20 Feb 2004 18:52:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4607acb4606bd1.4606bd14607acb@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>

Hi,
How does one enter preferred DNS addresses to be used in linux?

I found that IP address, netmask, network address can be assigned in this file /etc/sysconfig/network-scripts/ifcfg-eth0 for interface eth0.

Can DNS server list be added here too? If yes, what name is given for it?

DEVICE=eth0
IPADDR=208.164.186.4
NETMASK=255.255.255.248
NETWORK=208.164.186.1

What would the name be for DNS server?

Thanks.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
