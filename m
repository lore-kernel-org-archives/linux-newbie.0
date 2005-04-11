From: James Miller <jamtat@mailsnare.net>
Subject: Re: help on dmesg output
Date: Mon, 11 Apr 2005 16:09:02 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
 <Pine.LNX.4.60.0504112155400.1512@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504112155400.1512@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 11 Apr 2005 caszonyi@rdslink.ro wrote:

> On Mon, 11 Apr 2005, James Miller wrote:
>
>> input: PC Speaker
>> Real Time Clock Driver v1.12
>> ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
>> ad1848: No ISAPnP cards found, trying standard ones...
>> cs4232: set synthio and synthirq to use the wavefront facilities.
>> cs4232: Must set io, irq and dma.
>
> This seems to be the OSS sound driver and you seem to insert the OSS sound 
> module _after_ you inserted the ALSA ones (snd_*) so this can be the cause 
> for
> |
> |
> |
> V
>
>> Unable to handle kernel paging request at virtual address f0d8e5c8
>> printing eip:

I think these problems might have been related to the module loading 
twice. Apparently the kernel does some sort of detection and loads the 
module, and there was no need for me to enter it in /etc/modules. At least 
the problem output I posted previously goes away when I remove the 
snd-cs4236 line from /etc/modules.

> Can you post the full dmesg ?

Ok:

Linux version 2.6.10-1-686 (dilinger@mouth) (gcc version 3.3.5 (Debian 1:3.3.5-8)) #1 Fri Mar 11 03:55:46 EST 2005
BIOS-provided physical RAM map:
  BIOS-e820: 0000000000000000 - 00000000000a0000 (usable)
  BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)
  BIOS-e820: 0000000000100000 - 000000002fffe000 (usable)
  BIOS-e820: 000000002fffe000 - 0000000030000000 (reserved)
  BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)
0MB HIGHMEM available.
767MB LOWMEM available.
On node 0 totalpages: 196606
   DMA zone: 4096 pages, LIFO batch:1
   Normal zone: 192510 pages, LIFO batch:16
   HighMem zone: 0 pages, LIFO batch:1
