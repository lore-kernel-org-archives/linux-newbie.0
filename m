From: Dennis Schridde <lindevel@gmx.net>
Subject: ALSA-Sound IRQ Problems
Date: Fri, 16 Jan 2004 21:37:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401162137.36633.lindevel@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I'm using linux-2.6.1-rc3(-gentoo) with integrated ALSA. (intel8x0)
The first times after compiling this kernel ALSA worked perfectly, but now 
there is no sound anymore and dmesg says:
////////////////////////////////////////////////////////////////////////////////////////////////
PCI: Setting latency timer of device 0000:00:06.0 to 64
intel8x0: clocking to 47432
irq 193: nobody cared!
Call Trace:
 [<c010b68a>] __report_bad_irq+0x2a/0x90
 [<c010b77c>] note_interrupt+0x6c/0xa0
 [<c010ba51>] do_IRQ+0x121/0x130
 [<c0105000>] _stext+0x0/0x60
 [<c0109d6c>] common_interrupt+0x18/0x20
 [<c0105000>] _stext+0x0/0x60
 [<c0107053>] default_idle+0x23/0x30
 [<c01070bc>] cpu_idle+0x2c/0x40
 [<c0364707>] APIC_init_uniprocessor+0x17/0xd0
 [<c0364480>] init_apic_mappings+0xd0/0x130

handlers:
[<e4a6a7c0>] (snd_intel8x0_interrupt+0x0/0x210 [snd_intel8x0])
Disabling IRQ #193
////////////////////////////////////////////////////////////////////////////////////////////////

Has anybody an idea what this could mean, or how to fix it?

Thanks,
Dennis

System:
Gentoo 1.4
Linux-2.6.1-rc3-gentoo (gentoo-dev-sources)
alsa-lib 1.0.0_rc2
alsa-utils 1.0.0_rc2

Hardware:
ASUS A7N8X non-deluxe (nVidia nForce2)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
