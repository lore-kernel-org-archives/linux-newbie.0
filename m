From: Manish Katiyar <mkatiyar@gmail.com>
Subject: Re: Mounting block device fails.
Date: Fri, 9 Oct 2009 11:34:16 +0530
Message-ID: <ea11fea30910082304q7270cff4je0a6e025f074cd08@mail.gmail.com>
References: <fe291c8c0910080003m470520adsd4a7e37bf676458b@mail.gmail.com> 
	<fe291c8c0910080008g22da5bb0n3f106d644da0fbe8@mail.gmail.com> 
	<ea11fea30910080611m34c0442i2e1ba2a84608487d@mail.gmail.com> 
	<fe291c8c0910082246l7aaff1f4od3000617c478a00f@mail.gmail.com> 
	<ea11fea30910082258g51dd67cp29196027e2579806@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=djLIAUysxWFIl2EYT2/Ien5CCW12UBrOGMLkofOlF5o=;
        b=Rn4V5TR2EBZSWpnqnRMuxzMC1dudgi2bkEaoiM7edmXgmPjImOHrBAEWQqvJyzJgm7
         XL8pqEe9VTaRwt7FgBW8fieH7KLavMYWqfZ6YcTjV1T4/aJmzi2tMms/8riQAIjg4FEa
         lHyXm12lDZNBdZJFawFx+XOBmZ/nRixPsohg0=
In-Reply-To: <ea11fea30910082258g51dd67cp29196027e2579806@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Prasad Joshi <prasadjoshi124@gmail.com>
Cc: linux-newbie@vger.kernel.org, Kernelnewbies <kernelnewbies@nl.linux.org>

On Fri, Oct 9, 2009 at 11:28 AM, Manish Katiyar <mkatiyar@gmail.com> wr=
ote:
> On Fri, Oct 9, 2009 at 11:16 AM, Prasad Joshi <prasadjoshi124@gmail.c=
om> wrote:
>> Thanks Manish,
>>
>> The issue was with filesystem creation. It was not getting created
>> properly. I used dumpe2fs command to verify the file system. Actuall=
y
>> Superblock was written correctly but, few other fields like free blo=
ck
>> and free inode list etc were incorrect
>>
>> It seems to be working properly now
>> # dumpe2fs /dev/ftl
>> ...
>> ...
>> Group 0: (Blocks 0-65527)
>> =A0Primary superblock at 0, Group descriptors at 1-1
>> =A0Reserved GDT blocks at 2-8
>> =A0Block bitmap at 9 (+9), Inode bitmap at 10 (+10)
>> =A0Inode table at 11-1034 (+11)
>> =A064489 free blocks, 32757 free inodes, 2 directories
>> =A0Free blocks: 1039-65527
>> =A0Free inodes: 12-32768
>> Group 1: (Blocks 65528-131055)
>> =A0Backup superblock at 65528, Group descriptors at 65529-65529
>> =A0Reserved GDT blocks at 65530-65536
>> =A0Block bitmap at 65537 (+9), Inode bitmap at 65538 (+10)
>> =A0Inode table at 65539-66562 (+11)
>> =A064493 free blocks, 32768 free inodes, 0 directories
>> =A0Free blocks: 66563-131055
>> =A0Free inodes: 32769-65536
>>
>> # mount
>> ...
>> ...
>> /dev/ftl on /mntpt type ext2 (rw,relatime,errors=3Dcontinue)
>>
>>
>> The other problem which I am facing is with the blocksize.
>>
>> mkfs allows ext2 file system be created with blocksize=3D8192,
>> overriding the default 4096. But, when I try to mount the file syste=
m
>> it fails
>>
>> # mkfs -t ext2 -b 8192 /dev/ftl
>> Warning: blocksize 8192 not usable on most systems.
>> mke2fs 1.41.4 (27-Jan-2009)
>> mkfs.ext2: 8192-byte blocks too big for system (max 4096)
>> Proceed anyway? (y,n) y
>> Warning: 8192-byte blocks too big for system (max 4096), forced to c=
ontinue
>> warning: 16 blocks unused.
>>
>> Filesystem label=3D
>> OS type: Linux
>> Block size=3D8192 (log=3D3)
>> Fragment size=3D8192 (log=3D3)
>> 65536 inodes, 131056 blocks
>> ....
>> ....
>>
>> # mount -t ext2 /dev/ftl /mntpt
>> [54658.092031] EXT2-fs: blocksize too small for device.
>> mount: mounting /dev/ftl on /mntpt failed: Invalid argument
>>
>> I tried specifying blocksize with the mount command, but it also fai=
ls

Have a look at these patches

http://lkml.indiana.edu/hypermail/linux/kernel/0708.3/1847.html


>>
>> # mount -t ext2 /dev/ftl /mntpt -o blocksize=3D8192
>> mount: mounting /dev/ftl on /mntpt failed: Invalid argument
>>
>> The above command fails in parsing the options passed to the command
>>
>> The section "Mount options for ext2" of mount manpage does not menti=
on
>> blocksize option.
>
> Yes, there is no "blocksize" option in ext2. For a list of valid
> options see "tokens" table in ext2/super.c
>
>
>>
>> Is there anyway I can create ext2 filesystem with blocksize 8192?
>
> No ... as far as I know.
>
> Man =A0page of mke2fs says :
>
> =A0 =A0 -b block-size
> =A0 =A0 =A0 =A0 =A0 =A0 =A0Specify =A0the =A0size of blocks in bytes.=
 =A0Valid block-size
