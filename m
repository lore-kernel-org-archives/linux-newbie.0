From: Lee Strobel <leestrobel@disroot.org>
Subject: Missing version line in System.map file?
Date: Sat, 25 Nov 2017 10:51:35 -0500
Message-ID: <1511625095.4513.13.camel@lee-LibreBook>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
        t=1511625103; bh=rLbnJqtdPrwAmgP1txitT6+wDvTVDVHzm6KN73tN6MI=;
        h=Subject:From:To:Date;
        b=ACwYHbszdAy34fGJIiRDBqDOX5DtcRZj8uEN7/Vk1JTmSsfz/j4InJOejQhdei8NM
         SB6/DKCinESvjfQnKZHtDnmTFPcHAlu/BeJFOfbMsGdoNP0rCv23zOHYqjUYBERyQS
         KYEoT/8WgQDQQLVblMH4fJ6WUDxNN/fkp3hZqYjA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
        t=1511625101; bh=rLbnJqtdPrwAmgP1txitT6+wDvTVDVHzm6KN73tN6MI=;
        h=Subject:From:To:Date;
        b=f7x6A+ngSMHjRQqpvzYtSNeX10q6+l7ZzG6PkJHiDsYzqy2utSk6rTSQCRcPvHUqV
         XfpMhAlh/ebcqKu+FZEY4pv8mzSdGalvN2kViuYi7Lxm2rdADoZBP0kFnL6WrQhp5A
         0X/Kt3BUNOYM2nzGi2FhcYAsbiD+GYzhbpDploqg=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I have a question about the Linux kernel, which I have been trying to
find an answer to through various forums for some time now, but without
success. I'm wondering if anyone on this mailing list might be able to
help?

I've been trying to build a Linux From Scratch (LFS) system, using
SysVinit and sysklogd. However, when I tried to boot up, klogd wasn't
accepting the System.map file, printing log messages such as:

   Oct 9 17:24:17 <lee_lfs> kernel: klogd 1.5.1, log source = /proc/kmsg
started.
   Oct 9 17:24:17 <lee_lfs> kernel: Inspecting /boot/System.map
   Oct 9 17:24:17 <lee_lfs> kernel: Cannot find map file.

So, I dug into the source code for klogd a little bit, and it appears
the reason the map file wasn't being accepted was because it didn't
contain a 'version' line, which klogd was looking for, in the form:

   [address] [type] Version_XXXXX

(where XXXXX is the kernel version # in base 256).

So, I've been asking around on various forums. It seems that none of the
map files that are being produced by more recent kernels include this
line and no-one that I've spoken to on the Linux forums seems to know
why this is.

Was a change made to the Linux kernel, to remove this 'version' line
from the map file? If so, how are the newer init systems verifying that
the map file is the same version as the running kernel? Perhaps klogd
needs to be updated?

By the way, I tried adding a 'dummy' version line to my map file and
klogd accepted it fine.

Hopefully someone out there can assist.

Best regards,

Lee Strobel
Engineer/Tinkerer/Free Software Supporter ..

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
