From: James Miller <jamtat@mailsnare.net>
Subject: help on dmesg output
Date: Mon, 11 Apr 2005 10:20:31 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Unfortunately, this note concerns my ongoing misfortunes with sound on a 
mod'd Dell Optiplex running Debian unstable. I recently posted on trying 
to get an ISA soundcard going on this machine, an endeavor which finally 
resulted in frustration and failure. After that, I decided to take what 
appeared to be the path of least resistance and just try to use the 
onboard sound. I previously had onboard sound working on this machine 
under the 2.6.8 kernel and Ubuntu. I accomplished that by adding 
snd-cs4236 to /etc/modules--pretty simple (this is a Crystal Semiconductor 
CS4236 chipset).

Turns out it is not so easy under Debian unstable with the 2.6.10 kernel. 
I get some worrying output in dmesg, which gives the following:

<snip>
inserting floppy driver for 2.6.10-1-686
Floppy drive(s): fd0 is 1.44M
FDC 0 is a National Semiconductor PC87306
input: PS/2 Logitech Mouse on isa0060/serio1
mice: PS/2 mouse device common for all mice
ts: Compaq touchscreen protocol output
input: PC Speaker
Real Time Clock Driver v1.12
ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
ad1848: No ISAPnP cards found, trying standard ones...
cs4232: set synthio and synthirq to use the wavefront facilities.
cs4232: Must set io, irq and dma.
Unable to handle kernel paging request at virtual address f0d8e5c8
  printing eip:
c01bb70f
*pde = 1fa79067
*pte = 00000000
Oops: 0002 [#1]
PREEMPT 
Modules linked in: ns558 gameport ad1848 uart401 sound rtc pcspkr tsdev mousedev evdev psmouse floppy parport_pc parport i2c_piix4 i2c_core pci_hotplug intel_agp usb_storage uhci_hcd usbcore 3c59x agpgart capability commoncap snd_cs4236 snd_opl3_lib snd_hwdep snd_cs4236_lib snd_mpu401_uart snd_rawmidi snd_seq_device snd_cs4231_lib snd_pcm snd_timer snd soundcore snd_page_alloc ide_cd cdrom ext3 jbd mbcache ide_generic via82cxxx trm290 triflex slc90e66 sis5513 siimage serverworks sc1200 rz1000 piix pdc202xx_old opti621 ns87415 hpt366 ide_disk hpt34x generic cy82c693 cs5530 cs5520 cmd64x atiixp amd74xx alim15x3 aec62xx pdc202xx_new ide_core sd_mod ata_piix libata scsi_mod unix fbcon font bitblit vesafb cfbcopyarea cfbimgblt cfbfillrect
CPU:    0
EIP:    0060:[<c01bb70f>]    Not tainted VLI
EFLAGS: 00010296   (2.6.10-1-686) 
EIP is at kobject_add+0x6f/0x100
eax: c03230a0   ebx: f0cf446c   ecx: f0d8e5c8   edx: f0cf4488
esi: ffffffea   edi: c03230a8   ebp: 00000000   esp: ee857f28
ds: 007b   es: 007b   ss: 0068
Process modprobe (pid: 4673, threadinfo=ee856000 task=ef44aa00)
Stack: c03230a8 f0cf446c f0cf446c ffffffea f0cf4454 c01bb7c8 f0cf446c f0cf446c
        c0323040 f0cf446c c0323040 c021a758 f0cf446c c02b2f64 f0cf362e f0cf4440
        f0cf44c0 08049470 ee856000 c021adbf f0cf4454 f0d8ed54 f0d8d6c9 f0d8e10a 
Call Trace:
  [<c01bb7c8>] kobject_register+0x28/0x60
  [<c021a758>] bus_add_driver+0x58/0xd0
  [<c021adbf>] driver_register+0x2f/0x40
  [<c01eed8d>] pnp_register_driver+0x2d/0x70
  [<f0bb5030>] ns558_init+0x30/0x50 [ns558]
  [<c0132833>] sys_init_module+0x163/0x210
  [<c01030df>] syscall_call+0x7/0xb
Code: 00 ff ff 8d 41 48 0f c1 10 85 d2 0f 85 5e 06 00 00 85 ff 0f 84 86 00 00 00 8b 43 28 8d 53 1c 83 c0 08 89 43 1c 8b 48 04 89 50 04 <89> 11 89 4a 04 8b 43 28 8b 30 8d 4e 48 89 c8 ba ff ff 00 00 0f
  <6>NET: Registered protocol family 17
NET: Registered protocol family 10
Disabled Privacy Extensions on device c032abe0(lo)
IPv6 over IPv4 tunneling driver
eth0: no IPv6 routers present

Any input on what this means and what I can do about it? Not modprobing 
that module would resolve it, of course. And I'm not beyond doing that. 
I've pretty much decided it's not worth any more effort trying to get 
sound going on this machine. But I'm thinking (in my rather uninformed 
way) that this error message might be something that needs to be reported 
to someone involved with the kernel.

Another wierd thing regarding this module is that it seems to somehow get 
isapnp working. IO addresses that previously could not be assigned (in the 
200 range) when I was trying to get that ISA soundcard working are now 
being assigned. Here's /proc/ioports output that shows this:

0000-001f : dma1
0020-0021 : pic1
0040-0043 : timer0
0050-0053 : timer1
0060-006f : keyboard
0070-0077 : rtc
0080-008f : dma page reg
00a0-00a1 : pic2
00c0-00df : dma2
00f0-00ff : fpu
0170-0177 : ide1
01f0-01f7 : ide0
0213-0213 : ISAPnP
0220-022f : CS4236+ SB
02f8-02ff : serial
0330-0331 : MPU401 UART
0376-0376 : ide1
0378-037a : parport0
037b-037f : parport0
0388-0389 : OPL2/3 (left)
038a-038b : OPL2/3 (right)
03c0-03df : vesafb
03f6-03f6 : ide0
03f8-03ff : serial
0534-0537 : CS4231
0778-077a : parport0
0800-083f : 0000:00:07.3
   0800-083f : pnp 00:00
0840-085f : 0000:00:07.3
   0850-085f : pnp 00:00
     0850-0857 : piix4-smbus
0a79-0a79 : isapnp write
0cf8-0cff : PCI conf1
0f00-0f07 : CS4232 Control
dc00-dc7f : 0000:00:0e.0
   dc00-dc7f : 0000:00:0e.0
dce0-dcff : 0000:00:07.2
   dce0-dcff : uhci_hcd
e000-efff : PCI Bus #01
   ec00-ecff : 0000:01:00.0
ffa0-ffaf : 0000:00:07.1
   ffa0-ffa7 : ide0
   ffa8-ffaf : ide1

0x220 was the address I was trying to assign to the Logitech Soundman card 
I was trying to get going earlier. I could neither assign that address, 
nor 0x230. Weird, if you ask me. But what do I know?

FYI, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
