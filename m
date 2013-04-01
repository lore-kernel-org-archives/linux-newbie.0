From: Prashant Batra <prbatra.lists@gmail.com>
Subject: attach multiple programs to tun/tap interface
Date: Mon, 01 Apr 2013 22:42:21 +0530
Message-ID: <5159BFF5.90209@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=Rud9IZWf3akF0BEeAy+K/iHPeLLdh+Zv9m62V51mDVM=;
        b=tKmgaSjW71iXgiTHkzsc0+fc9aImt4jwobmmiLfbeZjdHBDgoTIWE4bt0YWNDGUPfD
         hwD8uOCFJZiv4DHzGy2CSY8kHur8mEm1cdctJVipa9a5pRqJFCcZd7ZdOn6FJhY/YYbR
         clOc3/t7J6aDS6oC0hg63qx1dvT+GeByizeJFjg1gQ6lOHUyieHoyyi8Tv5vye6oGDcv
         //i84EpwloqQlGGsFOmVXBoM2TENMm7E0FbwYaITJfozSp+PYhD8ilpeovwGhUFTJbeQ
         kYgKNozbzDMnU7TNRay2LI/M3UWPxIrsPdLJHabbSLpVVGz0s0Qd58yQjFdCP0+s9Zil
         4R9A==
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
To: netdev@vger.kernel.org, linux-newbie@vger.kernel.org

Hi,

I have a basic query on tun/tap driver design. Is it possible to attach=
=20
multiple user-space programs to the same tun/tap interface. I have not=20
set the interface as EXCLUSIVE,
but still on trying to do ioctl with cmd as =93TUNSETIFF=94 from the se=
cond=20
user space program, I get =93Device busy=94.

Seeing through the driver code, it looks like it does not allow multipl=
e=20
user-programs to attach to the same interface, but is this valid, and=20
please let me know why this requirement was taken.

Will you please help me in understanding this?

Thanks,
Prashant
