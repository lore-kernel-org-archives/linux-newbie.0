From: Prasad Joshi <prasadjoshi124@gmail.com>
Subject: Re: Mounting block device fails.
Date: Fri, 9 Oct 2009 11:16:24 +0530
Message-ID: <fe291c8c0910082246l7aaff1f4od3000617c478a00f@mail.gmail.com>
References: <fe291c8c0910080003m470520adsd4a7e37bf676458b@mail.gmail.com>
	 <fe291c8c0910080008g22da5bb0n3f106d644da0fbe8@mail.gmail.com>
	 <ea11fea30910080611m34c0442i2e1ba2a84608487d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=A2rmO7P7Kcn0lGyB5yNJJwXe7nDfI1XL9/Gp48Q+gnY=;
        b=Sscvd2GBQ5M/MMHZ4cewd8/6zWNHqKuDJc/qePOFPNOYj9eSo93U3+/Kt7y64yjPO0
         FTOsFwv9KpSZmxY+GKLdTIIocA9L2yiSJdhmupFxQXWLpbTcM6c01+NlwAxO0a7TWyVn
         iqr5UWzrO5Sf/YvH6sQf5YZ6GphmbP9DFtQ4c=
In-Reply-To: <ea11fea30910080611m34c0442i2e1ba2a84608487d@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Manish Katiyar <mkatiyar@gmail.com>
Cc: linux-newbie@vger.kernel.org, Kernelnewbies <kernelnewbies@nl.linux.org>

Thanks Manish,

The issue was with filesystem creation. It was not getting created
properly. I used dumpe2fs command to verify the file system. Actually
Superblock was written correctly but, few other fields like free block
and free inode list etc were incorrect

It seems to be working properly now
# dumpe2fs /dev/ftl
=2E..
=2E..
Group 0: (Blocks 0-65527)
  Primary superblock at 0, Group descriptors at 1-1
  Reserved GDT blocks at 2-8
  Block bitmap at 9 (+9), Inode bitmap at 10 (+10)
  Inode table at 11-1034 (+11)
  64489 free blocks, 32757 free inodes, 2 directories
  Free blocks: 1039-65527
  Free inodes: 12-32768
Group 1: (Blocks 65528-131055)
  Backup superblock at 65528, Group descriptors at 65529-65529
  Reserved GDT blocks at 65530-65536
  Block bitmap at 65537 (+9), Inode bitmap at 65538 (+10)
  Inode table at 65539-66562 (+11)
  64493 free blocks, 32768 free inodes, 0 directories
  Free blocks: 66563-131055
  Free inodes: 32769-65536

# mount
=2E..
=2E..
/dev/ftl on /mntpt type ext2 (rw,relatime,errors=3Dcontinue)


The other problem which I am facing is with the blocksize.

mkfs allows ext2 file system be created with blocksize=3D8192,
overriding the default 4096. But, when I try to mount the file system
it fails

# mkfs -t ext2 -b 8192 /dev/ftl
Warning: blocksize 8192 not usable on most systems.
mke2fs 1.41.4 (27-Jan-2009)
mkfs.ext2: 8192-byte blocks too big for system (max 4096)
Proceed anyway? (y,n) y
Warning: 8192-byte blocks too big for system (max 4096), forced to cont=
inue
warning: 16 blocks unused.

=46ilesystem label=3D
OS type: Linux
Block size=3D8192 (log=3D3)
=46ragment size=3D8192 (log=3D3)
65536 inodes, 131056 blocks
=2E...
=2E...

# mount -t ext2 /dev/ftl /mntpt
[54658.092031] EXT2-fs: blocksize too small for device.
mount: mounting /dev/ftl on /mntpt failed: Invalid argument

I tried specifying blocksize with the mount command, but it also fails

# mount -t ext2 /dev/ftl /mntpt -o blocksize=3D8192
mount: mounting /dev/ftl on /mntpt failed: Invalid argument

The above command fails in parsing the options passed to the command

The section "Mount options for ext2" of mount manpage does not mention
blocksize option.

Is there anyway I can create ext2 filesystem with blocksize 8192?

