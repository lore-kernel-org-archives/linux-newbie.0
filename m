From: Peter <heisspf@skyinet.net>
Subject: Re: Netconfig Fail
Date: Sat, 8 Oct 2005 14:33:36 -0400
Message-ID: <20051008143336.4b907ad5.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi,

Slackware 10.1 kernel 2.4.29

My onboard LAN card on the mobo failed and I had to switch to an external LAN card.

I disabled in BIOS Ethernet onboard. Then I did netconfig. Slackware found the LAN card I entered all necessary data and the configuration went w/o any errors.
Unfortunately no I cannot connect any longer to the Internet in Slackware yet still in edora4 and DSL.

As requested by Ray
Here are the ouputs of ifconfig -a, lsmod and dmesg of the 3 different distros:

slackware ifconfig -a
eth0      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
          BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:10 errors:0 dropped:0 overruns:0 frame:0
          TX packets:4 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:640 (640.0 b)  TX bytes:2360 (2.3 Kb)
          Interrupt:10 Base address:0xec00 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:8 errors:0 dropped:0 overruns:0 frame:0
          TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:784 (784.0 b)  TX bytes:784 (784.0 b)

Fedora4 ifconfig -a
eth1      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
          inet addr:192.169.232.15  Bcast:192.169.255.255  Mask:255.255.224.0
          inet6 addr: fe80::208:a1ff:fe8c:445a/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:118 errors:0 dropped:0 overruns:0 frame:0
          TX packets:98 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:17362 (16.9 KiB)  TX bytes:8160 (7.9 KiB)
          Interrupt:10 Base address:0xec00 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:16 errors:0 dropped:0 overruns:0 frame:0
          TX packets:16 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:1168 (1.1 KiB)  TX bytes:1168 (1.1 KiB)

sit0      Link encap:IPv6-in-IPv4  
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)

DSL ifconfig -a
eth0      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
          inet addr:192.169.232.15  Bcast:192.169.255.255  Mask:255.255.224.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:53021 errors:0 dropped:0 overruns:0 frame:0
          TX packets:37952 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:71131414 (67.8 MiB)  TX bytes:2597337 (2.4 MiB)
          Interrupt:10 Base address:0xec00 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:2 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:100 (100.0 B)  TX bytes:100 (100.0 B)

In the following lsmod I cut out the snd- bits since they are very long.

Slackware lsmod

Module                  Size  Used by    Not tainted
dazuko                 28372   0 (unused)
gameport                1420   0 [snd-via82xx]
lp                      6404   0 (autoclean)
parport                22824   1 (autoclean) [parport_pc lp]
pcmcia_core            39172   0
ide-scsi                9392   0
tulip                  39200   0
crc32                   2880   0 [tulip]
agpgart                45092   0 (unused)

Fedora lsmod

Module                  Size  Used by
md5                     4033  1 
ipv6                  268097  10 
parport_pc             28933  1 
lp                     13001  0 
parport                40585  2 parport_pc,lp
autofs4                29253  2 
sunrpc                167813  1 
ipt_REJECT              5569  1 
ipt_state               1857  7 
ip_conntrack           41497  1 ipt_state
iptable_filter          2881  1 
ip_tables              19521  3 ipt_REJECT,ipt_state,iptable_filter
ide_scsi               18761  0 
scsi_mod              148105  1 ide_scsi
dm_mod                 58101  0 
video                  15941  0 
button                  6609  0 
battery                 9413  0 
ac                      4805  0 
uhci_hcd               35152  0 
ehci_hcd               41037  0 
shpchp                 94405  0 
i2c_viapro              8017  0 
i2c_core               21569  1 i2c_viapro
dmfe                   23525  0 
floppy                 65269  0 
ext3                  132553  4 
jbd                    86233  1 ext3

DSL lsmod

Module                  Size  Used by    Not tainted
mousedev                3832   0 (unused)
hid                    22372   0 (unused)
input                   3168   0 [mousedev hid]
af_packet              13544   0 (autoclean) 
reiserfs              169616   1 (autoclean) 
ext3                   64452   2 (autoclean) 
jbd                    46516   2 (autoclean)  [ext3]
nls_iso8859-1           2844   0 (autoclean) 
nls_cp437               4348   0 (autoclean) 
agpgart                42660   0 (unused)
via82cxxx_audio        19448   1
ac97_codec             11916   0 [via82cxxx_audio]
uart401                 6052   0 [via82cxxx_audio]
sound                  55276   0 [via82cxxx_audio uart401]
soundcore               3428   4 [via82cxxx_audio sound]
dmfe                   11905   1
crc32                   2816   0 [dmfe]
serial                 52100   0 (autoclean) 
pcmcia_core            39840   0
rtc                     7036   0 (autoclean) 
cloop                   8740   2
ieee1394              183076   0
usb-storage            61696   0 (unused)
usb-uhci               21644   0 (unused)
usbcore                57600   1 [hid usb-storage usb-uhci]
ataraid                 6180   0
ide-cd                 28512   0
ide-scsi                8816   1

dmesg the part of showing the ethernet card:

Slackware dmesg

Linux agpgart interface v0.99 (c) Jeff Hartmann
agpgart: Maximum main memory to use for agp memory: 409M
agpgart: Detected Via Apollo P4M266 chipset
agpgart: AGP aperture is 64M @ 0xe0000000
Linux Tulip driver version 0.9.15-pre12 (Aug 9, 2002)
tulip0:  MII transceiver #1 config 3100 status 7829 advertising 01e1.
eth0: Davicom DM9102/DM9102A rev 64 at 0xec00, 00:08:A1:8C:44:5A, IRQ 10.
scsi0 : SCSI host adapter emulation for IDE ATAPI devices

Fedora4 dmesg

FDC 0 is a post-1991 82077
dmfe: Davicom DM9xxx net driver, version 1.36.4 (2002-01-17)
ACPI: PCI Interrupt Link [LNKD] enabled at IRQ 10
PCI: setting IRQ 10 as level-triggered
ACPI: PCI Interrupt 0000:00:0b.0[A] -> Link [LNKD] -> GSI 10 (level, low) ->
IRQ 10
eth0: Davicom DM9102 at pci0000:00:0b.0, 00:08:a1:8c:44:5a, irq 10.
ACPI: PCI Interrupt Link [LNKC] enabled at IRQ 5
PCI: setting IRQ 5 as level-triggered
ACPI: PCI Interrupt 0000:00:11.5[C] -> Link [LNKC] -> GSI 5 (level, low) ->
IRQ
5
PCI: Setting latency timer of device 0000:00:11.5 to 64
shpchp: shpc_init : shpc_cap_offset == 0
---snip---
eth1: no IPv6 routers present

DSL dmesg

ttyS01 at 0x02f8 (irq = 3) is a 16550A
parport0: PC-style at 0x378 [PCSPP,TRISTATE,EPP]
dmfe: Davicom DM9xxx net driver, version 1.36.4 (2002-01-17)
eth0: Davicom DM9102 at pci00:0b.0, 00:08:a1:8c:44:5a, irq 10.

That's all for now

Regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
