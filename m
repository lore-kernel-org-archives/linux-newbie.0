From: "mohammed shareef" <mdshareef@gmail.com>
Subject: x11 fails with floating point exception
Date: Sun, 8 Jun 2008 15:35:37 +0530
Message-ID: <a1d91fa0806080305m29bbce27v7bdc1cc04ec48e55@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=va5EisDpGaYf5aOLoefDH0ZnuGLKFJWUBPYlurreOJ0=;
        b=sbA5E2uXkuuHQj6Lg044ZLM5lLY0A+Kg+mXi2P22aH3ghEJq+7kb6kJ2EPBVSm80kN
         gFlK52XgnpaNZhF3zJHw3yy+djhhzKfyLxyTcavU6Yhg0ScU9B/t7rT/1jz6/8qz+L7I
         Bmc6UqhIcJsQ7j0vPIU655SSXPs7f0+krfgDE=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

i am new to linux.

when i compile x-windows, the xlib--X11 fails with a floating point exception.

../src/util/makekeys < /usr/include/X11/keysymdef.h > ks_tables_h
/bin/sh: line 1: 12048 Floating point exception../src/util/makekeys <
/usr/include/X11/keysymdef.h > ks_tables_h
make[1]: *** [ks_tables.h] Error 136
make[1]: Leaving directory `/root/omap5912/xwin_snapshot/xlibs/X11/src'
make: *** [install-recursive] Error 1

could someone please tell me how to solve this

thank you,
Shareef
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
