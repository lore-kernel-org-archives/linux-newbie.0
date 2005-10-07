From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netconfig Fail
Date: Fri, 07 Oct 2005 10:23:24 -0700
Message-ID: <4346AF0C.6070905@comarre.com>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>	<4344D330.2050005@comarre.com> <20051007122344.3780b5c0.heisspf@skyinet.net> <43465A15.5090708@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43465A15.5090708@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck gelm wrote:
[...]
>> Yes neither in Fedora nor in DSL had I to enter anything. In Fedora I 
>> just
>> had to activate eth1, eth0 was taken by the onboard LAN card.
> 
> 
>  It seems to me that Fedora is finding your add-on PCI card and
> assigning it eth0, yet Slackware is assigning it eth1 !?
> 
>  I expected, since you disabled the on-board ether device,
> all distributions would only find a 'eth0'.
> 
>  So, if Slackware assigns it 'eth1' and your rc.inet1.conf assigns
> DHCP to eth0, it will not work.
> 
>  Run dhcpcd from a console. If Slackware sees your PCI NIC as eth1;
> dhcpcd eth1
> 
>  If that works, you can either edit rc.inet1.conf or add
> 'dhcpcd eth1' to rc.local.
> 

Chuck -- I think you read Peter's message backwards. The ifconfig output 
he posted said (as I read it) that *Slackware* assigned the NIC to eth0, 
while *Fedora* assigned it to eth1. Not the other way aound. (I'm 
assuming, of course, that Peter is able to distinguish the 2 NICs 
correctly, presumably by having noted their MAC addresses.)

So the main thing that this means is that Peter is being inexact when he 
says yes to my question: Was everything else the same (across the 3 
tests)? I note now, in what you posted (and I requote above), that Peter 
says he did NOT disable (in the BIOS) the on-mobo NIC for the Fedora test.

As usual with these problems, the devil is in the details, and as is too 
often the case, we have here the added problem of needing to get the 
details reported correctly before we can do useful troubleshooting.

At this stage, I'd suggest that Peter repost his trouble report from the 
beginning, this time putting in all the relevant details (e.g., 
complete, unedited "ifconfig -a" output from all 3 tests; complete, 
unedited "lsmod" results from all 3 tests; complete "dmesg" output 
regarding NIC detection from all 3 tests; and complete dhcpcd, or 
whatever DHCP client the others use, logging from all 3 tests) ... and 
this time doing all 3 tests with the on-mobo NIC disabled in BIOS and 
EVERYTHING ELSE, except choice of distro, the same across all 3 tests.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
