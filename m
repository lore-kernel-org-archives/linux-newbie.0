From: Dennis Schridde <lindevel@gmx.net>
Subject: Re: kernel 2.6.0, error on 1024x768 console
Date: Thu, 8 Jan 2004 11:55:03 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401081052.50110.lindevel@gmx.net>
References: <00de01c3d563$72234ae0$680410ac@pcinstru1> <00ba01c3d57d$09c2de60$680410ac@pcinstru1> <20040108024413.44d275d2.onur@delipenguen.net>
Mime-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_XUU//FbTAPZquVv"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040108024413.44d275d2.onur@delipenguen.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--Boundary-00=_XUU//FbTAPZquVv
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi,
I think, I have the same problem, with my Radeon-card.

When I boot with vga=791 The screen flickers and then returns to 640x480...

My /proc/config.gz lspci -v and dmesg output is attached...

Hope you can help...

Dennis





--Boundary-00=_XUU//FbTAPZquVv
Content-Type: text/plain;
  charset="iso-8859-1";
  name="dmesg"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="dmesg"

on 16
ACPI: LAPIC_NMI (acpi_id[0x00] polarity[0x1] trigger[0x1] lint[0x1])
ACPI: IOAPIC (id[0x02] address[0xfec00000] global_irq_base[0x0])
IOAPIC[0]: Assigned apic_id 2
IOAPIC[0]: apic_id 2, version 17, address 0xfec00000, IRQ 0-23
ACPI: INT_SRC_OVR (bus[0] irq[0x0] global_irq[0x2] polarity[0x0] trigger[0x0])
ACPI: INT_SRC_OVR (bus[0] irq[0x9] global_irq[0x9] polarity[0x1] trigger[0x3])
Enabling APIC mode:  Flat.  Using 1 I/O APICs
Using ACPI (MADT) for SMP configuration information
Building zonelist for node : 0
Kernel command line: root=/dev/hda2 vga=794
Initializing CPU#0
PID hash table entries: 2048 (order 11: 16384 bytes)
Detected 1670.700 MHz processor.
Console: colour dummy device 80x25
Memory: 515240k/524224k available (1861k kernel code, 8236k reserved, 631k data, 332k init, 0k highmem)
Calibrating delay loop... 3301.37 BogoMIPS
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
Mount-cache hash table entries: 512 (order: 0, 4096 bytes)
CPU:     After generic identify, caps: 0383fbff c1c3fbff 00000000 00000000
CPU:     After vendor identify, caps: 0383fbff c1c3fbff 00000000 00000000
CPU: L1 I Cache: 64K (64 bytes/line), D cache 64K (64 bytes/line)
CPU: L2 Cache: 256K (64 bytes/line)
CPU:     After all inits, caps: 0383fbff c1c3fbff 00000000 00000020
Intel machine check architecture supported.
Intel machine check reporting enabled on CPU#0.
CPU: AMD Athlon(tm) XP 2000+ stepping 02
Enabling fast FPU save and restore... done.
Enabling unmasked SIMD FPU exception support... done.
Checking 'hlt' instruction... OK.
POSIX conformance testing by UNIFIX
enabled ExtINT on CPU#0
ESR value before enabling vector: 00000000
ESR value after enabling vector: 00000000
ENABLING IO-APIC IRQs
init IO_APIC IRQs
 IO-APIC (apicid-pin) 2-0, 2-16, 2-17, 2-18, 2-19, 2-20, 2-21, 2-22, 2-23 not connected.
