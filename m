From: James Miller <jamtat@mailsnare.net>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Mon, 14 Jun 2004 13:06:39 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406141303390.1108@debian-emach>
References: <5.1.0.14.1.20040612204315.02004830@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach> <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine> <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine> <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach> <5.1.0.14.1.20040612204315.02004830@celine>
 <5.1.0.14.1.20040614084449.01ff4bf0@celine> <Pine.LNX.4.58.0406141228040.1108@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406141228040.1108@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 14 Jun 2004, James Miller wrote:

> Thanks for the input, Ray.  Unfortunately, I don't have any very clear
> recollection of specifics of that error message, other than it telling me
> there was some sort of problem setting up modules since modules were in
> use by the current kernel, and giving a very stern warning about the need
> to reboot to finish this process once the dist-upgrade was finished.

Ok.  By running dpkg-reconfigure -all (my usual brute-force approach), I
was able to recreate the message.  Here it is:

 You are attempting to install a kernel version that is the same as
 the version you are currently running (version 2.6.6-1-686). The modules
 list is quite likely to have been changed, and the modules dependency
 file /lib/modules/2.6.6-1-686/modules.dep needs to be re-built. It can
 not be built correctly right now, since the module list for the
 running kernel are likely to be different from the kernel installed.
 I am creating a new modules.dep file, but that may not be
 correct. It shall be regenerated correctly at next reboot.

 I repeat: you have to reboot in order for the modules file to be
 created correctly. Until you reboot, it may be impossible to load
 some modules. Reboot as soon as this install is finished (Do not
 reboot right now, since you may not be able to boot back up until
 installation is over, but boot immediately after). I can not stress
 that too much. You need to reboot soon.

Please Hit return to continue.

Not touching initrd symlinks since we are being reinstalled (2.6.6-1)
Not updating image symbolic links since we are being updated (2.6.6-1)
A new kernel image has been installed, and usually that means
that some action has to be taken to make sure that the new
kernel image is used next time the machine boots. Usually,
this entails running a ``bootloader'' like SILO, loadlin, LILO,
ELILO, QUIK, VMELILO, ZIPL, or booting from a floppy.   (Some
boot loader, like grub, for example, do not need to be run on
each new image install, so please ignore this if you are using
such a boot loader).

A new kernel image has been installed at /boot/vmlinuz-2.6.6-1-686
 (Size: 1103kB)

Does that help figuring out where the problem could be?  Btw, I have yet
to reboot the system after running dpkg-reconfigure --all to see if I've
resolved anything by that process.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
