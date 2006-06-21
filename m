From: chuck gelm <chuck@gelm.net>
Subject: Re: Lost HD Partition
Date: Wed, 21 Jun 2006 09:56:25 -0400
Message-ID: <44995009.2080507@gelm.net>
References: <44995A5E.2030004@skyinet.net> <4498D5F9.6040803@comarre.com> <44999CC5.9050807@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44999CC5.9050807@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi, Peter:

 It looks like your partition is corrupted.
Although I would like to see if either of these two items would work.

#mount -t auto /dev/hda6 /usr/local

 -or-

comment out the line of fstab that specifies /dev/hda6 and
#mount /dev/hda6 /usr/local


 However, if you are sure that the partition was formated as
ext2 or ext3 before, this will not work as (I think) both filesystems
depend on the superblock.

:-|  Chuck
man mount
<snip>
-t vfstype

 The argument following the -t is used to indicate the file  system  type.
 The file system types which are currently supported include:
  adfs, affs, autofs, coda, coherent, cramfs, devpts, efs,  ext,  ext2, 
ext3,
  hfs, hpfs, iso9660, jfs, minix, msdos, ncpfs, nfs, ntfs, proc, qnx4, rmfs,
  reiserfs, romfs, smbfs, sysv, tmpfs, udf, ufs, umsdos, usbfs, vfat, xenix,
  xfs, xiafs.

 Note that coherent, sysv and xenix are equivalent and that xenix and  
coherent
 will be removed at some point in the future -- use sysv instead. Since 
kernel
 version 2.1.21 the types ext and xiafs do not exist anymore. Earlier, usbfs
 was known as usbdevfs.

 For most types all the mount program has to do is issue a simple mount(2)
 system call, and no detailed knowledge of the filesystem type is required.
 For a few types however (like nfs, smbfs, ncpfs)  ad  hoc  code is 
necessary.
 The nfs ad hoc code is built in, but smbfs and ncpfs have a separate mount
 program. In  order to  make  it possible to treat all types in a 
uniform way,
 mount will execute the program /sbin/mount.TYPE (if that exists) when 
called
 with type TYPE.  Since various versions of the smbmount program have 
different
 calling conventions, /sbin/mount.smbfs may have to be a shell script 
that sets
 up the desired call.
<snip>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
