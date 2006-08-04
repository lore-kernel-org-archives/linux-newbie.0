From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Issuing BIOS interrupts in Linux
Date: Fri, 4 Aug 2006 16:30:03 +0530
Message-ID: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Hi List,

I want to issue BIOS interrupts in Linux (both user space & kernel
space are fine). More specifically I want to issue BIOS interrupt 13h
for accessing disk using the BIOS routines. How can I do so (issue the
BIOS interrupt)?

In the file /proc/interrupts on my system, the interrupt 13 h (19
decimal) is used by some USB driver:

 16:          0        Phys-irq  uhci_hcd:usb1, uhci_hcd:usb4
 17:          2        Phys-irq  peth0
 18:     637572        Phys-irq  eth1
 19:          0        Phys-irq  uhci_hcd:usb2
 20:    1275249        Phys-irq  uhci_hcd:usb3

So will I be able to use the BIOS routine in this case?

TIA,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
