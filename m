From: "bj" <bhamal@wlink.com.np>
Subject: Sony MSAC-US70 Mouse in Redhat 8
Date: Sun, 13 Mar 2005 04:55:23 +0545
Message-ID: <001f01c52758$d9d77ab0$0db3fea9@kath.state.gov>
Reply-To: <bhamal@wlink.com.np>
Mime-Version: 1.0
Content-Type: multipart/mixed;	boundary="----=_NextPart_000_0020_01C52789.0C00D0B0"
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_0020_01C52789.0C00D0B0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi !

I am using Red Hat 8 with kernel 2.4.20-30.8.legacy.

I got a new Sony  Reader/writer Optical Mouse .

How do I detect it in Red Hat 8.0

I did the following :-

modprobe input 
modprobe hid
modrprobe mousedev 

These kernel modules are loaded without error .

But still my usb mouse is not detected . 

Attached are my dmesg and message . 

Thank you for your help in advance. 

Cheers,
bj

  



------=_NextPart_000_0020_01C52789.0C00D0B0
Content-Type: text/plain;
	name="dmesg.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="dmesg.txt"

Linux version 2.4.20-30.8.legacy (legacy@yoda.loki.me) (gcc version 3.2 =
20020903 (Red Hat Linux 8.0 3.2-7)) #1 Fri Feb 20 17:47:48 PST 2004=0A=
BIOS-provided physical RAM map:=0A=
 BIOS-e820: 0000000000000000 - 00000000000a0000 (usable)=0A=
 BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)=0A=
 BIOS-e820: 0000000000100000 - 000000001fff0000 (usable)=0A=
 BIOS-e820: 000000001fff0000 - 000000001fff3000 (ACPI NVS)=0A=
 BIOS-e820: 000000001fff3000 - 0000000020000000 (ACPI data)=0A=
 BIOS-e820: 00000000fec00000 - 0000000100000000 (reserved)=0A=
0MB HIGHMEM available.=0A=
511MB LOWMEM available.=0A=
On node 0 totalpages: 131056=0A=
zone(0): 4096 pages.=0A=
zone(1): 126960 pages.=0A=
zone(2): 0 pages.=0A=
Kernel command line: ro root=3DLABEL=3D/ hdb=3Dide-scsi=0A=
ide_setup: hdb=3Dide-scsi=0A=
Initializing CPU#0=0A=
Detected 2393.995 MHz processor.=0A=
Console: colour VGA+ 80x25=0A=
Calibrating delay loop... 4771.02 BogoMIPS=0A=
Memory: 511516k/524224k available (1340k kernel code, 10148k reserved, =
999k data, 128k init, 0k highmem)=0A=
Dentry cache hash table entries: 65536 (order: 7, 524288 bytes)=0A=
Inode cache hash table entries: 32768 (order: 6, 262144 bytes)=0A=
Mount cache hash table entries: 512 (order: 0, 4096 bytes)=0A=
Buffer-cache hash table entries: 32768 (order: 5, 131072 bytes)=0A=
Page-cache hash table entries: 131072 (order: 7, 524288 bytes)=0A=
CPU: Trace cache: 12K uops, L1 D cache: 8K=0A=
CPU: L2 cache: 512K=0A=
Intel machine check architecture supported.=0A=
Intel machine check reporting enabled on CPU#0.=0A=
CPU:     After generic, caps: bfebfbff 00000000 00000000 00000000=0A=
CPU:             Common caps: bfebfbff 00000000 00000000 00000000=0A=
CPU: Intel(R) Pentium(R) 4 CPU 2.40GHz stepping 07=0A=
Enabling fast FPU save and restore... done.=0A=
Enabling unmasked SIMD FPU exception support... done.=0A=
Checking 'hlt' instruction... OK.=0A=
POSIX conformance testing by UNIFIX=0A=
mtrr: v1.40 (20010327) Richard Gooch (rgooch@atnf.csiro.au)=0A=
mtrr: detected mtrr type: Intel=0A=
PCI: PCI BIOS revision 2.10 entry at 0xfb270, last bus=3D1=0A=
PCI: Using configuration type 1=0A=
PCI: Probing PCI hardware=0A=
PCI: Using IRQ router VIA [1106/3177] at 00:11.0=0A=
isapnp: Scanning for PnP cards...=0A=
isapnp: No Plug & Play device found=0A=
Linux NET4.0 for Linux 2.4=0A=
Based upon Swansea University Computer Society NET3.039=0A=
Initializing RT netlink socket=0A=
apm: BIOS version 1.2 Flags 0x07 (Driver version 1.16)=0A=
Starting kswapd=0A=
VFS: Disk quotas vdquot_6.5.1=0A=
Detected PS/2 Mouse Port.=0A=
pty: 2048 Unix98 ptys configured=0A=
Serial driver version 5.05c (2001-07-08) with MANY_PORTS MULTIPORT =
SHARE_IRQ SERIAL_PCI ISAPNP enabled=0A=
ttyS0 at 0x03f8 (irq =3D 4) is a 16550A=0A=
ttyS1 at 0x02f8 (irq =3D 3) is a 16550A=0A=
Real Time Clock Driver v1.10e=0A=
Floppy drive(s): fd0 is 1.44M=0A=
FDC 0 is a post-1991 82077=0A=
NET4: Frame Diverter 0.46=0A=
RAMDISK driver initialized: 16 RAM disks of 4096K size 1024 blocksize=0A=
Uniform Multi-Platform E-IDE driver Revision: 7.00beta3-.2.4=0A=
ide: Assuming 33MHz system bus speed for PIO modes; override with =
idebus=3Dxx=0A=
VP_IDE: IDE controller at PCI slot 00:11.1=0A=
VP_IDE: chipset revision 6=0A=
VP_IDE: not 100% native mode: will probe irqs later=0A=
VP_IDE: VIA vt8235 (rev 00) IDE UDMA133 controller on pci00:11.1=0A=
    ide0: BM-DMA at 0xdc00-0xdc07, BIOS settings: hda:DMA, hdb:DMA=0A=
    ide1: BM-DMA at 0xdc08-0xdc0f, BIOS settings: hdc:pio, hdd:DMA=0A=
hda: ST360020A, ATA DISK drive=0A=
hdb: SONY CD-RW CRX1611, ATAPI CD/DVD-ROM drive=0A=
blk: queue c03a6260, I/O limit 4095Mb (mask 0xffffffff)=0A=
hdd: ST380011A, ATA DISK drive=0A=
blk: queue c03a6808, I/O limit 4095Mb (mask 0xffffffff)=0A=
ide0 at 0x1f0-0x1f7,0x3f6 on irq 14=0A=
ide1 at 0x170-0x177,0x376 on irq 15=0A=
hda: attached ide-disk driver.=0A=
hda: host protected area =3D> 1=0A=
hda: 117231408 sectors (60022 MB) w/2048KiB Cache, CHS=3D7297/255/63, =
UDMA(100)=0A=
hdd: attached ide-disk driver.=0A=
hdd: host protected area =3D> 1=0A=
hdd: 156301488 sectors (80026 MB) w/2048KiB Cache, CHS=3D9729/255/63, =
UDMA(100)=0A=
ide-floppy driver 0.99.newide=0A=
Partition check:=0A=
 hda:hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
blk: queue c03a6260, I/O limit 4095Mb (mask 0xffffffff)=0A=
hdb: DMA disabled=0A=
ide0: reset: success=0A=
 hda1 hda2 hda3 hda4 < hda5 hda6 >=0A=
 hdd: hdd1 hdd2 < hdd5 >=0A=
