From: James Miller <jamtat@mailsnare.net>
Subject: kernel patch failure: input please?
Date: Mon, 19 Jul 2004 23:51:20 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Using sort of a scatter-gun (maybe scatter-brained?) approach to the
problem of booting a USB drive, I've managed to install a base Debian file
system to the USB drive.  Yes, the new beta Sarge installer gave me the
option of installing the system there.  Booting is, as has been alluded in
the earlier booting from USB exchange on this list, another matter.
Since the system is meant to use the 2.4.25-1-386 kernel, I've decided I
should try and compile that kernel with the root file system mounting
delay patch we've spoken about.  But, I've gotten stuck at the patching
phase.  I'm actually using directions for patching a 2.4.23 kernel that I
found on another USB booting site (
http://www.freewebs.com/tsj/bootingUSB_ldp_v0.1.htm ) that suggests
applying the patch to do_mounts.c .  When I try to apply the patch using
the directions found at that site, I get the following:

[11:39:55]root@mymachine kernel-source-2.4.25$ patch -p0
<kernel2-4-25patch
patching file init/do_mounts.c
patch: **** malformed patch at line 5: static void __init mount_root(void)

[11:40:13]root@mymachine kernel-source-2.4.25$

The file do_mounts.c appears to have been unmodified.  Can anyone clue me
in as to where the problem lies and how I might get the patch to apply
after all?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
