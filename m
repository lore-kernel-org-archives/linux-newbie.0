From: James Miller <jamtat@mailsnare.net>
Subject: Re: tune2fs question
Date: Thu, 2 Feb 2006 03:40:49 +0000 (UTC)
Message-ID: <Pine.NEB.4.62.0602020336470.22923@sdf.lonestar.org>
References: <W7298030047311301137773135@mail.mailsnare.net>
 <6.2.3.4.0.20060120170826.02138c30@127.0.0.1> <Pine.NEB.4.62.0602012209370.27105@sdf.lonestar.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.NEB.4.62.0602012209370.27105@sdf.lonestar.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Maybe it's bad form to answer your own questions, but on the chance it may 
help some other clueless newbie, I'll do so. It turns out the problem was 
a bogus /etc/fstab entry pointing to /dev/sdb1 as the root filesystem. 
Once I corrected that, changing it to /dev/sda1, e2fsck ran successfully, 
the HD got mounted rw like it was to supposed, and things began running 
according to plan.

James

On Wed, 1 Feb 2006, James Miller wrote:

> I've recently succeeded in installing a Linux to a USB flash drive and, more 
> importantly, booting to that drive using a floppy disk. A problem I have run 
> into with tunefs needs addressing now. On the machine where I installed 
> Linux, the drive was seen as /dev/sdb1. Apparently when I formatted the flash 
> drive (ext2), some information regaridng the location of the drive was 
> recorded for subsequent use. Now, when I reboot with the drive in a different 
> system where it is actually /dev/sda1, e2fsck gives some error messages and 
> wants to mount it read-only. I'm thinking that if I can change the system's 
> understanding of the device file name, this problem might go away. Having 
> looked over documentation (manpages) for e2fsck and tune2fs, I'm not finding 
> how I could do this. Can anyone offer pointers on how I might get these ext2 
> filesystem utilities to be aware that the target device is not /dev/sdb1 but 
> /dev/sda1?
>
> On recovering a deleted file from reiserfs--the subject of my last post: I 
> can confirm it is possible by rebuilding the directory tree. But I can also 
> affirm that it is something you should NOT do on a root filesystem (a 
> separate, data partition is the ideal target). It will corrupt important 
> system files/modules if you do it on a root filesystem, necessitating a 
> likely reinstall of the OS. On my system the kernel remains intact, but 
> important modules are hosed, and maybe other key files. Think over carefully 
> whether the file you want to recover is important enough to justify basically 
> hosing the rest of your system.
>
> James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
