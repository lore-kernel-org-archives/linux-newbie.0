From: Rajat Jain <rajatjain@juniper.net>
Subject: [PCIe spec question] How to get PCI express link up / link down
 notifications?
Date: Fri, 4 Oct 2013 01:40:49 +0000
Message-ID: <1fa2fecbcbe147cc83a3011ff23e3d1a@BN1PR05MB123.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-pci-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-hotplug@vger.kernel.org" <linux-hotplug@vger.kernel.org>
Cc: Guenter Roeck <groeck@juniper.net>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hello,

I have a HW which is not compliant with the PCI Express hot-plug (as described in the PCI express spec) because the HP signals from the downstream port are simply not connected. And I have a PCI express endpoint, that in the course of its life, will routinely undergo power-off and power-on on cycles. Hence the PCIe link to this device is expected to come down, and come up as part of regular operation.

I'm reading the PCI express spec trying to understand if it is possible to get notification interrupts, whenever the PCIe link to this device goes down or goes up. Can someone please help me understand if it is possible?

In the link control register, I only see the capability to generate interrupts when "link bandwidth" changes and looking at the text, I doubt if Link down or link up counts as "link bandwidth change". Is there a way to generate and interrupt / notification when the Link goes up or down?

Thanks,

Rajat Jain


