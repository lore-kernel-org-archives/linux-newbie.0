From: sumit kalra <i_am_sumit_kalra@yahoo.com>
Subject: RE: Overwrote bootloader
Date: Mon, 30 Jan 2006 15:44:31 +0000 (GMT)
Message-ID: <20060130154431.78924.qmail@web61022.mail.yahoo.com>
References: <C8BDB0BC5EC99640BB29146782FE8D2399FF61@MYSHECMSG01.ad.infosys.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C8BDB0BC5EC99640BB29146782FE8D2399FF61@MYSHECMSG01.ad.infosys.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Digz,

Thanks for your mail.


--- Digvijoy Chatterjee
<Digvijoy_Chatterjee@infosys.com> wrote:
> First of all I don't understand , how you could get
> Windows to /dev/hda8 because Windows always installs
> on /dev/hda1 after
Ooops, it was on hda1. Sorry for the confusion.

> try  getting  a DOS boot floppy which contains the
> DOS boot loader ,and boot windows of it  ,and see if
> you NT Loader is safe ,if your NT Loader got
corrupted then, 
> using  a Windows  recovery CD should help
I don't have a floppy drive. But if Windows backs up
the boot-loader somewhere then I can read it using the
NTFS module and dd it to /dev/hda1. Does this sound
good? If yes, then any idea where is the boot loader
stored by XP? I'll also try thr Windows recovery CD
approach.

> To mount NTFS partitions you have to install the
> NTFS rpm for your
> kernel version , ,or you have to build the NTFS
> module from the kernel
> source tree and insmod/modprobe it ./
I'll search the RPM and install it.

Thanks again.
Sumit

> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org
> [mailto:linux-newbie-owner@vger.kernel.org] On
> Behalf Of sumit kalra
> Sent: Monday, January 30, 2006 8:55 PM
> To: linux-newbie@vger.kernel.org
> Subject: Overwrote bootloader
> 
> Hi All,
> 
> I have a dual boot machine (Win XP and Fedora Core4)
> using grub as the bootloader. The loader was working
> fine for both Windows and Linux till I started
> playing
> around with it.
> 
> I edited /etc/grub.conf and ran 'grub-install
> /dev/hda8' (windows partition) instead of
> 'grub-install /dev/hda' so basically the Linux
> bootloader has overwritten the Windows boot loader.
> Realizing my mistake, I ran 'grub-install /dev/hda'.
> 
> If from the main grub screen I choose 'Linux', I can
> boot into Linux but if I choose 'Windows' I get to
> the
> same bootloader again.
> 
> Another problem, I can't mount the windows partition
> (NTFS) since FC4 apparently doesn't support it.
> 
> Can I, in anyway, recover the Windows bootloader?
> 
> Thanks,
> Sumit


	
	
		
___________________________________________________________ 
Yahoo! Messenger - NEW crystal clear PC to PC calling worldwide with voicemail http://uk.messenger.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