> values are 1024, 2048 and 4096 bytes per =A0block.
>
> And the kernel code says :
>
> int sb_set_blocksize(struct super_block *sb, int size)
> {
> =A0 =A0 =A0 =A0if (set_blocksize(sb->s_bdev, size))
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return 0;
> =A0 =A0 =A0 =A0/* If we get here, we know size is power of two
> =A0 =A0 =A0 =A0 * and it's value is between 512 and PAGE_SIZE */
> =A0 =A0 =A0 =A0sb->s_blocksize =3D size;
> =A0 =A0 =A0 =A0sb->s_blocksize_bits =3D blksize_bits(size);
> =A0 =A0 =A0 =A0return sb->s_blocksize;
> }
>
> and the PAGE_SIZE is 4096.
>
> Reiserfs supports blocksizes of 8192 , but its man page says :-
>
> =A0 =A0 =A0-b | --block-size N
> =A0 =A0 =A0 =A0 =A0 =A0 =A0N =A0is block size in bytes. It may only b=
e set to a power
> of 2 within the 512-8192 interval. =A0Note
> =A0 =A0 =A0 =A0 =A0 =A0 =A0that current versions of the kernel ( 2.6.=
19 ) do NOT
> support any size other than 4096.
>
>
> But is there any specific reason you want to use block sizes of 8192 =
?
>
>>
>> Thanks and Regards,
>> Prasad
>>
>> On Thu, Oct 8, 2009 at 6:41 PM, Manish Katiyar <mkatiyar@gmail.com> =
wrote:
>>> On Thu, Oct 8, 2009 at 12:38 PM, Prasad Joshi <prasadjoshi124@gmail=
=2Ecom> wrote:
>>>> Hi,
>>>>
>>>> I am working on translation layer for flash. For the purpose testi=
ng I am
>>>> using a disk file to simulate the flash behavior. So every read an=
d write on
>>>> the block device finally goes to a disk file, something similar to=
 loop
>>>> device, but in addition maintaining the flash property.
>>>>
>>>> I am able to create the file system on the device (/dev/ftl) but w=
hen I try
>>>> to mount the device it fails with error "Invalid Argument".
>>>
>>> From the code I can see -EINVAL can be returned at lot of places. Y=
ou
>>> need to see dmesg to see the message which can help tracing.
>>>
>>>>
>>>> I thought it is failing to read the super block of the file system=
s, but it
>>>> seems like it did not fail in superblock read
>>>>
>>>> # strace -o out mount -t ext2 /dev/ftl /mntpt/
>>>> [=A0 175.192033] Opening the device.
>>>> [=A0 175.193599] IftlIoRead: offset=3D0x400 Length=3D0x400
>>>> [=A0 175.193875] OffsetWithinPage: 400
>>>> [=A0 175.195104] Read pos=3D1002535424, length=3D8192
>>>> [=A0 175.195474] 0000 0001 0000 0004 3333 0000 eea5 0003 fff5 0000=
 0000 0000
>>>> 0002 0000 0002 0000 8000 0000 8000 0000 2000 0000 0000 0000 8a9e 4=
acd 0000
>>>> 0020 ef53 0001 0001 0000 8a9e 4acd 4e00 00ed 0000 0000 0001 0000 0=
000 0000
>>>> 000b 0000 0100 0000 0038 0000 0002 0000 0003 0000 a037 8e0c d6b3 d=
e11 abb8
>>>> 0635 bff9 2b36 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 003f 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 a037 8f0c d6b3 de11 abb8 0635 bff9 2b36 0001 0000 0000 0000 0=
000 0000
>>>> 8a9e 4acd 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0=
000 0000
>>>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 001c 0=
01c 0001
>>>> 0000 0000 0000 0000 0000 0000 0000 0000 0000 [=A0 175.215929] Clos=
ing the
>>>> device.
>>>> mount: mounting /dev/ftl on /mntpt/ failed: Invalid argument
>>>>
>>>> I tried printing the data in hex format just to make sure proper e=
xt2 magic
>>>> code in present in the superblock read from the flash device.=A0 "=
ef53" is the
>>>> magic code of ext2 superblock, ftl device is correctly reading the=
 magic
>>>> code
>>>>
>>>> # cat out
>>>> execve("/bin/mount", ["mount", "-t", "ext2", "/dev/ftl", "/mntpt/"=
], [/* 4
>>>> vars */]) =3D 0
>>>> uname({sys=3D"Linux", node=3D"(none)", ...}) =3D 0
>>>> brk(0)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x72f000
>>>> brk(0x72ff40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x72ff40
>>>> arch_prctl(ARCH_SET_FS, 0x72f880)=A0=A0=A0=A0=A0=A0 =3D 0
>>>> open("/dev/urandom", O_RDONLY)=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D -1 E=
NOENT (No such file or
>>>> directory)
>>>> brk(0x750f40)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x750f40
>>>> brk(0x751000)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0x751000
>>>> getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>>>> getuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>>>> geteuid()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 0
>>>> stat("/dev/ftl", {st_mode=3DS_IFBLK|0644, st_rdev=3Dmakedev(254, 0=
), ...}) =3D 0
>>>> mount("/dev/ftl", "/mntpt/", "ext2", MS_SILENT, "") =3D -1 EINVAL =
(Invalid
>>>> argument)
>>>> vfork()=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D 869
>>>> --- SIGCHLD (Child exited) @ 0 (0) ---
>>>> write(2, "mount: mounting /dev/ftl on /mntp"..., 61) =3D 61
>>>> exit_group(-1)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 =3D ?
>>>>
>>>> What could be the reason of failure of mount?
>>>>
>>>> Thanks and Regards,
>>>> Prasad
>>>>
>>>>
>>>
>>>
>>>
>>> --
>>> Thanks -
>>> Manish
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> [$\*.^ -- I miss being one of them
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>
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



--=20
Thanks -
Manish
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[$\*.^ -- I miss being one of them
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