..TIMER: vector=0x31 pin1=2 pin2=-1
..MP-BIOS bug: 8254 timer not connected to IO-APIC
...trying to set up timer (IRQ0) through the 8259A ...  failed.
...trying to set up timer as Virtual Wire IRQ... failed.
...trying to set up timer as ExtINT IRQ... works.
number of MP IRQ sources: 15.
number of IO-APIC #2 registers: 24.
testing the IO APIC.......................
IO APIC #2......
.... register #00: 02000000
.......    : physical APIC id: 02
.......    : Delivery Type: 0
.......    : LTS          : 0
.... register #01: 00170011
.......     : max redirection entries: 0017
.......     : PRQ implemented: 0
.......     : IO APIC version: 0011
.... register #02: 00000000
.......     : arbitration: 00
.... IRQ redirection table:
 NR Log Phy Mask Trig IRR Pol Stat Dest Deli Vect:
 00 000 00  1    0    0   0   0    0    0    00
 01 001 01  0    0    0   0   0    1    1    39
 02 000 00  1    0    0   0   0    0    0    00
 03 001 01  0    0    0   0   0    1    1    41
 04 001 01  0    0    0   0   0    1    1    49
 05 001 01  0    0    0   0   0    1    1    51
 06 001 01  0    0    0   0   0    1    1    59
 07 001 01  1    0    0   0   0    1    1    61
 08 001 01  0    0    0   0   0    1    1    69
 09 001 01  1    1    0   0   0    1    1    71
 0a 001 01  0    0    0   0   0    1    1    79
 0b 001 01  0    0    0   0   0    1    1    81
 0c 001 01  0    0    0   0   0    1    1    89
 0d 001 01  0    0    0   0   0    1    1    91
 0e 001 01  0    0    0   0   0    1    1    99
 0f 001 01  0    0    0   0   0    1    1    A1
 10 000 00  1    0    0   0   0    0    0    00
 11 000 00  1    0    0   0   0    0    0    00
 12 000 00  1    0    0   0   0    0    0    00
 13 000 00  1    0    0   0   0    0    0    00
 14 000 00  1    0    0   0   0    0    0    00
 15 000 00  1    0    0   0   0    0    0    00
 16 000 00  1    0    0   0   0    0    0    00
 17 000 00  1    0    0   0   0    0    0    00
