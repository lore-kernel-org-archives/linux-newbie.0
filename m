From: "Meyer, David R" <David.Meyer07@ca.com>
Subject: RE: Overwrote bootloader
Date: Mon, 30 Jan 2006 10:32:14 -0500
Message-ID: <83810D80449F3F43A93AADE8FC643B6E5C64F6@USILMS11.ca.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sumit kalra <i_am_sumit_kalra@yahoo.com>, linux-newbie@vger.kernel.org

Don't panic...this one is easy...

If you have the Windows XP CD, run the recovery module and it will fix
the bootloader.

HOWEVER, you can also stick with a Linux boot loader.  I have been
dual-booting my work laptop for three years now using a varied array of
distros.  I have not used the Windows bootloader since 2003.  If you
install Linux (as you have found out) it will find your Windows
partition and bring that option up to you so you can once again run both
OS's.

Dave 

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of sumit kalra
Sent: Monday, January 30, 2006 10:25 AM
To: linux-newbie@vger.kernel.org
Subject: Overwrote bootloader

Hi All,

I have a dual boot machine (Win XP and Fedora Core4) using grub as the
bootloader. The loader was working fine for both Windows and Linux till
I started playing around with it.

I edited /etc/grub.conf and ran 'grub-install /dev/hda8' (windows
partition) instead of 'grub-install /dev/hda' so basically the Linux
bootloader has overwritten the Windows boot loader.
Realizing my mistake, I ran 'grub-install /dev/hda'.

If from the main grub screen I choose 'Linux', I can boot into Linux but
if I choose 'Windows' I get to the same bootloader again.

Another problem, I can't mount the windows partition
(NTFS) since FC4 apparently doesn't support it.

Can I, in anyway, recover the Windows bootloader?

Thanks,
Sumit


		
___________________________________________________________
To help you stay safe and secure online, we've developed the all new
Yahoo! Security Centre. http://uk.security.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
