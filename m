From: Prashant Batra <prashant0100@gmail.com>
Subject: Building kernel 3.0.0-rc4 - kernel hangs on booting.
Date: Sat, 8 Oct 2011 23:08:36 +0530
Message-ID: <CAG+XuE6wdzFzC8H=2FtH_mOHp3fUG5nOuQVz=1M89PEYP=ZRLA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=S85VSZGHRnxejRr576SMWbQwD/xA99FU9N8zEwMGmTA=;
        b=ppuszfB/VXVCvPP9CSvEUemxJ4vYLbM2cmm19wRlRi13FDOms7BCGtv21gzEHV5m4A
         et4CQpzQf/xSMtfJVERrTi2Q8MyvgSqRApmuHUji3wp0gWYKnmaxJjsaAVa1CHABOjGj
         ZlboZnUfO7reL0TyBy/U2G/SiBMdK+nX1CJDs=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I am trying to bring up 3.0-rc4 kernel on a DELL server i386.
I successfully built the kernel, installed it. Now on booting up,
kernel simply hangs at "Booting kernel" prompt.
I even tried by compiling the kernel with "all y" option for the
kernel, so that everything goes into the kernel binary.
But facing the same problem here also.

Can some point on how I can debug what the issue can be.

--Thanks
Prashant Batra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