IRQ to pin mappings:
IRQ0 -> 0:2
IRQ1 -> 0:1
IRQ3 -> 0:3
IRQ4 -> 0:4
IRQ5 -> 0:5
IRQ6 -> 0:6
IRQ7 -> 0:7
IRQ8 -> 0:8
IRQ9 -> 0:9
IRQ10 -> 0:10
IRQ11 -> 0:11
IRQ12 -> 0:12
IRQ13 -> 0:13
IRQ14 -> 0:14
IRQ15 -> 0:15
.................................... done.
Using local APIC timer interrupts.
calibrating APIC timer ...
..... CPU clock speed is 1670.0254 MHz.
..... host bus clock speed is 267.0240 MHz.
NET: Registered protocol family 16
PCI: PCI BIOS revision 2.10 entry at 0xfb4c0, last bus=2
PCI: Using configuration type 1
mtrr: v2.0 (20020519)
ACPI: Subsystem revision 20031002
IOAPIC[0]: Set PCI routing entry (2-9 -> 0x71 -> IRQ 9 Mode:1 Active:0)
ACPI: Interpreter enabled
ACPI: Using IOAPIC for interrupt routing
ACPI: PCI Root Bridge [PCI0] (00:00)
PCI: Probing PCI hardware (bus 00)
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.HUB0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.AGPB._PRT]
ACPI: PCI Interrupt Link [LNK1] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNK2] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNK3] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNK4] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNK5] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LUBA] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LUBB] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LMAC] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LAPU] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LACI] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LMCI] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LSMB] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LUB2] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LFIR] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [L3CM] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LIDE] (IRQs 3 4 5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [APC1] (IRQs 16)
ACPI: PCI Interrupt Link [APC2] (IRQs 17)
ACPI: PCI Interrupt Link [APC3] (IRQs 18)
ACPI: PCI Interrupt Link [APC4] (IRQs *19)
ACPI: PCI Interrupt Link [APC5] (IRQs 16)
ACPI: PCI Interrupt Link [APCF] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCG] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCH] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCI] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCJ] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCK] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCS] (IRQs *23)
ACPI: PCI Interrupt Link [APCL] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCM] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [AP3C] (IRQs 20 21 22)
ACPI: PCI Interrupt Link [APCZ] (IRQs 20 21 22)
Linux Plug and Play Support v0.97 (c) Adam Belay
PnPBIOS: Scanning system for PnP BIOS support...
PnPBIOS: Found PnP BIOS installation structure at 0xc00fbf20
PnPBIOS: PnP BIOS version 1.0, entry 0xf0000:0xbf50, dseg 0xf0000
PnPBIOS: 16 nodes reported by PnP BIOS; 16 recorded by driver
ACPI: PCI Interrupt Link [APCS] enabled at IRQ 23
IOAPIC[0]: Set PCI routing entry (2-23 -> 0xa9 -> IRQ 23 Mode:1 Active:0)
00:00:01[A] -> 2-23 -> IRQ 23
Pin 2-23 already programmed
ACPI: PCI Interrupt Link [APCF] enabled at IRQ 20
IOAPIC[0]: Set PCI routing entry (2-20 -> 0xb1 -> IRQ 20 Mode:1 Active:0)
00:00:02[A] -> 2-20 -> IRQ 20
ACPI: PCI Interrupt Link [APCG] enabled at IRQ 22
IOAPIC[0]: Set PCI routing entry (2-22 -> 0xb9 -> IRQ 22 Mode:1 Active:0)
00:00:02[B] -> 2-22 -> IRQ 22
ACPI: PCI Interrupt Link [APCL] enabled at IRQ 21
IOAPIC[0]: Set PCI routing entry (2-21 -> 0xc1 -> IRQ 21 Mode:1 Active:0)
00:00:02[C] -> 2-21 -> IRQ 21
ACPI: PCI Interrupt Link [APCH] enabled at IRQ 20
Pin 2-20 already programmed
ACPI: PCI Interrupt Link [APCI] enabled at IRQ 22
Pin 2-22 already programmed
ACPI: PCI Interrupt Link [APCJ] enabled at IRQ 21
Pin 2-21 already programmed
ACPI: PCI Interrupt Link [APCK] enabled at IRQ 20
Pin 2-20 already programmed
ACPI: PCI Interrupt Link [APCM] enabled at IRQ 22
Pin 2-22 already programmed
ACPI: PCI Interrupt Link [AP3C] enabled at IRQ 21
Pin 2-21 already programmed
ACPI: PCI Interrupt Link [APCZ] enabled at IRQ 20
Pin 2-20 already programmed
ACPI: PCI Interrupt Link [APC1] enabled at IRQ 16
IOAPIC[0]: Set PCI routing entry (2-16 -> 0xc9 -> IRQ 16 Mode:1 Active:0)
00:01:06[A] -> 2-16 -> IRQ 16
ACPI: PCI Interrupt Link [APC2] enabled at IRQ 17
IOAPIC[0]: Set PCI routing entry (2-17 -> 0xd1 -> IRQ 17 Mode:1 Active:0)
00:01:06[B] -> 2-17 -> IRQ 17
ACPI: PCI Interrupt Link [APC3] enabled at IRQ 18
IOAPIC[0]: Set PCI routing entry (2-18 -> 0xd9 -> IRQ 18 Mode:1 Active:0)
00:01:06[C] -> 2-18 -> IRQ 18
ACPI: PCI Interrupt Link [APC4] enabled at IRQ 19
IOAPIC[0]: Set PCI routing entry (2-19 -> 0xe1 -> IRQ 19 Mode:1 Active:0)
00:01:06[D] -> 2-19 -> IRQ 19
Pin 2-19 already programmed
Pin 2-16 already programmed
Pin 2-17 already programmed
Pin 2-18 already programmed
Pin 2-18 already programmed
Pin 2-19 already programmed
Pin 2-16 already programmed
Pin 2-17 already programmed
Pin 2-17 already programmed
Pin 2-18 already programmed
Pin 2-19 already programmed
Pin 2-16 already programmed
Pin 2-16 already programmed
Pin 2-17 already programmed
Pin 2-18 already programmed
Pin 2-19 already programmed
Pin 2-18 already programmed
Pin 2-18 already programmed
Pin 2-18 already programmed
Pin 2-18 already programmed
Pin 2-19 already programmed
PCI: Using ACPI for IRQ routing
PCI: if you experience problems, try using option 'pci=noacpi' or even 'acpi=off'
radeonfb_pci_register BEGIN
radeonfb: ref_clk=2700, ref_div=12, xclk=20000 from BIOS
radeonfb: probed DDR SGRAM 65536k videoram
radeon_get_moninfo: bios 4 scratch = 2000002
radeonfb: ATI Radeon 9000 If DDR SGRAM 64 MB
radeonfb: DVI port no monitor connected
radeonfb: CRT port CRT monitor connected
radeonfb_pci_register END
Machine check exception polling timer started.
apm: BIOS version 1.2 Flags 0x07 (Driver version 1.16ac)
apm: overridden by ACPI.
ikconfig 0.7 with /proc/config*
VFS: Disk quotas dquot_6.5.1
devfs: v1.22 (20021013) Richard Gooch (rgooch@atnf.csiro.au)
devfs: boot_options: 0x1
Initializing Cryptographic API
ACPI: Power Button (FF) [PWRF]
ACPI: Processor [CPU0] (supports C1)
hStart = 664, hEnd = 760, hTotal = 800
vStart = 491, vEnd = 493, vTotal = 525
h_total_disp = 0x4f0063    hsync_strt_wid = 0x8c02a2
v_total_disp = 0x1df020c           vsync_strt_wid = 0x8201ea
post div = 0x8
fb_div = 0x59
ppll_div_3 = 0x30059
ron = 636, roff = 14308
vclk_freq = 2503, per = 511
Console: switching to colour frame buffer device 80x30
pty: 256 Unix98 ptys configured
Non-volatile memory driver v1.2
Hangcheck: starting hangcheck timer 0.5.0 (tick is 180 seconds, margin is 60 seconds).
Serial: 8250/16550 driver $Revision: 1.90 $ 8 ports, IRQ sharing disabled
ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
ttyS1 at I/O 0x2f8 (irq = 3) is a 16550A
Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
NFORCE2: IDE controller at PCI slot 0000:00:09.0
NFORCE2: chipset revision 162
NFORCE2: not 100% native mode: will probe irqs later
NFORCE2: BIOS didn't set cable bits correctly. Enabling workaround.
NFORCE2: BIOS didn't set cable bits correctly. Enabling workaround.
ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
NFORCE2: 0000:00:09.0 (rev a2) UDMA133 controller
    ide0: BM-DMA at 0xf000-0xf007, BIOS settings: hda:DMA, hdb:DMA
    ide1: BM-DMA at 0xf008-0xf00f, BIOS settings: hdc:DMA, hdd:DMA
