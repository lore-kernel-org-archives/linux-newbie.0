From: Ray Olszewski <ray@comarre.com>
Subject: Re: Firewire camera and PCMCIA card under Debian
Date: Mon, 11 Sep 2006 23:41:49 -0700
Message-ID: <450656AD.6010901@comarre.com>
References: <450590B2.4000809@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <450590B2.4000809@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
To: linux-newbie@vger.kernel.org

ali shahrokni wrote:
> Hello,
> I am trying to connect a unibrain firewire camera to my T40 thinkpad=20
> using a PCMCIA firecard. I am running debian testing and kernel 2.6.1=
5.
> The card is detected and the output of dmeg follows but the camera=20
> doesn't even turn on and nothing happens when I connect it to the car=
d!=20
> Any help would be greatly appreciated.
> Cheers,
> Ali

Ali --

I looked at http://www.linux1394.org/. Their "compatibility list" puts=20
the Fire-i digital camera and the Fire-i400 both in the "Works Great"=20
class. Both use ohci1394, which your dmesg output below says you are=20
loading.

The Unibrain page on "detailed product specs" mentions the possibility=20
of the camera needing a separate DC input to work. It says:

"Fire-i=99 Digital Camera is provided with a DC power input jack=20
connector, that can be used when the FireWire connection does not=20
provide DC power. This happens typically:

     "* when the FireWire bus is converted to a 4-pin connection
     "* when, in 6-pin, no powering device is present, even from the=20
=46ireWire interface. This is the case when using CardBus FireWire=20
adapters or on some laptops with built-in interface"

The "doesn't even turn on" part of your message makes me suspect that=20
you have this power problem ... not a Linux problem as such but a=20
hardware problem. Only a guess, though.

If that's it, there is info on using DC adapters at=20
http://www.unibrain.com/Products/VisionImg/tSpec_Fire_i_DC.htm

>=20
> ieee1394: raw1394: /dev/raw1394 device initialized
> video1394: Installed video1394 module
> usb 2-2: new full speed USB device using uhci_hcd and address 3
> pccard: card ejected from slot 1
> ieee1394: Node removed: ID:BUS[0-00:1023]  GUID[0814435800000528]
> ohci1394: fw-host0: Set PHY Reg timeout [0xffffffff/0x00004000/100]
> ohci1394: fw-host0: Set PHY Reg timeout [0xffffffff/0x00004000/100]
> pccard: CardBus card inserted into slot 1
> PCI: Enabling device 0000:07:00.0 (0000 -> 0002)
> ACPI: PCI Interrupt 0000:07:00.0[A] -> Link [LNKB] -> GSI 11 (level,=20
> low) -> IRQ 11
> PCI: Setting latency timer of device 0000:07:00.0 to 64
> ohci1394: fw-host0: OHCI-1394 1.0 (PCI): IRQ=3D[11] =20
> MMIO=3D[c4004000-c40047ff]  Max Packet=3D[2048]
> eth1394: eth1: IEEE-1394 IPv4 over 1394 Ethernet (fw-host0)
> ieee1394: Host added: ID:BUS[0-00:1023]  GUID[0814435800000528]
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
