From: cr <cr@orcon.net.nz>
Subject: Questions on GRUB and RH7.2
Date: Tue, 3 Jun 2003 09:02:57 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306020907.h5297J1Y027705@dbmail-mx3.orcon.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Can any kind person give some info on the following:

I don't seem to have a 'initrd' file - does it matter?
Should I use the   'syslinux.cfg'  off the backup boot floppy instead?
How do I boot DOS  usind GRUB?

Background is:

When I installed Red Hat 7.2, it wouldn't boot off the hard drive - it only 
ever got as far as 'LI' or 'GR' and there it would hang.   I've been booting 
successfully off floppy, but I decided to fix it.

So, following the GRUB manual and various HOWTOs, I've just reinstalled GRUB 
and created a (/hda1) /boot/grub partition in which I put a copy of vmlinuz 
off my boot floppy (there was no vmlinuz on my hard drive).   I also created 
a   grub.conf  file following the examples of menu.lst  and  grub.conf  in 
the GRUB-RESTORE and  Linux+Win9x+GRUB   HOWTOs, and now it seems to boot 
fine.

Those examples also include a mention of a  initrd   file thus:

title Red hat Linux
root (hd0,0)
kernel /vmlinuz  ro   root=/dev/hda2
initrd  /initrd.img

I can't find a   'initrd' file anywhere.    Everything seems to work without 
it though.   Does it matter if I leave it off?

Next, there's also a  syslinux.cfg   file on the Linux boot floppy - should I 
copy that into   /boot/grub    and add line in grub.conf of:
initrd  syslinux.cfg       or similar?

Third, I'd like to also boot to a DOS partition (on drive /hdc)  - but I 
can't find the right command to invoke DOS.   So far I've got as far as

title  DOS
map (hd0) (hd2)
map (hd2) (hd0)

chainloader +1   

but I get a message   'invalid or unsupported executable format'.
I'm not quite sure how to address DOS.   If anyone has a dual boot Linux/DOS 
setup, the contents of their   /boot/grub/grub.conf  or    menu.lst  files 
would maybe give a guide.

Thanks

Chris


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
