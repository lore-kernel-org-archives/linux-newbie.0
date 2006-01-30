From: sumit kalra <i_am_sumit_kalra@yahoo.com>
Subject: Overwrote bootloader
Date: Mon, 30 Jan 2006 15:24:55 +0000 (GMT)
Message-ID: <20060130152455.71791.qmail@web61022.mail.yahoo.com>
References: <43DE1B91.1040109@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43DE1B91.1040109@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi All,

I have a dual boot machine (Win XP and Fedora Core4)
using grub as the bootloader. The loader was working
fine for both Windows and Linux till I started playing
around with it.

I edited /etc/grub.conf and ran 'grub-install
/dev/hda8' (windows partition) instead of 
'grub-install /dev/hda' so basically the Linux
bootloader has overwritten the Windows boot loader.
Realizing my mistake, I ran 'grub-install /dev/hda'.

If from the main grub screen I choose 'Linux', I can
boot into Linux but if I choose 'Windows' I get to the
same bootloader again.

Another problem, I can't mount the windows partition
(NTFS) since FC4 apparently doesn't support it.

Can I, in anyway, recover the Windows bootloader?

Thanks,
Sumit


		
___________________________________________________________ 
To help you stay safe and secure online, we've developed the all new Yahoo! Security Centre. http://uk.security.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
