From: caszonyi@rdslink.ro
Subject: Re: help on dmesg output
Date: Mon, 11 Apr 2005 22:05:27 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504112155400.1512@grinch.ro>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 11 Apr 2005, James Miller wrote:

> kernel and Ubuntu. I accomplished that by adding snd-cs4236 to 
> /etc/modules--pretty simple (this is a Crystal Semiconductor CS4236 chipset).
>
> Turns out it is not so easy under Debian unstable with the 2.6.10 kernel. I 
> get some worrying output in dmesg, which gives the following:
>
> <snip>
> inserting floppy driver for 2.6.10-1-686
> Floppy drive(s): fd0 is 1.44M
> FDC 0 is a National Semiconductor PC87306
> input: PS/2 Logitech Mouse on isa0060/serio1
> mice: PS/2 mouse device common for all mice
> ts: Compaq touchscreen protocol output
> input: PC Speaker
> Real Time Clock Driver v1.12
> ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
> ad1848: No ISAPnP cards found, trying standard ones...
> cs4232: set synthio and synthirq to use the wavefront facilities.
> cs4232: Must set io, irq and dma.

This seems to be the OSS sound driver and you seem to insert the OSS sound 
module _after_ you inserted the ALSA ones (snd_*) so this can be the cause 
for
  |
  |
  |
  V

> Unable to handle kernel paging request at virtual address f0d8e5c8
> printing eip:

Can you post the full dmesg ?

> Oops: 0002 [#1]
> PREEMPT Modules linked in: ns558 gameport ad1848 uart401 sound rtc pcspkr 
> tsdev mousedev evdev psmouse floppy parport_pc parport i2c_piix4 i2c_core 
> pci_hotplug intel_agp usb_storage uhci_hcd usbcore 3c59x agpgart capability 
> commoncap snd_cs4236 snd_opl3_lib snd_hwdep snd_cs4236_lib snd_mpu401_uart 
> snd_rawmidi snd_seq_device snd_cs4231_lib snd_pcm snd_timer snd soundcore 
> snd_page_alloc ide_cd cdrom ext3 jbd mbcache ide_generic via82cxxx trm290 
> triflex slc90e66 sis5513 siimage serverworks sc1200 rz1000 piix pdc202xx_old 
> opti621 ns87415 hpt366 ide_disk hpt34x generic cy82c693 cs5530 cs5520 cmd64x 
> atiixp amd74xx alim15x3 aec62xx pdc202xx_new ide_core sd_mod ata_piix libata 
> scsi_mod unix fbcon font bitblit vesafb cfbcopyarea cfbimgblt cfbfillrect

You have _a lot_ of modules linked in. I don't think you need all of them.

>
> Any input on what this means and what I can do about it? Not modprobing that 
> module would resolve it, of course. And I'm not beyond doing that. I've 
> pretty much decided it's not worth any more effort trying to get sound going 
> on this machine. But I'm thinking (in my rather uninformed way) that this 
> error message might be something that needs to be reported to someone 
> involved with the kernel.
>

AFAIK it's not nice for the kernel to load strange modules so i think it's 
better if you use just the modules you want

> Another wierd thing regarding this module is that it seems to somehow get 
> isapnp working. IO addresses that previously could not be assigned (in the 
> 200 range) when I was trying to get that ISA soundcard working are now being 
> assigned. Here's /proc/ioports output that shows this:
>
> 0000-001f : dma1
> 0020-0021 : pic1
> 0040-0043 : timer0
> 0050-0053 : timer1
> 0060-006f : keyboard
> 0070-0077 : rtc
> 0080-008f : dma page reg
> 00a0-00a1 : pic2
> 00c0-00df : dma2
> 00f0-00ff : fpu
> 0170-0177 : ide1
> 01f0-01f7 : ide0
> 0213-0213 : ISAPnP
> 0220-022f : CS4236+ SB
> 02f8-02ff : serial
> 0330-0331 : MPU401 UART
> 0376-0376 : ide1
> 0378-037a : parport0
> 037b-037f : parport0
> 0388-0389 : OPL2/3 (left)
> 038a-038b : OPL2/3 (right)
> 03c0-03df : vesafb
> 03f6-03f6 : ide0
> 03f8-03ff : serial
> 0534-0537 : CS4231
> 0778-077a : parport0
> 0800-083f : 0000:00:07.3
>  0800-083f : pnp 00:00
> 0840-085f : 0000:00:07.3
>  0850-085f : pnp 00:00
>    0850-0857 : piix4-smbus
> 0a79-0a79 : isapnp write
> 0cf8-0cff : PCI conf1
> 0f00-0f07 : CS4232 Control
> dc00-dc7f : 0000:00:0e.0
>  dc00-dc7f : 0000:00:0e.0
> dce0-dcff : 0000:00:07.2
>  dce0-dcff : uhci_hcd
> e000-efff : PCI Bus #01
>  ec00-ecff : 0000:01:00.0
> ffa0-ffaf : 0000:00:07.1
>  ffa0-ffa7 : ide0
>  ffa8-ffaf : ide1
>
> 0x220 was the address I was trying to assign to the Logitech Soundman card I 
> was trying to get going earlier. I could neither assign that address, nor 
> 0x230. Weird, if you ask me. But what do I know?
>

What do you mean that you couldn't assign that adress ? The fact that the 
card didn't worked usually means that IO + IRQ + DMA probing for the card 
was unsuccessfull and/or the driver initialization failed.

> FYI, James
> -

--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
