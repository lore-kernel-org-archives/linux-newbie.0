From: "Travis" <travis@wsor.net>
Subject: Multi-kernel in grub
Date: Tue, 22 Jul 2003 10:15:09 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Reply-To: <travis@wsor.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am a recent convert to RH9 and have been trying to compile a kernel to
allow dual head video support for my matrox g400-tv card.  Here is the
main tutorial I was following:
http://www.intel.com/support/platform/pentium4/linux.htm

I used xconfig , and the compilation process seemed to go fine (no
errors were display when I got the command prompt back) from running the
following.

make dep
make clean
make bzImage
make modules

My problem came at "Next, you have to copy the appropriate files so that
linux can boot from the new kernel."  I copied the vmlinuz image created
by the compilation to /boot/vmlinuz-matrox.  I then edited grub's conf
file by copy-and-pasting my current RH boot section and simply changing
the label and pointing the vmlinuz-matrox as the kernel to load.

When booting I got an error very quickly.  I have been searching for a
grub multi-boot kernel tutorial and have read most of the applicable
grub user-guide, but to no avail.  If someone could point out a good
tutorial or give a few things to try, I would appreciate it.  Thanks in
advance.

-- Travis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