ide-floppy driver 0.99.newide=0A=
md: md driver 0.90.0 MAX_MD_DEVS=3D256, MD_SB_DISKS=3D27=0A=
md: Autodetecting RAID arrays.=0A=
md: autorun ...=0A=
md: ... autorun DONE.=0A=
NET4: Linux TCP/IP 1.0 for NET4.0=0A=
IP Protocols: ICMP, UDP, TCP, IGMP=0A=
IP: routing cache hash table of 4096 buckets, 32Kbytes=0A=
TCP: Hash tables configured (established 32768 bind 65536)=0A=
Linux IP multicast router 0.06 plus PIM-SM=0A=
NET4: Unix domain sockets 1.0/SMP for Linux NET4.0.=0A=
RAMDISK: Compressed image found at block 0=0A=
Freeing initrd memory: 126k freed=0A=
VFS: Mounted root (ext2 filesystem).=0A=
Journalled Block Device driver loaded=0A=
kjournald starting.  Commit interval 5 seconds=0A=
EXT3-fs: mounted filesystem with ordered data mode.=0A=
Freeing unused kernel memory: 128k freed=0A=
usb.c: registered new driver usbdevfs=0A=
usb.c: registered new driver hub=0A=
PCI: Found IRQ 5 for device 00:10.3=0A=
PCI: Sharing IRQ 5 with 00:0c.0=0A=
ehci-hcd 00:10.3: VIA Technologies, Inc. USB 2.0=0A=
ehci-hcd 00:10.3: irq 5, pci mem e0849000=0A=
usb.c: new USB bus registered, assigned bus number 1=0A=
PCI: 00:10.3 PCI cache line size set incorrectly (32 bytes) by BIOS/FW.=0A=
PCI: 00:10.3 PCI cache line size corrected to 128.=0A=
ehci-hcd 00:10.3: USB 2.0 enabled, EHCI 1.00, driver 2003-Jan-22=0A=
hub.c: USB hub found=0A=
hub.c: 6 ports detected=0A=
usb.c: registered new driver hiddev=0A=
usb.c: registered new driver hid=0A=
hid-core.c: v1.8.1 Andreas Gal, Vojtech Pavlik <vojtech@suse.cz>=0A=
hid-core.c: USB HID support drivers=0A=
mice: PS/2 mouse device common for all mice=0A=
EXT3 FS 2.4-0.9.19, 19 August 2002 on ide0(3,2), internal journal=0A=
Adding Swap: 1052248k swap-space (priority -1)=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
hda: dma_intr: status=3D0x51 { DriveReady SeekComplete Error }=0A=
hda: dma_intr: error=3D0x84 { DriveStatusError BadCRC }=0A=
ide0: reset: success=0A=
kjournald starting.  Commit interval 5 seconds=0A=
EXT3 FS 2.4-0.9.19, 19 August 2002 on ide0(3,5), internal journal=0A=
EXT3-fs: mounted filesystem with ordered data mode.=0A=
kjournald starting.  Commit interval 5 seconds=0A=
EXT3 FS 2.4-0.9.19, 19 August 2002 on ide0(3,6), internal journal=0A=
EXT3-fs: mounted filesystem with ordered data mode.=0A=
SCSI subsystem driver Revision: 1.00=0A=
hdb: attached ide-scsi driver.=0A=
scsi0 : SCSI host adapter emulation for IDE ATAPI devices=0A=
  Vendor: SONY      Model: CD-RW CRX1611     Rev: TYS3=0A=
  Type:   CD-ROM                             ANSI SCSI revision: 02=0A=
IA-32 Microcode Update Driver: v1.11 <tigran@veritas.com>=0A=
microcode: CPU0 no microcode found! (sig=3Df27, pflags=3D4)=0A=
parport0: PC-style at 0x378 [PCSPP,TRISTATE]=0A=
ip_tables: (C) 2000-2002 Netfilter core team=0A=
PCI: Found IRQ 11 for device 00:0a.0=0A=
PCI: Sharing IRQ 11 with 00:10.1=0A=
ttySHSF0 at I/O 0xc000 (irq =3D 11) is a Conexant HSF softmodem =
(PCI-14f1:2f00-14f1:2002)=0A=
PCI: Found IRQ 5 for device 00:0c.0=0A=
PCI: Sharing IRQ 5 with 00:10.3=0A=
0000000.909: <7>^^^^^ SPIKE_NOT_FOUND ^^^^^^ =
LoopBackSpikeThreshold=3D-17000=0A=
ttySHSF1 at I/O 0xc800 (irq =3D 5) is a Conexant HSF softmodem =
(PCI-14f1:2f00-14f1:2004)=0A=
0000001.336: <7>^^^^^ SPIKE_NOT_FOUND ^^^^^^ =
LoopBackSpikeThreshold=3D-17000=0A=
usb.c: registered new driver hsfusbcd2=0A=
via-rhine.c:v1.10-LK1.1.17  March-1-2003  Written by Donald Becker=0A=
  http://www.scyld.com/network/via-rhine.html=0A=
PCI: Found IRQ 11 for device 00:12.0=0A=
PCI: Sharing IRQ 11 with 00:0d.0=0A=
PCI: Sharing IRQ 11 with 00:10.0=0A=
divert: allocating divert_blk for eth0=0A=
eth0: VIA VT6102 Rhine-II at 0xe400, 00:50:70:c4:10:77, IRQ 11.=0A=
eth0: MII PHY found at address 1, status 0x7849 advertising 05e1 Link =
0000.=0A=
ne2k-pci.c:v1.02 10/19/2000 D. Becker/P. Gortmaker=0A=
  http://www.scyld.com/network/ne2k-pci.html=0A=
PCI: Found IRQ 12 for device 00:0b.0=0A=
PCI: Sharing IRQ 12 with 00:10.2=0A=
PCI: Sharing IRQ 12 with 00:11.5=0A=
divert: allocating divert_blk for eth1=0A=
eth1: RealTek RTL-8029 found at 0xc400, IRQ 12, 52:54:AB:3E:DC:78.=0A=

------=_NextPart_000_0020_01C52789.0C00D0B0
Content-Type: text/plain;
	name="messages.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="messages.txt"