DMI 2.2 present.
ACPI: RSDP (v000 DELL                                  ) @ 0x000fdf50
ACPI: RSDT (v001 DELL    GX1     0x00000002 ASL  0x00000061) @ 0x000fdf64
ACPI: FADT (v001 DELL    GX1     0x00000002 ASL  0x00000061) @ 0x000fdf8c
ACPI: DSDT (v001   OEMx    dt_ex 0x00001000 MSFT 0x0100000b) @ 0x00000000
ACPI: BIOS age (1999) fails cutoff (2001), acpi=force is required to enable ACPI
ACPI: Disabling ACPI support
Built 1 zonelists
Kernel command line: root=/dev/hda1 vga=789 ro
Local APIC disabled by BIOS -- you can enable it with "lapic"
mapped APIC to ffffd000 (01609000)
Initializing CPU#0
PID hash table entries: 4096 (order: 12, 65536 bytes)
Detected 1390.714 MHz processor.
Using tsc for high-res timesource
Console: colour dummy device 80x25
Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
Memory: 771332k/786424k available (1682k kernel code, 14380k reserved, 703k data, 172k init, 0k highmem)
Checking if this processor honours the WP bit even in supervisor mode... Ok.
Calibrating delay loop... 2752.51 BogoMIPS (lpj=1376256)
Security Framework v1.0.0 initialized
SELinux:  Disabled at boot.
Mount-cache hash table entries: 512 (order: 0, 4096 bytes)
CPU: After generic identify, caps: 0383f9ff 00000000 00000000 00000000 00000000 00000000
CPU: After vendor identify, caps: 0383f9ff 00000000 00000000 00000000 00000000 00000000
CPU: L1 I cache: 16K, L1 D cache: 16K
CPU: L2 cache: 256K
CPU: After all inits, caps: 0383f9ff 00000000 00000000 00000040 00000000 00000000
Intel machine check architecture supported.
Intel machine check reporting enabled on CPU#0.
CPU: Intel(R) Celeron(TM) CPU                1400MHz stepping 04
Enabling fast FPU save and restore... done.
Enabling unmasked SIMD FPU exception support... done.
Checking 'hlt' instruction... OK.
checking if image is initramfs...it isn't (bad gzip magic numbers); looks like an initrd
Freeing initrd memory: 4568k freed
NET: Registered protocol family 16
PCI: PCI BIOS revision 2.10 entry at 0xfcaee, last bus=1
PCI: Using configuration type 1
mtrr: v2.0 (20020519)
ACPI: Subsystem revision 20041105
ACPI: Interpreter disabled.
Linux Plug and Play Support v0.97 (c) Adam Belay
pnp: PnP ACPI: ACPI disable
PnPBIOS: Scanning system for PnP BIOS support...
PnPBIOS: Found PnP BIOS installation structure at 0xc00fe2d0
PnPBIOS: PnP BIOS version 1.0, entry 0xf0000:0xe2f4, dseg 0x40
PnPBIOS: 15 nodes reported by PnP BIOS; 15 recorded by driver
PCI: Probing PCI hardware
PCI: Probing PCI hardware (bus 00)
PCI: Using IRQ router PIIX/ICH [8086/7110] at 0000:00:07.0
pnp: 00:00: ioport range 0x800-0x83f has been reserved
pnp: 00:00: ioport range 0x850-0x85f has been reserved
VFS: Disk quotas dquot_6.5.1
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
devfs: 2004-01-31 Richard Gooch (rgooch@atnf.csiro.au)
devfs: boot_options: 0x0
Initializing Cryptographic API
Limiting direct PCI/PCI transfers.
isapnp: Scanning for PnP cards...
isapnp: Card 'CS4236B'
isapnp: 1 Plug & Play card detected total
serio: i8042 AUX port at 0x60,0x64 irq 12
serio: i8042 KBD port at 0x60,0x64 irq 1
Serial: 8250/16550 driver $Revision: 1.90 $ 48 ports, IRQ sharing enabled
ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
ttyS1 at I/O 0x2f8 (irq = 3) is a 16550A
ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
ttyS1 at I/O 0x2f8 (irq = 3) is a 16550A
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered
RAMDISK driver initialized: 16 RAM disks of 8192K size 1024 blocksize
input: AT Translated Set 2 keyboard on isa0060/serio0
NET: Registered protocol family 2
IP: routing cache hash table of 8192 buckets, 64Kbytes
TCP: Hash tables configured (established 262144 bind 65536)
NET: Registered protocol family 8
NET: Registered protocol family 20
RAMDISK: cramfs filesystem found at block 0
RAMDISK: Loading 4568KiB [1 disk] into ram disk... |/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/done.
VFS: Mounted root (cramfs filesystem) readonly.
Freeing unused kernel memory: 172k freed
vesafb: framebuffer at 0xfd000000, mapped to 0xf0880000, using 2812k, total 8192k
vesafb: mode is 800x600x24, linelength=2400, pages=4
vesafb: protected mode interface info at c000:4ac6
vesafb: scrolling: redraw
vesafb: Truecolor: size=0:8:8:8, shift=0:16:8:0
fb0: VESA VGA frame buffer device
Console: switching to colour frame buffer device 100x37
NET: Registered protocol family 1
SCSI subsystem initialized
libata version 1.10 loaded.
Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
PIIX4: IDE controller at PCI slot 0000:00:07.1
PIIX4: chipset revision 1
PIIX4: not 100% native mode: will probe irqs later
     ide0: BM-DMA at 0xffa0-0xffa7, BIOS settings: hda:DMA, hdb:DMA
     ide1: BM-DMA at 0xffa8-0xffaf, BIOS settings: hdc:DMA, hdd:DMA
Probing IDE interface ide0...
hda: ST310215A, ATA DISK drive
hdb: ST320413A, ATA DISK drive
elevator: using anticipatory as default io scheduler
ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
hda: max request size: 128KiB
hda: 19541088 sectors (10005 MB) w/2048KiB Cache, CHS=19386/16/63, UDMA(33)
hda: cache flushes not supported
  /dev/ide/host0/bus0/target0/lun0: p1
hdb: max request size: 128KiB
hdb: Host Protected Area detected.
 	current capacity is 39102336 sectors (20020 MB)
 	native  capacity is 39102337 sectors (20020 MB)
hdb: Host Protected Area disabled.
hdb: 39102337 sectors (20020 MB) w/1024KiB Cache, CHS=38792/16/63, UDMA(33)
hdb: cache flushes not supported
  /dev/ide/host0/bus0/target1/lun0: p1
Probing IDE interface ide1...
hdc: IBM-DPTA-371360, ATA DISK drive
hdd: CD-RW 32X10X40, ATAPI CD/DVD-ROM drive
ide1 at 0x170-0x177,0x376 on irq 15
hdc: max request size: 128KiB
hdc: 26712000 sectors (13676 MB) w/1961KiB Cache, CHS=26500/16/63, UDMA(33)
hdc: cache flushes not supported
  /dev/ide/host0/bus1/target0/lun0: p1 p2
