From: "Jose Luis Alarcon Sanchez" <jlalarcon@Madera.zzn.com>
Subject: Re: Kernel 2.6.0-test9 installation
Date: Tue, 11 Nov 2003 23:18:49 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0A473B2DA7DBE5A4793E26CBF60D78B3@jlalarcon.Madera.zzn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lindevel@gmx.net, linux-newbie@vger.kernel.org

---- Begin Original Message ----

Hi list.
When I boot with Kernel 2.6.0-test9 I get the following message:
	RAMDISK: Compressed image found at block 0
	Kernel panic: VFS: Unable to mount root fs on hda2

I configured, compiled (gcc 3.3.1) and installed the Kernel with modules:
	make xconfig
	make bzImage modules modules_install install

It's output is:
	if [ -r System.map ]; then /sbin/depmod -ae -F System.map 
2.6.0-test9; fi
	Kernel: arch/i386/boot/bzImage is ready
	sh /usr/src/linux-2.6.0-test9/arch/i386/boot/install.sh 2.6.0-test9 arch/
i386/boot/bzImage System.map ""
	Root device:    /dev/hda2 (mounted on / as reiserfs)
	Module list:    reiserfs
	Kernel version: 2.6.0-test9 (i386)
	Kernel image:   /boot/vmlinuz-2.6.0-test9
	Initrd image:   /boot/initrd-2.6.0-test9
	Shared libs:    lib/i686/libc.so.6 lib/ld-2.3.2.so
	Modules:        kernel/fs/reiserfs/reiserfs.ko
	Bootsplash:     SuSE (1280x1024)
	Using grub, re-install of bootloader not required.

This creates following in my /boot dir:
	/boot/initrd
	/boot/initrd-2.6.0-test9
	/boot/System.map-2.6.0-test9
	/boot/vmlinuz
	/boot/vmlinuz-2.6.0-test9

In my /boot/grub/menu.lst is the entry:
	title Linux-testing
	    kernel (hd0,1)/boot/vmlinuz-2.6.0-test9 root=/dev/hda2 showopts
	    initrd (hd0,1)/boot/initrd-2.6.0-test9

My .config file is in the attachment.

I'm running SuSE 9.0

What is the problem?
How can I fix it?

Thanks,
Dennis Schridde
---- End Original Message ----



  Hi Dennis.

  Try this command:

.../linux-2.6.0-test9 # make help

  The way of compile the 2.6 kernel is radically changed. Now
you only must do:

.../linux-2.6.0-test9 # make
.../linux-2.6.0-test9 # make modules_install

  Another point about it is that now you need another tool,
different than modutils...The new tool is named module-init-tools,
you can search about it with Google.

  At last, one more advice. If you have your filesystem support
built into kernel you can change your grub entry:

	title Linux-testing
	    kernel (hd0,1)/boot/vmlinuz-2.6.0-test9 root=/dev/hda2 showopts
	    initrd (hd0,1)/boot/initrd-2.6.0-test9

by this:

	title Linux-testing
	    kernel (hd0,1)/boot/vmlinuz-2.6.0-test9 root=/dev/hda2 showopts
	    boot

  This is in this way cos if you have the filesystem support
built in you don't need the initrd image. This is valid for 2.6
and 2.4 too.

  Hope this help. Don't dude ask all you want about your new
kernel.

  Regards.

  Jose.


http://linuxespana.scripterz.org

FreeBSD RELEASE 4.9.
Mandrake Linux 9.2 Kernel 2.6.0-test9 XFS.
Registered BSD User 51101.
Registered Linux User #213309.
Memories..... You are talking about memories. 
Rick Deckard. Blade Runner.


MaderaOnline.com - Madera's Home Page
___________________________________________________________
Get your own Web-based E-mail Service at http://www.zzn.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