Mar 11 09:59:12 HOME syslogd 1.4.1: restart.=0A=
Mar 11 10:01:51 HOME kernel: cnxthsf_OsFloatSuffix: Id=3D4 used bit was =
FALSE !=0A=
Mar 11 10:06:33 HOME shutdown: shutting down for system reboot=0A=
Mar 11 10:06:33 HOME init: Switching to runlevel: 6=0A=
Mar 11 10:06:33 HOME login(pam_unix)[916]: session closed for user root=0A=
Mar 11 10:06:34 HOME anacron: anacron shutdown succeeded=0A=
Mar 11 10:06:35 HOME atd: atd shutdown succeeded=0A=
Mar 11 10:06:35 HOME rc: Stopping keytable:  succeeded=0A=
Mar 11 10:06:35 HOME gpm: gpm shutdown succeeded=0A=
Mar 11 10:06:35 HOME sshd: sshd -TERM succeeded=0A=
Mar 11 10:06:35 HOME sendmail: sendmail shutdown succeeded=0A=
Mar 11 10:06:35 HOME sendmail: sm-client shutdown succeeded=0A=
Mar 11 10:06:35 HOME xinetd[816]: Exiting...=0A=
Mar 11 10:06:35 HOME xinetd: xinetd shutdown succeeded=0A=
Mar 11 10:06:35 HOME crond: crond shutdown succeeded=0A=
Mar 11 10:06:35 HOME apmd[764]: Exiting=0A=
Mar 11 10:06:36 HOME apmd: apmd shutdown succeeded=0A=
Mar 11 10:06:37 HOME dd: 1+0 records in=0A=
Mar 11 10:06:37 HOME dd: 1+0 records out=0A=
Mar 11 10:06:37 HOME random: Saving random seed:  succeeded=0A=
Mar 11 10:06:37 HOME rpc.statd[682]: Caught signal 15, un-registering =
and exiting.=0A=
Mar 11 10:06:37 HOME nfslock: rpc.statd shutdown succeeded=0A=
Mar 11 10:06:37 HOME portmap: portmap shutdown succeeded=0A=
Mar 11 10:06:37 HOME kernel: Kernel logging (proc) stopped.=0A=
Mar 11 10:06:37 HOME kernel: Kernel log daemon terminating.=0A=
Mar 11 10:06:38 HOME syslog: klogd shutdown succeeded=0A=
Mar 11 10:06:38 HOME exiting on signal 15=0A=
Mar 11 10:08:15 HOME syslogd 1.4.1: restart.=0A=
Mar 11 10:08:15 HOME syslog: syslogd startup succeeded=0A=
Mar 11 10:08:15 HOME kernel: klogd 1.4.1, log source =3D /proc/kmsg =
started.=0A=
Mar 11 10:08:15 HOME kernel: Linux version 2.4.20-30.8.legacy =
(legacy@yoda.loki.me) (gcc version 3.2 20020903 (Red Hat Linux 8.0 =
3.2-7)) #1 Fri Feb 20 17:47:48 PST 2004=0A=
Mar 11 10:08:15 HOME kernel: BIOS-provided physical RAM map:=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 0000000000000000 - =
00000000000a0000 (usable)=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 00000000000f0000 - =
0000000000100000 (reserved)=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 0000000000100000 - =
000000001fff0000 (usable)=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 000000001fff0000 - =
000000001fff3000 (ACPI NVS)=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 000000001fff3000 - =
0000000020000000 (ACPI data)=0A=
Mar 11 10:08:15 HOME kernel:  BIOS-e820: 00000000fec00000 - =
0000000100000000 (reserved)=0A=
Mar 11 10:08:15 HOME kernel: 0MB HIGHMEM available.=0A=
Mar 11 10:08:15 HOME kernel: 511MB LOWMEM available.=0A=
Mar 11 10:08:15 HOME kernel: On node 0 totalpages: 131056=0A=
Mar 11 10:08:15 HOME syslog: klogd startup succeeded=0A=
Mar 11 10:08:15 HOME kernel: zone(0): 4096 pages.=0A=
Mar 11 10:08:15 HOME kernel: zone(1): 126960 pages.=0A=
Mar 11 10:08:15 HOME portmap: portmap startup succeeded=0A=
Mar 11 10:08:15 HOME kernel: zone(2): 0 pages.=0A=
Mar 11 10:08:15 HOME kernel: Kernel command line: ro root=3DLABEL=3D/ =
hdb=3Dide-scsi=0A=
Mar 11 10:08:15 HOME kernel: ide_setup: hdb=3Dide-scsi=0A=
Mar 11 10:08:15 HOME nfslock: rpc.statd startup succeeded=0A=
Mar 11 10:08:15 HOME rpc.statd[684]: Version 1.0.1 Starting=0A=
Mar 11 10:08:15 HOME kernel: Initializing CPU#0=0A=
Mar 11 10:08:15 HOME keytable: Loading keymap: =0A=
Mar 11 10:08:15 HOME kernel: Detected 2393.995 MHz processor.=0A=
Mar 11 10:08:15 HOME keytable: =0A=
Mar 11 10:08:15 HOME kernel: Console: colour VGA+ 80x25=0A=
Mar 11 10:08:15 HOME keytable: =0A=
Mar 11 10:08:16 HOME kernel: Calibrating delay loop... 4771.02 BogoMIPS=0A=
Mar 11 10:08:16 HOME rc: Starting keytable:  succeeded=0A=
Mar 11 10:08:16 HOME kernel: Memory: 511516k/524224k available (1340k =
kernel code, 10148k reserved, 999k data, 128k init, 0k highmem)=0A=
Mar 11 10:08:16 HOME kernel: Dentry cache hash table entries: 65536 =
(order: 7, 524288 bytes)=0A=
Mar 11 10:08:16 HOME random: Initializing random number generator:  =
succeeded=0A=
Mar 11 10:08:16 HOME kernel: Inode cache hash table entries: 32768 =
(order: 6, 262144 bytes)=0A=
Mar 11 10:08:16 HOME kernel: Mount cache hash table entries: 512 (order: =
0, 4096 bytes)=0A=
Mar 11 10:08:16 HOME kernel: Buffer-cache hash table entries: 32768 =
(order: 5, 131072 bytes)=0A=
Mar 11 10:08:16 HOME rc: Starting pcmcia:  succeeded=0A=
Mar 11 10:08:16 HOME kernel: Page-cache hash table entries: 131072 =
(order: 7, 524288 bytes)=0A=
Mar 11 10:08:16 HOME kernel: CPU: Trace cache: 12K uops, L1 D cache: 8K=0A=
Mar 11 10:08:16 HOME netfs: Mounting other filesystems:  succeeded=0A=
Mar 11 10:08:16 HOME kernel: CPU: L2 cache: 512K=0A=
Mar 11 10:08:16 HOME kernel: Intel machine check architecture supported.=0A=
Mar 11 10:08:12 HOME ifup:  failed; no link present.  Check cable? =0A=
Mar 11 10:08:16 HOME apmd[766]: Version 3.0.2 (APM BIOS 1.2, Linux =
driver 1.16)=0A=
Mar 11 10:08:16 HOME apmd: apmd startup succeeded=0A=
Mar 11 10:08:17 HOME kernel: Intel machine check reporting enabled on =
CPU#0.=0A=
Mar 11 10:08:12 HOME network: Bringing up interface eth0:  failed =0A=
Mar 11 10:08:17 HOME autofs: automount startup succeeded=0A=
Mar 11 10:08:17 HOME kernel: CPU: Intel(R) Pentium(R) 4 CPU 2.40GHz =
stepping 07=0A=
Mar 11 10:08:17 HOME sshd: Starting sshd:=0A=
Mar 11 10:08:17 HOME kernel: Enabling fast FPU save and restore... done.=0A=
Mar 11 10:08:18 HOME kernel: Enabling unmasked SIMD FPU exception =
support... done.=0A=
Mar 11 10:08:18 HOME kernel: Checking 'hlt' instruction... OK.=0A=
Mar 11 10:08:18 HOME kernel: POSIX conformance testing by UNIFIX=0A=
Mar 11 10:08:18 HOME kernel: mtrr: v1.40 (20010327) Richard Gooch =
(rgooch@atnf.csiro.au)=0A=
Mar 11 10:08:18 HOME apmd[766]: Charge: * * * (-1% unknown)=0A=
Mar 11 10:08:18 HOME kernel: mtrr: detected mtrr type: Intel=0A=
Mar 11 10:08:18 HOME kernel: PCI: PCI BIOS revision 2.10 entry at =
0xfb270, last bus=3D1=0A=
Mar 11 10:08:18 HOME kernel: PCI: Using configuration type 1=0A=
Mar 11 10:08:18 HOME kernel: PCI: Probing PCI hardware=0A=
Mar 11 10:08:18 HOME kernel: PCI: Using IRQ router VIA [1106/3177] at =
00:11.0=0A=
Mar 11 10:08:18 HOME kernel: isapnp: Scanning for PnP cards...=0A=
Mar 11 10:08:19 HOME kernel: isapnp: No Plug & Play device found=0A=
Mar 11 10:08:19 HOME kernel: Linux NET4.0 for Linux 2.4=0A=
Mar 11 10:08:19 HOME kernel: Based upon Swansea University Computer =
Society NET3.039=0A=
Mar 11 10:08:19 HOME kernel: Initializing RT netlink socket=0A=
Mar 11 10:08:19 HOME kernel: apm: BIOS version 1.2 Flags 0x07 (Driver =
version 1.16)=0A=
Mar 11 10:08:19 HOME kernel: Starting kswapd=0A=
Mar 11 10:08:19 HOME kernel: VFS: Disk quotas vdquot_6.5.1=0A=
Mar 11 10:08:19 HOME kernel: Detected PS/2 Mouse Port.=0A=
Mar 11 10:08:19 HOME sshd:  succeeded=0A=
Mar 11 10:08:19 HOME kernel: pty: 2048 Unix98 ptys configured=0A=
Mar 11 10:08:19 HOME sshd: =0A=
Mar 11 10:08:19 HOME kernel: Serial driver version 5.05c (2001-07-08) =
with MANY_PORTS MULTIPORT SHARE_IRQ SERIAL_PCI ISAPNP enabled=0A=
Mar 11 10:08:19 HOME rc: Starting sshd:  succeeded=0A=
Mar 11 10:08:19 HOME kernel: ttyS0 at 0x03f8 (irq =3D 4) is a 16550A=0A=
Mar 11 10:08:19 HOME kernel: ttyS1 at 0x02f8 (irq =3D 3) is a 16550A=0A=
Mar 11 10:08:19 HOME kernel: Real Time Clock Driver v1.10e=0A=
Mar 11 10:08:20 HOME kernel: Floppy drive(s): fd0 is 1.44M=0A=
Mar 11 10:08:20 HOME kernel: FDC 0 is a post-1991 82077=0A=
Mar 11 10:08:20 HOME kernel: NET4: Frame Diverter 0.46=0A=
Mar 11 10:08:20 HOME kernel: RAMDISK driver initialized: 16 RAM disks of =
4096K size 1024 blocksize=0A=
Mar 11 10:08:20 HOME kernel: Uniform Multi-Platform E-IDE driver =
Revision: 7.00beta3-.2.4=0A=
Mar 11 10:08:20 HOME kernel: ide: Assuming 33MHz system bus speed for =
PIO modes; override with idebus=3Dxx=0A=
Mar 11 10:08:20 HOME kernel: VP_IDE: IDE controller at PCI slot 00:11.1=0A=
Mar 11 10:08:20 HOME kernel: VP_IDE: chipset revision 6=0A=
Mar 11 10:08:21 HOME kernel: VP_IDE: not 100%% native mode: will probe =
irqs later=0A=
Mar 11 10:08:21 HOME kernel: VP_IDE: VIA vt8235 (rev 00) IDE UDMA133 =
controller on pci00:11.1=0A=
Mar 11 10:08:21 HOME kernel:     ide0: BM-DMA at 0xdc00-0xdc07, BIOS =
settings: hda:DMA, hdb:DMA=0A=
Mar 11 10:08:21 HOME kernel:     ide1: BM-DMA at 0xdc08-0xdc0f, BIOS =
settings: hdc:pio, hdd:DMA=0A=
Mar 11 10:08:21 HOME kernel: hda: ST360020A, ATA DISK drive=0A=
Mar 11 10:08:21 HOME kernel: hdb: SONY CD-RW CRX1611, ATAPI CD/DVD-ROM =
drive=0A=
Mar 11 10:08:21 HOME kernel: blk: queue c03a6260, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 11 10:08:21 HOME kernel: hdd: ST380011A, ATA DISK drive=0A=
Mar 11 10:08:21 HOME kernel: blk: queue c03a6808, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 11 10:08:21 HOME kernel: ide0 at 0x1f0-0x1f7,0x3f6 on irq 14=0A=
Mar 11 10:08:21 HOME kernel: ide1 at 0x170-0x177,0x376 on irq 15=0A=
Mar 11 10:08:21 HOME kernel: hda: attached ide-disk driver.=0A=
Mar 11 10:08:21 HOME kernel: hda: host protected area =3D> 1=0A=
Mar 11 10:08:21 HOME kernel: hda: 117231408 sectors (60022 MB) w/2048KiB =
Cache, CHS=3D7297/255/63, UDMA(100)=0A=
Mar 11 10:08:21 HOME kernel: hdd: attached ide-disk driver.=0A=
Mar 11 10:08:21 HOME kernel: hdd: host protected area =3D> 1=0A=
Mar 11 10:08:21 HOME kernel: hdd: 156301488 sectors (80026 MB) w/2048KiB =
Cache, CHS=3D9729/255/63, UDMA(100)=0A=
Mar 11 10:08:21 HOME kernel: ide-floppy driver 0.99.newide=0A=
Mar 11 10:08:21 HOME kernel: Partition check:=0A=
Mar 11 10:08:21 HOME kernel:  hda:hda: dma_intr: status=3D0x51 { =
DriveReady SeekComplete Error }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:22 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:22 HOME kernel: blk: queue c03a6260, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 11 10:08:22 HOME kernel: hdb: DMA disabled=0A=
Mar 11 10:08:22 HOME kernel: ide0: reset: success=0A=
Mar 11 10:08:22 HOME kernel:  hda1 hda2 hda3 hda4 < hda5 hda6 >=0A=
Mar 11 10:08:22 HOME kernel:  hdd: hdd1 hdd2 < hdd5 >=0A=
Mar 11 10:08:22 HOME kernel: ide-floppy driver 0.99.newide=0A=
Mar 11 10:08:22 HOME kernel: md: md driver 0.90.0 MAX_MD_DEVS=3D256, =
MD_SB_DISKS=3D27=0A=
Mar 11 10:08:22 HOME kernel: md: Autodetecting RAID arrays.=0A=
Mar 11 10:08:22 HOME kernel: md: autorun ...=0A=
Mar 11 10:08:22 HOME kernel: md: ... autorun DONE.=0A=
Mar 11 10:08:22 HOME kernel: NET4: Linux TCP/IP 1.0 for NET4.0=0A=
Mar 11 10:08:22 HOME kernel: IP Protocols: ICMP, UDP, TCP, IGMP=0A=
Mar 11 10:08:22 HOME kernel: IP: routing cache hash table of 4096 =
buckets, 32Kbytes=0A=
Mar 11 10:08:22 HOME kernel: TCP: Hash tables configured (established =
32768 bind 65536)=0A=
Mar 11 10:08:22 HOME kernel: Linux IP multicast router 0.06 plus PIM-SM=0A=
Mar 11 10:08:22 HOME kernel: NET4: Unix domain sockets 1.0/SMP for Linux =
NET4.0.=0A=
Mar 11 10:08:22 HOME kernel: RAMDISK: Compressed image found at block 0=0A=
Mar 11 10:08:22 HOME kernel: Freeing initrd memory: 126k freed=0A=
Mar 11 10:08:22 HOME kernel: VFS: Mounted root (ext2 filesystem).=0A=
Mar 11 10:08:22 HOME kernel: Journalled Block Device driver loaded=0A=
Mar 11 10:08:22 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 11 10:08:22 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 11 10:08:22 HOME kernel: Freeing unused kernel memory: 128k freed=0A=
Mar 11 10:08:22 HOME kernel: usb.c: registered new driver usbdevfs=0A=
Mar 11 10:08:22 HOME kernel: usb.c: registered new driver hub=0A=
Mar 11 10:08:22 HOME kernel: PCI: Found IRQ 5 for device 00:10.3=0A=
Mar 11 10:08:22 HOME kernel: PCI: Sharing IRQ 5 with 00:0c.0=0A=
Mar 11 10:08:22 HOME kernel: ehci-hcd 00:10.3: VIA Technologies, Inc. =
USB 2.0=0A=
Mar 11 10:08:23 HOME kernel: ehci-hcd 00:10.3: irq 5, pci mem e0849000=0A=
Mar 11 10:08:23 HOME kernel: usb.c: new USB bus registered, assigned bus =
number 1=0A=
Mar 11 10:08:23 HOME kernel: PCI: 00:10.3 PCI cache line size set =
incorrectly (32 bytes) by BIOS/FW.=0A=
Mar 11 10:08:23 HOME kernel: PCI: 00:10.3 PCI cache line size corrected =
to 128.=0A=
Mar 11 10:08:23 HOME kernel: ehci-hcd 00:10.3: USB 2.0 enabled, EHCI =
1.00, driver 2003-Jan-22=0A=
Mar 11 10:08:23 HOME kernel: hub.c: USB hub found=0A=
Mar 11 10:08:23 HOME kernel: hub.c: 6 ports detected=0A=
Mar 11 10:08:23 HOME kernel: usb.c: registered new driver hiddev=0A=
Mar 11 10:08:23 HOME kernel: usb.c: registered new driver hid=0A=
Mar 11 10:08:23 HOME kernel: hid-core.c: v1.8.1 Andreas Gal, Vojtech =
Pavlik <vojtech@suse.cz>=0A=
Mar 11 10:08:23 HOME kernel: hid-core.c: USB HID support drivers=0A=
Mar 11 10:08:23 HOME kernel: mice: PS/2 mouse device common for all mice=0A=
Mar 11 10:08:23 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,2), internal journal=0A=
Mar 11 10:08:23 HOME kernel: Adding Swap: 1052248k swap-space (priority =
-1)=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:23 HOME xinetd: xinetd startup succeeded=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:23 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 11 10:08:24 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 11 10:08:24 HOME kernel: ide0: reset: success=0A=
Mar 11 10:08:24 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 11 10:08:24 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,5), internal journal=0A=
Mar 11 10:08:24 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 11 10:08:24 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 11 10:08:24 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,6), internal journal=0A=
Mar 11 10:08:24 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 11 10:08:24 HOME kernel: SCSI subsystem driver Revision: 1.00=0A=
Mar 11 10:08:24 HOME kernel: hdb: attached ide-scsi driver.=0A=
Mar 11 10:08:24 HOME kernel: scsi0 : SCSI host adapter emulation for IDE =
ATAPI devices=0A=
Mar 11 10:08:24 HOME kernel:   Vendor: SONY      Model: CD-RW CRX1611    =
 Rev: TYS3=0A=