Probing IDE interface ide2...
Probing IDE interface ide3...
Probing IDE interface ide4...
Probing IDE interface ide5...
EXT3-fs: mounted filesystem with ordered data mode.
kjournald starting.  Commit interval 5 seconds
Adding 781160k swap on /dev/hdc1.  Priority:-1 extents:1
EXT3 FS on hda1, internal journal
hdd: ATAPI 40X CD-ROM CD-R/RW drive, 8192kB Cache, UDMA(33)
Uniform CD-ROM driver Revision: 3.20
Capability LSM initialized
kjournald starting.  Commit interval 5 seconds
EXT3 FS on hdb1, internal journal
EXT3-fs: mounted filesystem with ordered data mode.
kjournald starting.  Commit interval 5 seconds
EXT3 FS on hdc2, internal journal
EXT3-fs: mounted filesystem with ordered data mode.
Linux agpgart interface v0.100 (c) Dave Jones
PCI: Found IRQ 10 for device 0000:00:0e.0
3c59x: Donald Becker and others. www.scyld.com/network/vortex.html
0000:00:0e.0: 3Com PCI 3c905C Tornado at 0xdc00. Vers LK1.1.19
usbcore: registered new driver usbfs
usbcore: registered new driver hub
USB Universal Host Controller Interface driver v2.2
PCI: Found IRQ 11 for device 0000:00:07.2
uhci_hcd 0000:00:07.2: Intel Corp. 82371AB/EB/MB PIIX4 USB
uhci_hcd 0000:00:07.2: irq 11, io base 0xdce0
uhci_hcd 0000:00:07.2: new USB bus registered, assigned bus number 1
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 2 ports detected
usb 1-1: new full speed USB device using uhci_hcd and address 2
usb 1-2: new full speed USB device using uhci_hcd and address 3
Initializing USB Mass Storage driver...
scsi0 : SCSI emulation for USB Mass Storage devices
usbcore: registered new driver usb-storage
usb-storage: device found at 2
usb-storage: waiting for device to settle before scanning
USB Mass Storage support registered.
agpgart: Detected an Intel 440BX Chipset.
agpgart: Maximum main memory to use for agp memory: 690M
agpgart: AGP aperture is 64M @ 0xf4000000
cpci_hotplug: CompactPCI Hot Plug Core version: 0.2
pci_hotplug: PCI Hot Plug PCI Core version: 0.5
pciehp: acpi_pciehprm:get_device PCI ROOT HID fail=0x1001
shpchp: acpi_shpchprm:get_device PCI ROOT HID fail=0x1001
   Vendor: IOMEGA    Model: ZIP 100           Rev: 11.V
   Type:   Direct-Access                      ANSI SCSI revision: 00
Attached scsi removable disk sda at scsi0, channel 0, id 0, lun 0
usb-storage: device scan complete
piix4_smbus 0000:00:07.3: Found 0000:00:07.3 device
parport: PnPBIOS parport detected.
parport0: PC-style at 0x378 (0x778), irq 7, using FIFO [PCSPP,TRISTATE,COMPAT,EPP,ECP]
inserting floppy driver for 2.6.10-1-686
Floppy drive(s): fd0 is 1.44M
FDC 0 is a National Semiconductor PC87306
input: PS/2 Logitech Mouse on isa0060/serio1
input: PC Speaker
Real Time Clock Driver v1.12
mice: PS/2 mouse device common for all mice
ts: Compaq touchscreen protocol output
ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
pnp: Device 01:01.00 activated.
ad1848: PnP reports 'CS4236B' at i/o 0x534, irq 5, dma 1, 3
cs4232: set synthio and synthirq to use the wavefront facilities.
cs4232: probe of 01:01.00 failed with error -16
cs4232: Must set io, irq and dma.
pnp: Device 01:01.01 activated.
gameport: NS558 PnP at pnp01:01.01 io 0x3a0 size 8 speed 755 kHz
NET: Registered protocol family 17
NET: Registered protocol family 10
Disabled Privacy Extensions on device c032abe0(lo)
IPv6 over IPv4 tunneling driver
eth0: no IPv6 routers present

Things seem to have gotten detected and at least partially configured. Not 
sure why cs4232 is in there: as mentioned, my sound chip is cs4236. I 
didn't cause any module by that name to load. Thus, I can't very well 
stipulate any io, irq or dma for it. If it refers to settings for the 
cs4236 chip, those are io=0x534 irq=5 and dma=1, 3--as the output a little 
further up shows. Man, this stuff is recondite.


> What do you mean that you couldn't assign that adress ? The fact that the 
> card didn't worked usually means that IO + IRQ + DMA probing for the card was 
> unsuccessfull and/or the driver initialization failed.

Like I said in my earlier posts on the other soundcard, when I would 
specified io for the module in /etc/modules, the module would still not be 
associated with that io after boot when I would check cat /proc/ioports 
output. I tired it several times. The irq (the Soundman irq, anyway) would 
be associated with the module, but not the io. And the card *did* 
work--sort of. It would output sound, but the sound was crackly and when 
other processes started on the computer, the sound would pause. So, 
something was wrong. What, I don't know, and I'm not trying to pursue it 
any further now anyway. Just was noting something associated when trying 
to load modules for what I thought would be a surefire solution.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
