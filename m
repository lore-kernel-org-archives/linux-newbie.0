From: Ole Martin Handeland <oli@oasenlan.com>
Subject: RTL network card problem
Date: Tue, 21 Sep 2004 17:54:34 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <cipis0$jcg$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

When i just inserted this second network card my redhat network config 
shows this:

Desc.			Type		Device		Status
RTL-8139/8139C/8139C+ 	Ethernet	eth0		ok
RTL-8139/8139C/8139C+ 	Unknown		dev22193	ok

Yes, i have two pci slots with two identical cards in.
ifconfig shows this:

dev22193  Link encap:Ethernet  HWaddr 00:E0:4C:39:32:3F
           inet addr:192.168.0.5  Bcast:192.168.0.255  Mask:255.255.255.0
           inet6 addr: fe80::2e0:4cff:fe39:323f/64 Scope:Link
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
           TX packets:55 errors:0 dropped:0 overruns:0 carrier:0
           collisions:0 txqueuelen:1000
           RX bytes:0 (0.0 b)  TX bytes:7474 (7.2 Kb)
           Interrupt:10 Base address:0xc000

eth0      Link encap:Ethernet  HWaddr 00:10:A7:13:CB:0D
           inet addr:192.168.1.101  Bcast:192.168.1.255
	  Mask:255.255.255.0
           inet6 addr: fe80::210:a7ff:fe13:cb0d/64 Scope:Link
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
           RX packets:108 errors:0 dropped:0 overruns:0 frame:0
           TX packets:37 errors:0 dropped:0 overruns:0 carrier:0
           collisions:0 txqueuelen:1000
           RX bytes:16616 (16.2 Kb)  TX bytes:4623 (4.5 Kb)
           Interrupt:11 Base address:0xc400

So, my question is: why is this network card just partially found? my 
kudzu found it, i configured it, and it dont work...?

System: 700mhz celeron, 256mb ram, fedora core 2, and, as you see, one 
and a half network cards...

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