hda: Maxtor 6Y080L0, ATA DISK drive
hdb: Maxtor 2B020H1, ATA DISK drive
Using anticipatory io scheduler
ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
hdc: Pioneer DVD-ROM ATAPIModel DVD-120, ATAPI CD/DVD-ROM drive
hdd: HL-DT-ST CD-RW GCE-8240B, ATAPI CD/DVD-ROM drive
ide1 at 0x170-0x177,0x376 on irq 15
hda: max request size: 128KiB
hda: 160086528 sectors (81964 MB) w/2048KiB Cache, CHS=65535/16/63, UDMA(133)
 /dev/ide/host0/bus0/target0/lun0: p1 p2 p3
hdb: max request size: 1024KiB
hdb: 40020624 sectors (20490 MB) w/2048KiB Cache, CHS=16383/255/63, UDMA(100)
 /dev/ide/host0/bus0/target1/lun0: p1
Console: switching to colour frame buffer device 80x30
mice: PS/2 mouse device common for all mice
input: PC Speaker
input: PS2++ Logitech Wheel Mouse on isa0060/serio1
serio: i8042 AUX port at 0x60,0x64 irq 12
input: AT Translated Set 2 keyboard on isa0060/serio0
serio: i8042 KBD port at 0x60,0x64 irq 1
oprofile: using NMI interrupt.
NET: Registered protocol family 2
IP: routing cache hash table of 4096 buckets, 32Kbytes
TCP: Hash tables configured (established 32768 bind 65536)
NET: Registered protocol family 1
NET: Registered protocol family 17
NET: Registered protocol family 15
BIOS EDD facility v0.10 2003-Oct-11, 2 devices found
Please report your BIOS at http://domsch.com/linux/edd30/results.html
PM: Reading pmdisk image.
PM: Resume from disk failed.
ACPI: (supports S0 S1 S3 S4 S4bios S5)
found reiserfs format "3.6" with standard journal
Reiserfs journal params: device hda2, size 8192, journal first block 18, max trans len 1024, max batch 900, max commit age 30, max trans age 30
reiserfs: checking transaction log (hda2) for (hda2)
Using r5 hash to sort names
VFS: Mounted root (reiserfs filesystem) readonly.
Mounted devfs on /dev
Freeing unused kernel memory: 332k freed
Adding 1397644k swap on /dev/hda3.  Priority:-1 extents:1
hdc: ATAPI 40X DVD-ROM drive, 256kB Cache, UDMA(66)
Uniform CD-ROM driver Revision: 3.12
hdd: ATAPI 40X CD-ROM CD-R/RW drive, 8192kB Cache, DMA
SCSI subsystem initialized
forcedeth.c: Reverse Engineered nForce ethernet driver. Version 0.19.
PCI: Setting latency timer of device 0000:00:04.0 to 64
eth0: forcedeth.c: subsystem: 01043:80a7
Real Time Clock Driver v1.12
Linux agpgart interface v0.100 (c) Dave Jones
agpgart: Detected NVIDIA nForce2 chipset
agpgart: Maximum main memory to use for agp memory: 439M
agpgart: AGP aperture is 64M @ 0xe8000000
fglrx: module license 'Proprietary. (C) 2002 - ATI Technologies, Starnberg, GERMANY' taints kernel.
[fglrx] Maximum main memory to use for locked dma buffers: 431 MBytes.
[fglrx] module loaded - fglrx 3.7.0 [Dec 18 2003] on minor 0
NTFS driver 2.1.5 [Flags: R/W MODULE].
NTFS volume version 3.1.
drivers/usb/core/usb.c: registered new driver usbfs
drivers/usb/core/usb.c: registered new driver hub
PCI: Setting latency timer of device 0000:00:06.0 to 64
intel8x0: clocking to 47417
eth0: no link during initialization.
NET: Registered protocol family 10
Disabled Privacy Extensions on device c033a520(lo)
IPv6 over IPv4 tunneling driver
[fglrx] AGP detected, AgpState   = 0x1f000217 (hardware caps of chipset)
agpgart: Found an AGP 2.0 compliant device at 0000:00:00.0.
agpgart: Putting AGP V2 device at 0000:00:00.0 into 4x mode
agpgart: Putting AGP V2 device at 0000:02:00.0 into 4x mode
[fglrx] AGP enabled,  AgpCommand = 0x1f000314 (selected caps)
[fglrx] free  AGP = 54800384
[fglrx] max   AGP = 54800384
[fglrx] free  LFB = 49283072
[fglrx] max   LFB = 49283072
[fglrx] free  Inv = 0
[fglrx] max   Inv = 0
[fglrx] total Inv = 0
[fglrx] total TIM = 0
[fglrx] total FB  = 0
[fglrx] total AGP = 16384
eth0: no IPv6 routers present
inserting floppy driver for 2.6.0-gentoo

