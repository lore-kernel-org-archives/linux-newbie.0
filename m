From: Ray Olszewski <ray@comarre.com>
Subject: Re: DNS server
Date: Fri, 20 Feb 2004 16:22:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040220161839.01f7d178@celine>
References: <4607acb4606bd1.4606bd14607acb@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4607acb4606bd1.4606bd14607acb@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Anshuman Singh Rawat <asr245@nyu.edu>, Linux-Newbie <linux-newbie@vger.kernel.org>

At 06:52 PM 2/20/2004 -0500, Anshuman Singh Rawat wrote:
>Hi,
>How does one enter preferred DNS addresses to be used in linux?
>
>I found that IP address, netmask, network address can be assigned in this 
>file /etc/sysconfig/network-scripts/ifcfg-eth0 for interface eth0.
>
>Can DNS server list be added here too? If yes, what name is given for it?
>
>DEVICE=eth0
>IPADDR=208.164.186.4
>NETMASK=255.255.255.248
>NETWORK=208.164.186.1
>
>What would the name be for DNS server?

The usual place to enter the DNS server addresses is in the file 
/etc/resolv.conf . This file has a man page you can consult for the 
details, but the simplest version just has lines like these:

         nameserver 192.168.1.40
         nameserver 192.168.1.2

Some configuration tools will modify or overwrite this file, and DHCP 
clients can modify it if they get DNS-server info as part of a lease ... so 
there are distro-specific and site-specific elements to this question.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
