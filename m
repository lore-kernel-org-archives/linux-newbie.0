From: chuck gelm <chuck@gelm.net>
Subject: Re: RTL network card problem
Date: Tue, 21 Sep 2004 19:43:50 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4150BCB6.2010108@gelm.net>
References: <cipis0$jcg$1@sea.gmane.org>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cipis0$jcg$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ole Martin Handeland <oli@oasenlan.com>
Cc: linux-newbie@vger.kernel.org

Ole Martin Handeland wrote:

> Hi,
>
> When i just inserted this second network card my redhat network config 
> shows this:
>
> Desc.            Type        Device        Status
> RTL-8139/8139C/8139C+     Ethernet    eth0        ok
> RTL-8139/8139C/8139C+     Unknown        dev22193    ok
>
> Yes, i have two pci slots with two identical cards in.
> ifconfig shows this:
>
> dev22193  Link encap:Ethernet  HWaddr 00:E0:4C:39:32:3F
>           inet addr:192.168.0.5  Bcast:192.168.0.255  Mask:255.255.255.0
>           inet6 addr: fe80::2e0:4cff:fe39:323f/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:55 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:0 (0.0 b)  TX bytes:7474 (7.2 Kb)
>           Interrupt:10 Base address:0xc000
>
> eth0      Link encap:Ethernet  HWaddr 00:10:A7:13:CB:0D
>           inet addr:192.168.1.101  Bcast:192.168.1.255
>       Mask:255.255.255.0
>           inet6 addr: fe80::210:a7ff:fe13:cb0d/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:108 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:37 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:16616 (16.2 Kb)  TX bytes:4623 (4.5 Kb)
>           Interrupt:11 Base address:0xc400
>
> So, my question is: why is this network card just partially found? my 
> kudzu found it, i configured it, and it dont work...?
>
> System: 700mhz celeron, 256mb ram, fedora core 2, and, as you see, one 
> and a half network cards... 

They may not be identical.
What does 'cat /proc/pci' show, relative to the two cards?
What is shown when the system is booted with one card at a time?
HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
