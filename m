From: Prasad Joshi <prasadjoshi124@gmail.com>
Subject: Mounting block device fails.
Date: Thu, 8 Oct 2009 12:40:32 +0530
Message-ID: <fe291c8c0910080010n2708c986g99b4f82b74c3d410@mail.gmail.com>
References: <fe291c8c0910080003m470520adsd4a7e37bf676458b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=pi4nBFVPzeQpOxIQp4rlDbKImdgQggsZsHFY6tI8dGQ=;
        b=qY6wFkGxr5idqDjANB1dRiRsxWz0URlnZFnTolpVM4juoyDMAXZbWMtjOPs9I8rzPH
         /AmEk4wyi2cHEG8F15GTn5fVfkIrLZyXP3hN8YS/B6PKXmDs7LP3kZmeZy0sYQuS5Zcx
         V2vPh2VCMpQluLfgZINdiXWfVEQ+w+v3A4FYs=
In-Reply-To: <fe291c8c0910080003m470520adsd4a7e37bf676458b@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi,

I am working on translation layer for flash. For the purpose testing I
am using a disk file to simulate the flash behavior. So every read and
write on the block device finally goes to a disk file, something
similar to loop device, but in addition maintaining the flash
property.

I am able to create the file system on the device (/dev/ftl) but when
I try to mount the device it fails with error "Invalid Argument".

I thought it is failing to read the super block of the file systems,
but it seems like it did not fail in superblock read

# strace -o out mount -t ext2 /dev/ftl /mntpt/
[=A0 175.192033] Opening the device.
[=A0 175.193599] IftlIoRead: offset=3D0x400 Length=3D0x400
[=A0 175.193875] OffsetWithinPage: 400
[=A0 175.195104] Read pos=3D1002535424, length=3D8192
[=A0 175.195474] 0000 0001 0000 0004 3333 0000 eea5 0003 fff5 0000 0000
0000 0002 0000 0002 0000 8000 0000 8000 0000 2000 0000 0000 0000 8a9e
4acd 0000 0020 ef53 0001 0001 0000 8a9e 4acd 4e00 00ed 0000 0000 0001
0000 0000 0000 000b 0000 0100 0000 0038 0000 0002 0000 0003 0000 a037
8e0c d6b3 de11 abb8 0635 bff9 2b36 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 003f 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 a037 8f0c d6b3 de11 abb8
0635 bff9 2b36 0001 0000 0000 0000 0000 0000 8a9e 4acd 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 001c 001c 0001 0000 0000
0000 0000 0000 0000 0000 0000 0000 [=A0 175.215929] Closing the device.
mount: mounting /dev/ftl on /mntpt/ failed: Invalid argument

I tried printing the data in hex format just to make sure proper ext2
magic code in present in the superblock read from the flash device.
"ef53" is the magic code of ext2 superblock, ftl device is correctly
reading the magic code

# cat out
execve("/bin/mount", ["mount", "-t", "ext2", "/dev/ftl", "/mntpt/"],
[/* 4 vars */]) =3D 0
uname({sys=3D"Linux", node=3D"(none)", ...}) =3D 0
brk(0)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x72f000
brk(0x72ff40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D 0x72ff40
arch_prctl(ARCH_SET_FS, 0x72f880)=A0=A0=A0=A0=A0=A0 =3D 0
open("/dev/urandom", O_RDONLY)=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D -1 ENOENT=
 (No such file or directory)
brk(0x750f40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D 0x750f40
brk(0x751000)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D 0x751000
getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
geteuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
stat("/dev/ftl", {st_mode=3DS_IFBLK|0644, st_rdev=3Dmakedev(254, 0), ..=
=2E}) =3D 0
mount("/dev/ftl", "/mntpt/", "ext2", MS_SILENT, "") =3D -1 EINVAL
(Invalid argument)
vfork()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 869
--- SIGCHLD (Child exited) @ 0 (0) ---
write(2, "mount: mounting /dev/ftl on /mntp"..., 61) =3D 61
exit_group(-1)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D ?

What could be the reason of failure of mount?

Thanks and Regards,
Prasad
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