--Boundary-00=_XUU//FbTAPZquVv
Content-Type: text/plain;
  charset="iso-8859-1";
  name="lspci -v"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="lspci -v"

00:00.0 Host bridge: nVidia Corporation nForce2 AGP (different version?) (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: bus master, 66Mhz, fast devsel, latency 0
        Memory at e8000000 (32-bit, prefetchable) [size=64M]
        Capabilities: [40] AGP version 2.0
        Capabilities: [60] #08 [2001]

00:00.1 RAM memory: nVidia Corporation nForce2 Memory Controller 1 (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: 66Mhz, fast devsel

00:00.2 RAM memory: nVidia Corporation nForce2 Memory Controller 4 (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: 66Mhz, fast devsel

00:00.3 RAM memory: nVidia Corporation nForce2 Memory Controller 3 (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: 66Mhz, fast devsel

00:00.4 RAM memory: nVidia Corporation nForce2 Memory Controller 2 (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: 66Mhz, fast devsel

00:00.5 RAM memory: nVidia Corporation nForce2 Memory Controller 5 (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 80ac
        Flags: 66Mhz, fast devsel

00:01.0 ISA bridge: nVidia Corporation nForce2 ISA Bridge (rev a3)
        Subsystem: Asustek Computer, Inc. A7N8X Mainboard
        Flags: bus master, 66Mhz, fast devsel, latency 0
        Capabilities: [48] #08 [01e1]

00:01.1 SMBus: nVidia Corporation nForce2 SMBus (MCP) (rev a2)
        Subsystem: Asustek Computer, Inc.: Unknown device 0c11
        Flags: 66Mhz, fast devsel, IRQ 23
        I/O ports at ec00 [size=32]
        Capabilities: [44] Power Management version 2

00:02.0 USB Controller: nVidia Corporation nForce2 USB Controller (rev a3) (prog-if 10 [OHCI])
        Subsystem: Asustek Computer, Inc. A7N8X Mainboard
        Flags: bus master, 66Mhz, fast devsel, latency 0, IRQ 20
        Memory at ee003000 (32-bit, non-prefetchable) [size=4K]
        Capabilities: [44] Power Management version 2

00:02.1 USB Controller: nVidia Corporation nForce2 USB Controller (rev a3) (prog-if 10 [OHCI])
        Subsystem: Asustek Computer, Inc. A7N8X Mainboard
        Flags: bus master, 66Mhz, fast devsel, latency 0, IRQ 22
        Memory at ee004000 (32-bit, non-prefetchable) [size=4K]
        Capabilities: [44] Power Management version 2

00:02.2 USB Controller: nVidia Corporation nForce2 USB Controller (rev a3) (prog-if 20 [EHCI])
        Subsystem: Asustek Computer, Inc. A7N8X Mainboard
        Flags: bus master, 66Mhz, fast devsel, latency 0, IRQ 21
        Memory at ee000000 (32-bit, non-prefetchable) [size=256]
        Capabilities: [44] #0a [2080]
        Capabilities: [80] Power Management version 2

00:04.0 Ethernet controller: nVidia Corporation nForce2 Ethernet Controller (rev a1)
        Subsystem: Asustek Computer, Inc.: Unknown device 80a7
        Flags: bus master, 66Mhz, fast devsel, latency 0, IRQ 20
        Memory at ee001000 (32-bit, non-prefetchable) [size=4K]
        I/O ports at e000 [size=8]
        Capabilities: [44] Power Management version 2

00:06.0 Multimedia audio controller: nVidia Corporation nForce2 AC97 Audio Controler (MCP) (rev a1)
        Subsystem: Asustek Computer, Inc.: Unknown device 8095
        Flags: bus master, 66Mhz, fast devsel, latency 0, IRQ 21
        I/O ports at e400 [size=256]
        I/O ports at e800 [size=128]
        Memory at ee002000 (32-bit, non-prefetchable) [size=4K]
        Capabilities: [44] Power Management version 2

00:08.0 PCI bridge: nVidia Corporation nForce2 External PCI Bridge (rev a3) (prog-if 00 [Normal decode])
        Flags: bus master, 66Mhz, fast devsel, latency 0
        Bus: primary=00, secondary=01, subordinate=01, sec-latency=32

00:09.0 IDE interface: nVidia Corporation nForce2 IDE (rev a2) (prog-if 8a [Master SecP PriP])
        Subsystem: Asustek Computer, Inc.: Unknown device 0c11
        Flags: bus master, 66Mhz, fast devsel, latency 0
        I/O ports at f000 [size=16]
        Capabilities: [44] Power Management version 2

00:1e.0 PCI bridge: nVidia Corporation nForce2 AGP (rev a2) (prog-if 00 [Normal decode])
        Flags: bus master, 66Mhz, medium devsel, latency 32
        Bus: primary=00, secondary=02, subordinate=02, sec-latency=32
        I/O behind bridge: 0000d000-0000dfff
        Memory behind bridge: ec000000-edffffff
        Prefetchable memory behind bridge: e0000000-e7ffffff

02:00.0 VGA compatible controller: ATI Technologies Inc Radeon R250 If [Radeon 9000] (rev 01) (prog-if 00 [VGA])
        Subsystem: Yuan Yuan Enterprise Co., Ltd.: Unknown device 4966
        Flags: bus master, stepping, 66Mhz, medium devsel, latency 255, IRQ 19
        Memory at e0000000 (32-bit, prefetchable) [size=128M]
        I/O ports at d000 [size=256]
        Memory at ed000000 (32-bit, non-prefetchable) [size=64K]
        Expansion ROM at <unassigned> [disabled] [size=128K]
        Capabilities: [58] AGP version 2.0
        Capabilities: [50] Power Management version 2


--Boundary-00=_XUU//FbTAPZquVv
Content-Type: application/x-gzip;
  name="config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="config.gz"

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
+W+m/A+MHHQvGWgAAA==

--Boundary-00=_XUU//FbTAPZquVv--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
