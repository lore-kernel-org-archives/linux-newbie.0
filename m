From: Travis Osterman <travis@wsor.net>
Subject: kernel compile issues
Date: 27 Jul 2003 23:25:30 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1059366330.2983.24.camel@localhost.localdomain>
Reply-To: travis@wsor.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newbie list <linux-newbie@vger.kernel.org>

I posted a few days ago regarding compilation problems.  After
consulting the RH manual, google, and retrying the tips I received here,
I have gotten further, but still cannot achieve the entire process.  I
am running an 18 gig scsi2 drive drive as my main drive with an
AHA2930U2 Adaptec card.  The only configuration of the kernel I changed
was to add the scsi driver support directly into the kernel.  The
following commands run as root give no errors.

# make clean
# make distclean
# make mrproper
# make xconfig
# make dep
# make bzImage
# make modules
# make modules_install
# ./mkinitrd /boot/initrd-2.4.20-8-matrox.img 2.4.20-8
# cp arch/i386/boot/bzImage /boot/vmlinz-matrox

Using grub, the following boots the old kernel fine:

title Red Hat Linux (2.4.20-8)
	root (hd0,5)
	kernel /vmlinuz-2.4.20-8 ro root=LABEL=/ hda=ide-scsi
	initrd /initrd-2.4.20-8.img

However, if I choose to load the following from grub, I receive the
error message located below the entry.

title Matrox Install
	root (hd0,5)
	kernel /vmlinuz-matrox ro root=LABEL=/ hda=ide-scsi
	initrd /initrd-2.4.20-8.img

ds: no socket drivers loaded
vfs: cannot open root dev "label=/" or 00:00
please append a correct "root=" boot option
kernel panic: vfs: unable to mount root fs on 00:00

Finally, I attempted to load the following (honestly not knowing what
some of the other parameters were for) and found that I received a
[failure] on loading modules like mousedev, usb, etc.  The boot did
proceed however.

title Matrox Install 2
	root(hd0,5)
	kernel /vmlinuz-matrox

After performing all of this, I read that two files may need backed up
and copied after compilation so I performed the following:

# mv /boot/System.map /boot/System.oldmap
# cp /usr/src/linux-2.4.20-8/System.map /boot/
# mv /boot/config-2.4.20-8 /boot/config-2.4.20-8-old
# cp /usr/src/linux-2.4.20-8/.config /boot/config-2.4.20-8

This seemed to not affect the boot process of any of the three
configurations I have listed.  I'm really not sure what my next step
is.  Thank you for your help and understanding.

-- Travis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
