From: Mr MailingList <Mr.MailingList@ntlworld.com>
Subject: linux kernel: irq 11: nobody cared!
Date: Tue, 20 Jul 2004 19:39:30 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407201939.30300.Mr.MailingList@ntlworld.com>
Reply-To: Mr.MailingList@ntlworld.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi have a very irritating problem and so far I have been unable to find a 
solution to it.
 
I have supermicro P3TDDE mob with VIA Apollo 266 chipset and SuSe 9.1 with 
kernel 2.6.5-7.95-smp. The problem is that if I leave the PC unattended i.e 
there is no keyboard or mouse IO activity for about 20 minutes those input 
devices get disabled. The keyboard and mouse is connected the PC via Belkin 
KVM USB switch. Looking through the message file I found that the following 
recodes being logged each time it happens (see below). So far the only remedy 
is to telnet to the machine and reboot it. I suspect that the problem must 
the combination of 2.6 kernel and the hardware. I did not have this problem 
with kernel 2.4 or I don't have this problem when I dual boot to XP. I have 
another supermicro mob (on the same Belkin KVM switch), P6DBE - BX based, 
running the same kernel and that PC does not have this problem. I can leave 
it for hours and nothing happens. I wonder if it's possible somehow to 
reenable the IRQ11. As I said the problem is very irritating since every time 
I go to make myself a coffee I have to turned blasted PC off.

Thanks - Tom

Jun 24 07:18:51 linux kernel: irq 11: nobody cared!
Jun 24 07:18:51 linux kernel: Call Trace:
Jun 24 07:18:51 linux kernel:  [__report_bad_irq+36/144] 
__report_bad_irq+0x24/0x90
Jun 24 07:18:51 linux kernel:  [do_IRQ+356/432] do_IRQ+0x164/0x1b0
Jun 24 07:18:51 linux kernel:  [smp_apic_timer_interrupt+234/352] 
smp_apic_timer_interrupt+0xea/0x160
Jun 24 07:18:51 linux kernel:  [<c011adca>] 
smp_apic_timer_interrupt+0xea/0x160
Jun 24 07:18:51 linux kernel:  [common_interrupt+24/32] 
common_interrupt+0x18/0x20
Jun 24 07:18:51 linux kernel:  [<c010a148>] common_interrupt+0x18/0x20
Jun 24 07:18:51 linux kernel:  [default_idle+0/64] default_idle+0x0/0x40
Jun 24 07:18:51 linux kernel:  [<c01072a0>] default_idle+0x0/0x40
Jun 24 07:18:51 linux kernel:  [default_idle+41/64] default_idle+0x29/0x40
Jun 24 07:18:51 linux kernel:  [<c01072c9>] default_idle+0x29/0x40
Jun 24 07:18:51 linux kernel:  [cpu_idle+36/80] cpu_idle+0x24/0x50
Jun 24 07:18:51 linux kernel:  [<c0107f24>] cpu_idle+0x24/0x50
Jun 24 07:18:51 linux kernel:  [schedule+715/2144] schedule+0x2cb/0x860
Jun 24 07:18:51 linux kernel:  [<c0121e9b>] schedule+0x2cb/0x860
Jun 24 07:18:51 linux kernel:
Jun 24 07:18:51 linux kernel: handlers:
Jun 24 07:18:51 linux kernel: [__crc_simple_unlink+1041724/3600091] 
(usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: [<e1938b00>] (usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: [__crc_simple_unlink+1041724/3600091] 
(usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: [<e1938b00>] (usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: [__crc_simple_unlink+1041724/3600091] 
(usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: [<e1938b00>] (usb_hcd_irq+0x0/0x60 [usbcore])
Jun 24 07:18:51 linux kernel: Disabling IRQ #11
Jun 24 07:18:54 linux kernel: usb 1-2: new full speed USB device using address 
5
Jun 24 07:18:59 linux kernel: usb 1-2: control timeout on ep0out
J
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
