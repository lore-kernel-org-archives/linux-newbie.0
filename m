From: ali shahrokni <shahrokni@gmail.com>
Subject: Firewire camera and PCMCIA card under Debian
Date: Mon, 11 Sep 2006 17:39:56 +0100
Message-ID: <4505915C.5090706@laposte.net>
References: <4505910C.8030505@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4505910C.8030505@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,
I am trying to connect a unibrain firewire camera to my T40 thinkpad 
using a PCMCIA firecard. I am running debian testing and kernel 2.6.15.
The card is detected and the output of dmeg follows but the camera 
doesn't even turn on and nothing happens when I connect it to the card! 
Any help would be greatly appreciated.
Cheers,
Ali

> ieee1394: raw1394: /dev/raw1394 device initialized
> video1394: Installed video1394 module
> usb 2-2: new full speed USB device using uhci_hcd and address 3
> pccard: card ejected from slot 1
> ieee1394: Node removed: ID:BUS[0-00:1023]  GUID[0814435800000528]
> ohci1394: fw-host0: Set PHY Reg timeout [0xffffffff/0x00004000/100]
> ohci1394: fw-host0: Set PHY Reg timeout [0xffffffff/0x00004000/100]
> pccard: CardBus card inserted into slot 1
> PCI: Enabling device 0000:07:00.0 (0000 -> 0002)
> ACPI: PCI Interrupt 0000:07:00.0[A] -> Link [LNKB] -> GSI 11 (level, 
> low) -> IRQ 11
> PCI: Setting latency timer of device 0000:07:00.0 to 64
> ohci1394: fw-host0: OHCI-1394 1.0 (PCI): IRQ=[11]  
> MMIO=[c4004000-c40047ff]  Max Packet=[2048]
> eth1394: eth1: IEEE-1394 IPv4 over 1394 Ethernet (fw-host0)
> ieee1394: Host added: ID:BUS[0-00:1023]  GUID[0814435800000528]
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