Thanks and Regards,
Prasad

On Thu, Oct 8, 2009 at 6:41 PM, Manish Katiyar <mkatiyar@gmail.com> wro=
te:
> On Thu, Oct 8, 2009 at 12:38 PM, Prasad Joshi <prasadjoshi124@gmail.c=
om> wrote:
>> Hi,
>>
>> I am working on translation layer for flash. For the purpose testing=
 I am
>> using a disk file to simulate the flash behavior. So every read and =
write on
>> the block device finally goes to a disk file, something similar to l=
oop
>> device, but in addition maintaining the flash property.
>>
>> I am able to create the file system on the device (/dev/ftl) but whe=
n I try
>> to mount the device it fails with error "Invalid Argument".
>
> From the code I can see -EINVAL can be returned at lot of places. You
> need to see dmesg to see the message which can help tracing.
>
>>
>> I thought it is failing to read the super block of the file systems,=
 but it
>> seems like it did not fail in superblock read
>>
>> # strace -o out mount -t ext2 /dev/ftl /mntpt/
>> [=A0 175.192033] Opening the device.
>> [=A0 175.193599] IftlIoRead: offset=3D0x400 Length=3D0x400
>> [=A0 175.193875] OffsetWithinPage: 400
>> [=A0 175.195104] Read pos=3D1002535424, length=3D8192
>> [=A0 175.195474] 0000 0001 0000 0004 3333 0000 eea5 0003 fff5 0000 0=
000 0000
>> 0002 0000 0002 0000 8000 0000 8000 0000 2000 0000 0000 0000 8a9e 4ac=
d 0000
>> 0020 ef53 0001 0001 0000 8a9e 4acd 4e00 00ed 0000 0000 0001 0000 000=
0 0000
>> 000b 0000 0100 0000 0038 0000 0002 0000 0003 0000 a037 8e0c d6b3 de1=
1 abb8
>> 0635 bff9 2b36 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 003f 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 a037 8f0c d6b3 de11 abb8 0635 bff9 2b36 0001 0000 0000 0000 000=
0 0000
>> 8a9e 4acd 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 000=
0 0000
>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 001c 001=
c 0001
>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 [=A0 175.215929] Closin=
g the
>> device.
>> mount: mounting /dev/ftl on /mntpt/ failed: Invalid argument
>>
>> I tried printing the data in hex format just to make sure proper ext=
2 magic
>> code in present in the superblock read from the flash device.=A0 "ef=
53" is the
>> magic code of ext2 superblock, ftl device is correctly reading the m=
agic
>> code
>>
>> # cat out
>> execve("/bin/mount", ["mount", "-t", "ext2", "/dev/ftl", "/mntpt/"],=
 [/* 4
>> vars */]) =3D 0
>> uname({sys=3D"Linux", node=3D"(none)", ...}) =3D 0
>> brk(0)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x72f000
>> brk(0x72ff40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D 0x72ff40
>> arch_prctl(ARCH_SET_FS, 0x72f880)=A0=A0=A0=A0=A0=A0 =3D 0
>> open("/dev/urandom", O_RDONLY)=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D -1 ENO=
ENT (No such file or
>> directory)
>> brk(0x750f40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D 0x750f40
>> brk(0x751000)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D 0x751000
>> getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>> getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>> geteuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>> stat("/dev/ftl", {st_mode=3DS_IFBLK|0644, st_rdev=3Dmakedev(254, 0),=
 ...}) =3D 0
>> mount("/dev/ftl", "/mntpt/", "ext2", MS_SILENT, "") =3D -1 EINVAL (I=
nvalid
>> argument)
>> vfork()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 869
>> --- SIGCHLD (Child exited) @ 0 (0) ---
>> write(2, "mount: mounting /dev/ftl on /mntp"..., 61) =3D 61
>> exit_group(-1)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D ?
>>
>> What could be the reason of failure of mount?
>>
>> Thanks and Regards,
>> Prasad
>>
>>
>
>
>
> --
> Thanks -
> Manish
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [$\*.^ -- I miss being one of them
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
