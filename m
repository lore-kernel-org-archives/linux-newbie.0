From: Andrew <ald2@arrakis.es>
Subject: ethernet nic install
Date: Tue, 03 Aug 2004 12:30:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <410F692C.3070303@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,
I am having trouble trying to install an rtl8139 nic on a 486 running 
Slackware 9.0.

 From dmesg:
8139too Fast Ethernet driver 0.9.26
PCI: Enabling device 00:03.0 (0000 -> 0003)
PCI: No IRQ known for interrupt pin A of device 00:03.0. Please try 
using pci=biosirq.
eth1: RealTek RTL8139 Fast Ethernet at 0xc1821000, (hw address), IRQ 0
eth1:  Identified 8139 chip type 'RTL-8139C'
...
8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)

lspci lists the nic OK. The module is loaded OK. ifconfig -a shows the 
interface exists, hw addresss is correct, but no ip address. Trying to 
bring it up or give it an ip address with ifconfig gets the reply:

SIOCSIFFLAGS: Device or resource busy

I've never heard of this pci=biosirq business. If I thought it might 
help I would be delighted to 'use it', but where and how? BTW, this same 
nic works fine in other machines.

Google turns up about 3,000 people asking what pci=biosirq means. One 
reply pointed me to the kernel-documentation. It seems I should add 
append="pci=biosirq" in lilo.conf. This has made no difference except 
that I now get the following message in dmesg:

PCI: Error b1 when fetching IRQ routing table.

Any insights?
TIA,
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
