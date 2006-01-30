From: "Paul M." <paul@gpmidi.net>
Subject: Re: Overwrote bootloader
Date: Mon, 30 Jan 2006 10:36:40 -0500
Message-ID: <dd43dcfb0601300736v57c42ab0y6a9b4413b36804d@mail.gmail.com>
References: <43DE1B91.1040109@gelm.net>
	 <20060130152455.71791.qmail@web61022.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060130152455.71791.qmail@web61022.mail.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sumit kalra <i_am_sumit_kalra@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On 1/30/06, sumit kalra <i_am_sumit_kalra@yahoo.com> wrote:
> Hi All,
>
> I have a dual boot machine (Win XP and Fedora Core4)
> using grub as the bootloader. The loader was working
> fine for both Windows and Linux till I started playing
> around with it.
>
> I edited /etc/grub.conf and ran 'grub-install
> /dev/hda8' (windows partition) instead of
> 'grub-install /dev/hda' so basically the Linux
> bootloader has overwritten the Windows boot loader.
> Realizing my mistake, I ran 'grub-install /dev/hda'.
>
> If from the main grub screen I choose 'Linux', I can
> boot into Linux but if I choose 'Windows' I get to the
> same bootloader again.

If you boot off the windows cd you might be able to use the "automatic
recovery mode". MS might have more info on reinstalling their
bootloader on their website.

> Another problem, I can't mount the windows partition
> (NTFS) since FC4 apparently doesn't support it.

The Linux-NTFS project (http://linux-ntfs.org/) has kernel modules
that can be installed so you can mount NTFS read-only. Currently there
are two write modes available. There is the half-working-but-safe
mode. This lets you do a few simple file operations. The other mode is
"experimental". You can perform all operations but there is a chance
that it will hose your entire file system.
-Paul

>
> Can I, in anyway, recover the Windows bootloader?
>
> Thanks,
> Sumit
>
>
>
> ___________________________________________________________
> To help you stay safe and secure online, we've developed the all new Yahoo! Security Centre. http://uk.security.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