Mar 11 10:08:24 HOME kernel:   Type:   CD-ROM                            =
 ANSI SCSI revision: 02=0A=
Mar 11 10:08:24 HOME kernel: IA-32 Microcode Update Driver: v1.11 =
<tigran@veritas.com>=0A=
Mar 11 10:08:25 HOME kernel: parport0: PC-style at 0x378 [PCSPP,TRISTATE]=0A=
Mar 11 10:08:25 HOME kernel: ip_tables: (C) 2000-2002 Netfilter core team=0A=
Mar 11 10:08:25 HOME kernel: PCI: Found IRQ 11 for device 00:0a.0=0A=
Mar 11 10:08:25 HOME kernel: PCI: Sharing IRQ 11 with 00:10.1=0A=
Mar 11 10:08:25 HOME kernel: ttySHSF0 at I/O 0xc000 (irq =3D 11) is a =
Conexant HSF softmodem (PCI-14f1:2f00-14f1:2002)=0A=
Mar 11 10:08:25 HOME kernel: PCI: Found IRQ 5 for device 00:0c.0=0A=
Mar 11 10:08:25 HOME kernel: PCI: Sharing IRQ 5 with 00:10.3=0A=
Mar 11 10:08:26 HOME kernel: ttySHSF1 at I/O 0xc800 (irq =3D 5) is a =
Conexant HSF softmodem (PCI-14f1:2f00-14f1:2004)=0A=
Mar 11 10:08:26 HOME kernel: usb.c: registered new driver hsfusbcd2=0A=
Mar 11 10:08:26 HOME kernel: via-rhine.c:v1.10-LK1.1.17  March-1-2003  =
Written by Donald Becker=0A=
Mar 11 10:08:26 HOME kernel:   =
http://www.scyld.com/network/via-rhine.html=0A=
Mar 11 10:08:26 HOME kernel: PCI: Found IRQ 11 for device 00:12.0=0A=
Mar 11 10:08:26 HOME kernel: PCI: Sharing IRQ 11 with 00:0d.0=0A=
Mar 11 10:08:26 HOME kernel: PCI: Sharing IRQ 11 with 00:10.0=0A=
Mar 11 10:08:26 HOME kernel: eth0: VIA VT6102 Rhine-II at 0xe400, =
00:50:70:c4:10:77, IRQ 11.=0A=
Mar 11 10:08:26 HOME kernel: eth0: MII PHY found at address 1, status =
0x7849 advertising 05e1 Link 0000.=0A=
Mar 11 10:08:26 HOME kernel: ne2k-pci.c:v1.02 10/19/2000 D. Becker/P. =
Gortmaker=0A=
Mar 11 10:08:26 HOME kernel:   http://www.scyld.com/network/ne2k-pci.html=0A=
Mar 11 10:08:27 HOME kernel: PCI: Found IRQ 12 for device 00:0b.0=0A=
Mar 11 10:08:27 HOME kernel: PCI: Sharing IRQ 12 with 00:10.2=0A=
Mar 11 10:08:27 HOME kernel: PCI: Sharing IRQ 12 with 00:11.5=0A=
Mar 11 10:08:27 HOME kernel: eth1: RealTek RTL-8029 found at 0xc400, IRQ =
12, 52:54:AB:3E:DC:78.=0A=
Mar 11 10:08:29 HOME xinetd[818]: xinetd Version 2.3.7 started with =
libwrap options compiled in.=0A=
Mar 11 10:08:29 HOME xinetd[818]: Started working: 1 available service=0A=
Mar 11 10:08:29 HOME sendmail: sendmail startup succeeded=0A=
Mar 11 10:08:30 HOME sendmail: sm-client startup succeeded=0A=
Mar 11 10:08:30 HOME gpm[860]: oops() invoked from gpm.c(978)=0A=
Mar 11 10:08:30 HOME gpm[860]: /dev/mouse: No such file or directory=0A=
Mar 11 10:08:30 HOME gpm: gpm startup succeeded=0A=
Mar 11 10:08:30 HOME crond: crond startup succeeded=0A=
Mar 11 10:08:31 HOME xfs: xfs startup failed=0A=
Mar 11 10:08:31 HOME anacron: anacron startup succeeded=0A=
Mar 11 10:08:31 HOME atd: atd startup succeeded=0A=
Mar 11 10:08:31 HOME wine: Registering binary handler for Windows =
applications=0A=
Mar 11 10:08:31 HOME rc: Starting wine:  succeeded=0A=
Mar 11 10:08:36 HOME login(pam_unix)[918]: authentication failure; =
logname=3DLOGIN uid=3D0 euid=3D0 tty=3Dtty1 ruser=3D rhost=3D  =
user=3Droot=0A=
Mar 11 10:08:38 HOME login[918]: FAILED LOGIN 1 FROM (null) FOR root, =
Authentication failure=0A=
Mar 11 10:08:40 HOME login(pam_unix)[918]: session opened for user root =
by LOGIN(uid=3D0)=0A=
Mar 11 10:08:41 HOME  -- root[918]: ROOT LOGIN ON tty1=0A=
Mar 11 10:14:33 HOME shutdown: shutting down for system halt=0A=
Mar 11 10:14:33 HOME init: Switching to runlevel: 0=0A=
Mar 11 10:14:33 HOME login(pam_unix)[918]: session closed for user root=0A=
Mar 11 10:14:34 HOME anacron: anacron shutdown succeeded=0A=
Mar 11 10:14:35 HOME atd: atd shutdown succeeded=0A=
Mar 11 10:14:35 HOME rc: Stopping keytable:  succeeded=0A=
Mar 11 10:14:35 HOME gpm: gpm shutdown failed=0A=
Mar 11 10:14:35 HOME sshd: sshd -TERM succeeded=0A=
Mar 11 10:14:35 HOME sendmail: sendmail shutdown succeeded=0A=
Mar 11 10:14:35 HOME sendmail: sm-client shutdown succeeded=0A=
Mar 11 10:14:35 HOME xinetd[818]: Exiting...=0A=
Mar 11 10:14:35 HOME xinetd: xinetd shutdown succeeded=0A=
Mar 11 10:14:35 HOME crond: crond shutdown succeeded=0A=
Mar 11 10:14:35 HOME apmd[766]: Exiting=0A=
Mar 11 10:14:36 HOME apmd: apmd shutdown succeeded=0A=
Mar 11 10:14:36 HOME dd: 1+0 records in=0A=
Mar 11 10:14:36 HOME dd: 1+0 records out=0A=
Mar 11 10:14:36 HOME random: Saving random seed:  succeeded=0A=
Mar 11 10:14:37 HOME rpc.statd[684]: Caught signal 15, un-registering =
and exiting.=0A=
Mar 11 10:14:37 HOME nfslock: rpc.statd shutdown succeeded=0A=
Mar 11 10:14:37 HOME portmap: portmap shutdown succeeded=0A=
Mar 11 10:14:37 HOME kernel: Kernel logging (proc) stopped.=0A=
Mar 11 10:14:37 HOME kernel: Kernel log daemon terminating.=0A=
Mar 11 10:14:38 HOME syslog: klogd shutdown succeeded=0A=
Mar 11 10:14:38 HOME exiting on signal 15=0A=
Mar 12 20:26:25 HOME syslogd 1.4.1: restart.=0A=
Mar 12 20:26:25 HOME syslog: syslogd startup succeeded=0A=
Mar 12 20:26:25 HOME kernel: klogd 1.4.1, log source =3D /proc/kmsg =
started.=0A=
Mar 12 20:26:25 HOME kernel: Linux version 2.4.20-30.8.legacy =
(legacy@yoda.loki.me) (gcc version 3.2 20020903 (Red Hat Linux 8.0 =
3.2-7)) #1 Fri Feb 20 17:47:48 PST 2004=0A=
Mar 12 20:26:25 HOME kernel: BIOS-provided physical RAM map:=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 0000000000000000 - =
00000000000a0000 (usable)=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 00000000000f0000 - =
0000000000100000 (reserved)=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 0000000000100000 - =
000000001fff0000 (usable)=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 000000001fff0000 - =
000000001fff3000 (ACPI NVS)=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 000000001fff3000 - =
0000000020000000 (ACPI data)=0A=
Mar 12 20:26:25 HOME kernel:  BIOS-e820: 00000000fec00000 - =
0000000100000000 (reserved)=0A=
Mar 12 20:26:25 HOME kernel: 0MB HIGHMEM available.=0A=
Mar 12 20:26:25 HOME kernel: 511MB LOWMEM available.=0A=
Mar 12 20:26:25 HOME kernel: On node 0 totalpages: 131056=0A=
Mar 12 20:26:25 HOME syslog: klogd startup succeeded=0A=
Mar 12 20:26:25 HOME kernel: zone(0): 4096 pages.=0A=
Mar 12 20:26:25 HOME kernel: zone(1): 126960 pages.=0A=
Mar 12 20:26:25 HOME portmap: portmap startup succeeded=0A=
Mar 12 20:26:25 HOME kernel: zone(2): 0 pages.=0A=
Mar 12 20:26:26 HOME kernel: Kernel command line: ro root=3DLABEL=3D/ =
hdb=3Dide-scsi=0A=
Mar 12 20:26:26 HOME nfslock: rpc.statd startup succeeded=0A=
Mar 12 20:26:26 HOME rpc.statd[682]: Version 1.0.1 Starting=0A=
Mar 12 20:26:26 HOME kernel: ide_setup: hdb=3Dide-scsi=0A=
Mar 12 20:26:26 HOME keytable: Loading keymap: =0A=
Mar 12 20:26:26 HOME kernel: Initializing CPU#0=0A=
Mar 12 20:26:26 HOME keytable: =0A=
Mar 12 20:26:26 HOME kernel: Detected 2393.995 MHz processor.=0A=
Mar 12 20:26:26 HOME keytable: =0A=
Mar 12 20:26:26 HOME kernel: Console: colour VGA+ 80x25=0A=
Mar 12 20:26:26 HOME rc: Starting keytable:  succeeded=0A=
Mar 12 20:26:26 HOME kernel: Calibrating delay loop... 4771.02 BogoMIPS=0A=
Mar 12 20:26:26 HOME kernel: Memory: 511516k/524224k available (1340k =
kernel code, 10148k reserved, 999k data, 128k init, 0k highmem)=0A=
Mar 12 20:26:26 HOME random: Initializing random number generator:  =
succeeded=0A=
Mar 12 20:26:26 HOME kernel: Dentry cache hash table entries: 65536 =
(order: 7, 524288 bytes)=0A=
Mar 12 20:26:26 HOME kernel: Inode cache hash table entries: 32768 =
(order: 6, 262144 bytes)=0A=
Mar 12 20:26:26 HOME kernel: Mount cache hash table entries: 512 (order: =
0, 4096 bytes)=0A=
Mar 12 20:26:26 HOME rc: Starting pcmcia:  succeeded=0A=
Mar 12 20:26:27 HOME kernel: Buffer-cache hash table entries: 32768 =
(order: 5, 131072 bytes)=0A=
Mar 12 20:26:27 HOME kernel: Page-cache hash table entries: 131072 =
(order: 7, 524288 bytes)=0A=
Mar 12 20:26:27 HOME netfs: Mounting other filesystems:  succeeded=0A=
Mar 12 20:26:27 HOME kernel: CPU: Trace cache: 12K uops, L1 D cache: 8K=0A=
Mar 12 20:26:27 HOME kernel: CPU: L2 cache: 512K=0A=
Mar 12 20:26:23 HOME ifup:  failed; no link present.  Check cable? =0A=
Mar 12 20:26:27 HOME apmd[764]: Version 3.0.2 (APM BIOS 1.2, Linux =
driver 1.16)=0A=
Mar 12 20:26:27 HOME apmd: apmd startup succeeded=0A=
Mar 12 20:26:27 HOME kernel: Intel machine check architecture supported.=0A=
Mar 12 20:26:23 HOME network: Bringing up interface eth0:  failed =0A=
Mar 12 20:26:27 HOME kernel: Intel machine check reporting enabled on =
CPU#0.=0A=
Mar 12 20:26:27 HOME autofs: automount startup succeeded=0A=
Mar 12 20:26:28 HOME sshd: Starting sshd:=0A=
Mar 12 20:26:28 HOME kernel: CPU: Intel(R) Pentium(R) 4 CPU 2.40GHz =
stepping 07=0A=
Mar 12 20:26:28 HOME kernel: Enabling fast FPU save and restore... done.=0A=
Mar 12 20:26:28 HOME kernel: Enabling unmasked SIMD FPU exception =
support... done.=0A=
Mar 12 20:26:28 HOME kernel: Checking 'hlt' instruction... OK.=0A=
Mar 12 20:26:28 HOME apmd[764]: Charge: * * * (-1% unknown)=0A=
Mar 12 20:26:28 HOME kernel: POSIX conformance testing by UNIFIX=0A=
Mar 12 20:26:29 HOME kernel: mtrr: v1.40 (20010327) Richard Gooch =
(rgooch@atnf.csiro.au)=0A=
Mar 12 20:26:29 HOME kernel: mtrr: detected mtrr type: Intel=0A=
Mar 12 20:26:29 HOME kernel: PCI: PCI BIOS revision 2.10 entry at =
0xfb270, last bus=3D1=0A=
Mar 12 20:26:29 HOME kernel: PCI: Using configuration type 1=0A=
Mar 12 20:26:29 HOME kernel: PCI: Probing PCI hardware=0A=
Mar 12 20:26:29 HOME kernel: PCI: Using IRQ router VIA [1106/3177] at =
00:11.0=0A=
Mar 12 20:26:29 HOME kernel: isapnp: Scanning for PnP cards...=0A=
Mar 12 20:26:29 HOME kernel: isapnp: No Plug & Play device found=0A=
Mar 12 20:26:29 HOME kernel: Linux NET4.0 for Linux 2.4=0A=
Mar 12 20:26:29 HOME kernel: Based upon Swansea University Computer =
Society NET3.039=0A=
Mar 12 20:26:29 HOME kernel: Initializing RT netlink socket=0A=
Mar 12 20:26:29 HOME kernel: apm: BIOS version 1.2 Flags 0x07 (Driver =
version 1.16)=0A=
Mar 12 20:26:29 HOME kernel: Starting kswapd=0A=
Mar 12 20:26:29 HOME kernel: VFS: Disk quotas vdquot_6.5.1=0A=
Mar 12 20:26:29 HOME sshd:  succeeded=0A=
Mar 12 20:26:30 HOME kernel: Detected PS/2 Mouse Port.=0A=
Mar 12 20:26:30 HOME sshd: =0A=
Mar 12 20:26:30 HOME kernel: pty: 2048 Unix98 ptys configured=0A=
Mar 12 20:26:30 HOME rc: Starting sshd:  succeeded=0A=
Mar 12 20:26:30 HOME kernel: Serial driver version 5.05c (2001-07-08) =
with MANY_PORTS MULTIPORT SHARE_IRQ SERIAL_PCI ISAPNP enabled=0A=
Mar 12 20:26:30 HOME kernel: ttyS0 at 0x03f8 (irq =3D 4) is a 16550A=0A=
Mar 12 20:26:30 HOME kernel: ttyS1 at 0x02f8 (irq =3D 3) is a 16550A=0A=
Mar 12 20:26:30 HOME kernel: Real Time Clock Driver v1.10e=0A=
Mar 12 20:26:30 HOME kernel: Floppy drive(s): fd0 is 1.44M=0A=
Mar 12 20:26:30 HOME kernel: FDC 0 is a post-1991 82077=0A=
Mar 12 20:26:30 HOME kernel: NET4: Frame Diverter 0.46=0A=
Mar 12 20:26:30 HOME kernel: RAMDISK driver initialized: 16 RAM disks of =
4096K size 1024 blocksize=0A=
Mar 12 20:26:31 HOME kernel: Uniform Multi-Platform E-IDE driver =
Revision: 7.00beta3-.2.4=0A=
Mar 12 20:26:31 HOME kernel: ide: Assuming 33MHz system bus speed for =
PIO modes; override with idebus=3Dxx=0A=
Mar 12 20:26:31 HOME kernel: VP_IDE: IDE controller at PCI slot 00:11.1=0A=
Mar 12 20:26:31 HOME kernel: VP_IDE: chipset revision 6=0A=
Mar 12 20:26:31 HOME kernel: VP_IDE: not 100%% native mode: will probe =
irqs later=0A=
Mar 12 20:26:31 HOME kernel: VP_IDE: VIA vt8235 (rev 00) IDE UDMA133 =
controller on pci00:11.1=0A=
Mar 12 20:26:31 HOME kernel:     ide0: BM-DMA at 0xdc00-0xdc07, BIOS =
settings: hda:DMA, hdb:DMA=0A=
Mar 12 20:26:31 HOME kernel:     ide1: BM-DMA at 0xdc08-0xdc0f, BIOS =
settings: hdc:pio, hdd:DMA=0A=
Mar 12 20:26:31 HOME kernel: hda: ST360020A, ATA DISK drive=0A=
Mar 12 20:26:32 HOME kernel: hdb: SONY CD-RW CRX1611, ATAPI CD/DVD-ROM =
drive=0A=
Mar 12 20:26:32 HOME kernel: blk: queue c03a6260, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 12 20:26:32 HOME kernel: hdd: ST380011A, ATA DISK drive=0A=
Mar 12 20:26:32 HOME kernel: blk: queue c03a6808, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 12 20:26:32 HOME kernel: ide0 at 0x1f0-0x1f7,0x3f6 on irq 14=0A=
Mar 12 20:26:32 HOME kernel: ide1 at 0x170-0x177,0x376 on irq 15=0A=
Mar 12 20:26:32 HOME kernel: hda: attached ide-disk driver.=0A=
Mar 12 20:26:32 HOME kernel: hda: host protected area =3D> 1=0A=
Mar 12 20:26:32 HOME kernel: hda: 117231408 sectors (60022 MB) w/2048KiB =
Cache, CHS=3D7297/255/63, UDMA(100)=0A=
Mar 12 20:26:32 HOME kernel: hdd: attached ide-disk driver.=0A=
Mar 12 20:26:32 HOME kernel: hdd: host protected area =3D> 1=0A=
Mar 12 20:26:32 HOME kernel: hdd: 156301488 sectors (80026 MB) w/2048KiB =
Cache, CHS=3D9729/255/63, UDMA(100)=0A=
Mar 12 20:26:32 HOME kernel: ide-floppy driver 0.99.newide=0A=
Mar 12 20:26:32 HOME kernel: Partition check:=0A=
Mar 12 20:26:32 HOME kernel:  hda:hda: dma_intr: status=3D0x51 { =
DriveReady SeekComplete Error }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:32 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:32 HOME kernel: blk: queue c03a6260, I/O limit 4095Mb (mask =
0xffffffff)=0A=
Mar 12 20:26:32 HOME kernel: hdb: DMA disabled=0A=
Mar 12 20:26:32 HOME kernel: ide0: reset: success=0A=
Mar 12 20:26:32 HOME kernel:  hda1 hda2 hda3 hda4 < hda5 hda6 >=0A=
Mar 12 20:26:32 HOME kernel:  hdd: hdd1 hdd2 < hdd5 >=0A=
Mar 12 20:26:32 HOME kernel: ide-floppy driver 0.99.newide=0A=
Mar 12 20:26:32 HOME kernel: md: md driver 0.90.0 MAX_MD_DEVS=3D256, =
MD_SB_DISKS=3D27=0A=
Mar 12 20:26:32 HOME kernel: md: Autodetecting RAID arrays.=0A=
Mar 12 20:26:32 HOME kernel: md: autorun ...=0A=
Mar 12 20:26:33 HOME kernel: md: ... autorun DONE.=0A=
Mar 12 20:26:33 HOME kernel: NET4: Linux TCP/IP 1.0 for NET4.0=0A=
Mar 12 20:26:33 HOME kernel: IP Protocols: ICMP, UDP, TCP, IGMP=0A=
Mar 12 20:26:33 HOME kernel: IP: routing cache hash table of 4096 =
buckets, 32Kbytes=0A=
Mar 12 20:26:33 HOME kernel: TCP: Hash tables configured (established =
32768 bind 65536)=0A=
Mar 12 20:26:33 HOME kernel: Linux IP multicast router 0.06 plus PIM-SM=0A=
Mar 12 20:26:33 HOME kernel: NET4: Unix domain sockets 1.0/SMP for Linux =
NET4.0.=0A=
Mar 12 20:26:33 HOME kernel: RAMDISK: Compressed image found at block 0=0A=
Mar 12 20:26:33 HOME kernel: Freeing initrd memory: 126k freed=0A=
Mar 12 20:26:33 HOME kernel: VFS: Mounted root (ext2 filesystem).=0A=
Mar 12 20:26:33 HOME kernel: Journalled Block Device driver loaded=0A=
Mar 12 20:26:33 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 12 20:26:33 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 12 20:26:33 HOME kernel: Freeing unused kernel memory: 128k freed=0A=
Mar 12 20:26:33 HOME kernel: usb.c: registered new driver usbdevfs=0A=
Mar 12 20:26:33 HOME kernel: usb.c: registered new driver hub=0A=
Mar 12 20:26:33 HOME kernel: PCI: Found IRQ 5 for device 00:10.3=0A=
Mar 12 20:26:33 HOME kernel: PCI: Sharing IRQ 5 with 00:0c.0=0A=
Mar 12 20:26:33 HOME kernel: ehci-hcd 00:10.3: VIA Technologies, Inc. =
USB 2.0=0A=
Mar 12 20:26:33 HOME kernel: ehci-hcd 00:10.3: irq 5, pci mem e0849000=0A=
Mar 12 20:26:33 HOME kernel: usb.c: new USB bus registered, assigned bus =
number 1=0A=
Mar 12 20:26:33 HOME kernel: PCI: 00:10.3 PCI cache line size set =
incorrectly (32 bytes) by BIOS/FW.=0A=
Mar 12 20:26:33 HOME kernel: PCI: 00:10.3 PCI cache line size corrected =
to 128.=0A=
Mar 12 20:26:33 HOME kernel: ehci-hcd 00:10.3: USB 2.0 enabled, EHCI =
1.00, driver 2003-Jan-22=0A=
Mar 12 20:26:33 HOME kernel: hub.c: USB hub found=0A=
Mar 12 20:26:33 HOME kernel: hub.c: 6 ports detected=0A=
Mar 12 20:26:33 HOME kernel: usb.c: registered new driver hiddev=0A=
Mar 12 20:26:33 HOME kernel: usb.c: registered new driver hid=0A=
Mar 12 20:26:33 HOME kernel: hid-core.c: v1.8.1 Andreas Gal, Vojtech =
Pavlik <vojtech@suse.cz>=0A=
Mar 12 20:26:33 HOME kernel: hid-core.c: USB HID support drivers=0A=
Mar 12 20:26:33 HOME kernel: mice: PS/2 mouse device common for all mice=0A=
Mar 12 20:26:33 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,2), internal journal=0A=
Mar 12 20:26:33 HOME kernel: Adding Swap: 1052248k swap-space (priority =
-1)=0A=
Mar 12 20:26:33 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:34 HOME xinetd: xinetd startup succeeded=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: status=3D0x51 { DriveReady =
SeekComplete Error }=0A=
Mar 12 20:26:34 HOME kernel: hda: dma_intr: error=3D0x84 { =
DriveStatusError BadCRC }=0A=
Mar 12 20:26:34 HOME kernel: ide0: reset: success=0A=
Mar 12 20:26:34 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 12 20:26:34 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,5), internal journal=0A=
Mar 12 20:26:34 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 12 20:26:34 HOME kernel: kjournald starting.  Commit interval 5 =
seconds=0A=
Mar 12 20:26:34 HOME kernel: EXT3 FS 2.4-0.9.19, 19 August 2002 on =
ide0(3,6), internal journal=0A=
Mar 12 20:26:34 HOME kernel: EXT3-fs: mounted filesystem with ordered =
data mode.=0A=
Mar 12 20:26:35 HOME kernel: SCSI subsystem driver Revision: 1.00=0A=
Mar 12 20:26:35 HOME kernel: hdb: attached ide-scsi driver.=0A=
Mar 12 20:26:35 HOME kernel: scsi0 : SCSI host adapter emulation for IDE =
ATAPI devices=0A=
Mar 12 20:26:35 HOME kernel:   Vendor: SONY      Model: CD-RW CRX1611    =
 Rev: TYS3=0A=
