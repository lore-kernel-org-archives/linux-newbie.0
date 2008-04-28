From: Jiri Olsa <olsajiri@gmail.com>
Subject: how to get inode of the file in the kernel
Date: Mon, 28 Apr 2008 15:10:58 +0200
Message-ID: <4815CCE2.3060506@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        bh=Zcr3/FGtKpdkr7kDRGHodWn0WOD7gf86CqOQ7NeJUGQ=;
        b=Fj5NxGhc3ZlJbREgEZVh+w5ANFMdwzLLiYAmreCgHwS/JmGkiYpwxWZeAGeKNJi6Ly12JCVtOkKAssWqTUdo1Xyr40kxDYXDdE88wD1ImZlHUqQqPgjPz3ciy0CqJshtTvNndkWxEO2/tYZ8pjdxqkQKZJpfpv/pAxA8ckulgw4=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

is there a way for a kernel module to get an inode of the file
specified by the full path?


thanks,
Jiri Olsa
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
