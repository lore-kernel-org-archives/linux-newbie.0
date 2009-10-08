From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: Classic confusion: initrd-initramfs
Date: Thu, 8 Oct 2009 08:49:27 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0D2669BF@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org


Hi,

OK, I know enough has already been discussed on this topic and I think
that I'm just not able to put pieces in place. So I understand the basic
difference between an initrd (having a filesystem on a block /loopback
device and mounting it on a ramdisk) and initramfs (Having a compressed
cpio archieve included in the kernel image and weaving a file system
directly on RAM to see the contents of this cpio). I assume this
discussion is not limited to x86 architectures and initrd / initram fs
can be used on all the other architectures also?

1) Firstly, are initramfs and initrd mutually exclusive techniques to
achieve the same goal (providing initial drivers)? Does enabling one
disable the other OR they complement / help each other? Conceptually,
the former should be true, but browsing through the kernel config, the
latter seems true.

2) The initrd image CANNOT be combined with kernel image to produce a
single image, and the initramfs image cannot be seperated out from
kernel image and later provided at boot time as a separate image, right?

3) I understand in case of initramfs, kernel does everything including
loading of initramfs image (since it is included in kernel image only).
But in case of initrd image, who loads the initrd image into memory? The
bootloader I assume ... Because grub and lilo have a "initrd" line in
their config file. But then how is it communicated to the kernel where
in RAM  (at which address) is the initrd loaded?=20

4) How about non-X86 architectures that don't have lilo / grub? Who
loads initrd image into memory in that case and how is it communicated
to kernel?=20

5) What does the "initrd=3D" kernel command line parameter mean, and is =
it
applicable only for x86?

6) Is there a unified way of loading initrd on all architectures? Most
of the online text suggestes to make entry into lilo or grub, which are
not available else where...

Thanks & Best Regards,

Rajat Jain


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