Mar 12 20:26:35 HOME kernel:   Type:   CD-ROM                            =
 ANSI SCSI revision: 02=0A=
Mar 12 20:26:35 HOME kernel: IA-32 Microcode Update Driver: v1.11 =
<tigran@veritas.com>=0A=
Mar 12 20:26:36 HOME kernel: parport0: PC-style at 0x378 [PCSPP,TRISTATE]=0A=
Mar 12 20:26:36 HOME kernel: ip_tables: (C) 2000-2002 Netfilter core team=0A=
Mar 12 20:26:36 HOME kernel: PCI: Found IRQ 11 for device 00:0a.0=0A=
Mar 12 20:26:36 HOME kernel: PCI: Sharing IRQ 11 with 00:10.1=0A=
Mar 12 20:26:36 HOME kernel: ttySHSF0 at I/O 0xc000 (irq =3D 11) is a =
Conexant HSF softmodem (PCI-14f1:2f00-14f1:2002)=0A=
Mar 12 20:26:36 HOME kernel: PCI: Found IRQ 5 for device 00:0c.0=0A=
Mar 12 20:26:36 HOME kernel: PCI: Sharing IRQ 5 with 00:10.3=0A=
Mar 12 20:26:36 HOME kernel: ttySHSF1 at I/O 0xc800 (irq =3D 5) is a =
Conexant HSF softmodem (PCI-14f1:2f00-14f1:2004)=0A=
Mar 12 20:26:36 HOME kernel: usb.c: registered new driver hsfusbcd2=0A=
Mar 12 20:26:36 HOME kernel: via-rhine.c:v1.10-LK1.1.17  March-1-2003  =
Written by Donald Becker=0A=
Mar 12 20:26:36 HOME kernel:   =
http://www.scyld.com/network/via-rhine.html=0A=
Mar 12 20:26:36 HOME kernel: PCI: Found IRQ 11 for device 00:12.0=0A=
Mar 12 20:26:37 HOME kernel: PCI: Sharing IRQ 11 with 00:0d.0=0A=
Mar 12 20:26:37 HOME kernel: PCI: Sharing IRQ 11 with 00:10.0=0A=
Mar 12 20:26:37 HOME kernel: eth0: VIA VT6102 Rhine-II at 0xe400, =
00:50:70:c4:10:77, IRQ 11.=0A=
Mar 12 20:26:37 HOME kernel: eth0: MII PHY found at address 1, status =
0x7849 advertising 05e1 Link 0000.=0A=
Mar 12 20:26:37 HOME kernel: ne2k-pci.c:v1.02 10/19/2000 D. Becker/P. =
Gortmaker=0A=
Mar 12 20:26:37 HOME kernel:   http://www.scyld.com/network/ne2k-pci.html=0A=
Mar 12 20:26:37 HOME kernel: PCI: Found IRQ 12 for device 00:0b.0=0A=
Mar 12 20:26:37 HOME kernel: PCI: Sharing IRQ 12 with 00:10.2=0A=
Mar 12 20:26:37 HOME kernel: PCI: Sharing IRQ 12 with 00:11.5=0A=
Mar 12 20:26:38 HOME kernel: eth1: RealTek RTL-8029 found at 0xc400, IRQ =
12, 52:54:AB:3E:DC:78.=0A=
Mar 12 20:26:39 HOME xinetd[816]: xinetd Version 2.3.7 started with =
libwrap options compiled in.=0A=
Mar 12 20:26:39 HOME xinetd[816]: Started working: 1 available service=0A=
Mar 12 20:26:40 HOME sendmail: sendmail startup succeeded=0A=
Mar 12 20:26:40 HOME sendmail: sm-client startup succeeded=0A=
Mar 12 20:26:40 HOME gpm[858]: oops() invoked from gpm.c(978)=0A=
Mar 12 20:26:40 HOME gpm[858]: /dev/mouse: No such file or directory=0A=
Mar 12 20:26:40 HOME gpm: gpm startup succeeded=0A=
Mar 12 20:26:41 HOME crond: crond startup succeeded=0A=
Mar 12 20:26:42 HOME xfs: xfs startup failed=0A=
Mar 12 20:26:42 HOME anacron: anacron startup succeeded=0A=
Mar 12 20:26:42 HOME atd: atd startup succeeded=0A=
Mar 12 20:26:42 HOME wine: Registering binary handler for Windows =
applications=0A=
Mar 12 20:26:42 HOME rc: Starting wine:  succeeded=0A=
Mar 12 20:26:49 HOME login(pam_unix)[916]: session opened for user root =
by LOGIN(uid=3D0)=0A=
Mar 12 20:26:49 HOME  -- root[916]: ROOT LOGIN ON tty1=0A=

------=_NextPart_000_0020_01C52789.0C00D0B0--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
