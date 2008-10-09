From: "Phil C" <hpypenguin.lists@gmail.com>
Subject: Kernel Patch and Config Issues
Date: Wed, 8 Oct 2008 21:13:46 -0700
Message-ID: <703270f30810082113s50ed80ccg6d886519d907f4f7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=cvOVUgWIDHmp42cow4js1/3AF66cFFsQ4djodAo9sjI=;
        b=dNc9S+5PM7GkMbGnn+iGVG6hP5JSh2Cef9MeFcXrI6pwhuxleNvYKCdfcDagc3LA7B
         vzLhBiyR4NqdpKH4C4jAIrko6KLSH9KtlbR/A4WYwHpwPGbjLTZB5GaKrTE9qjZ3DQVl
         Wy0D4fr2pAkVGGrZLB8PjM9ixkF8dBT1jVpgA=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am having two issues with compiling my kernel. I am using 2.6.26 source.

The first issue has to do with config and mkinitramfs. I have been
messing with kernel to see what happens in different situations and I
can't figure out why my expectation is different from the outcome
here. The steps I'm using are;

make mrproper

make allmodconfig

make

make modules_install

make install

mkinitramfs-kpkg -o /boot/img-2.6.26 2.6.26

I anticipate the outcome to be that I will have all drivers loaded as
modules yet my wireless network card won't work. I was under the
impression that mkinitramfs without options would load all modules at
boot, is this not the case? If not what steps would I need to take to
ensure that all modules are loaded at boot.

The other issue is with patching. I am attempting to patch the source
with the -5 patch using the command;

patch -p1 < patch-2.6.26-5.tar.gz

from the top level of the source tree. I get an error saying that the
entire patch is garbage. I checked the man page for patch already and
didn't see anything to suggest that I was doing the wrong thing here
so I'm pretty confused on this one.

Thanks in advance for the help

 - Phil C

-- 
opensrfreedom.blogspot.com
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
