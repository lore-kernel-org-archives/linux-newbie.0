From: james niland <bareego@yahoo.com>
Subject: RE: Can't write VFAT filesystem
Date: Tue, 4 Nov 2003 16:54:50 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031105005450.31194.qmail@web11409.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Yawar wrote :

I've set up my /etc/fstab file as usual, so that I can 
access my Windows C: and D: drives, as shown in the attachment.

I can mount/unmount both these drives and read them.  I can 
also write to the /mnt/c filesystem.  But for some reason I 
can't write to the /mnt/d filesystem.  Specifically:

$ whoami
yawar
$ pwd
/mnt/d/My Documents
$ touch file
touch: creating `file': Permission denied
$

Can some kind soul tell me what I'm doing wrong?

Thanks,
Yawar Amin
******************

When you mount a fat partition under linux you mount a file
system that doesn't have inbuilt support for the permissions for
each file that eg ext2 supports.
Because of  that you can give extra options when mounting fat
partitions with extra options.
Those options are shown in the man mount pages under the vfat
options section.

The relevant bit is this :

  uid=value and gid=value
              Set the owner and group of all files. (Default:
the
              uid and gid of the current process.)

       umask=value
              Set the umask (the bitmask of the permissions 
that
              are  not  present). The default is the umask of
the
              current process.  The value is given in octal.

So when you mount a fat file system ALL files will have the same
owner,group and permissions !
If you don't want to use the permissions carried over from your
current user/process you'd use umask=value, eg umask=777 would
give everyone full read/write access.

So a changed entry in your fstab might look like this
/dev/hda5		/mnt/d			vfat	noauto,users,umask=777 0 0
if you want everyone to be able to mount it and have full access
to it.

cheers
James

__________________________________
Do you Yahoo!?
Protect your identity with Yahoo! Mail AddressGuard
http://antispam.yahoo.com/whatsnewfree
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
