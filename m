From: Amin <raihan@citech-bd.com>
Subject: Re: Multi-kernel in grub
Date: 22 Jul 2003 21:43:13 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3ptk24lf2.fsf@localhost.localdomain>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: travis@wsor.net
Cc: linux-newbie@vger.kernel.org

"Travis" <travis@wsor.net> writes:

> My problem came at "Next, you have to copy the appropriate files so that
> linux can boot from the new kernel."  I copied the vmlinuz image created
> by the compilation to /boot/vmlinuz-matrox.  I then edited grub's conf
> file by copy-and-pasting my current RH boot section and simply changing
> the label and pointing the vmlinuz-matrox as the kernel to load.
> 
> When booting I got an error very quickly.  I have been searching for a
> grub multi-boot kernel tutorial and have read most of the applicable
> grub user-guide, but to no avail.  If someone could point out a good
> tutorial or give a few things to try, I would appreciate it.  Thanks in
> advance.

The problem is Red Hat is not satisfied by the files you've
copied, etc. etc.  It's best to let Red Hat's built-in
scripts do this.  After the compilation, do a

# make install

This, according to the Official Red Hat Linux Customization
Guide (p. 257), will copy your new kernel to its proper
place, create an entry for it in the boot loader's menu, and
if necessary, make an initrd image for you (initrd is
necessary if you use ext3 or SCSI devices).

You can get the Guide at www.redhat.com/docs/manuals/linux.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
