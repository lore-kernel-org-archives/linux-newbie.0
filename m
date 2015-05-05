From: Rajat Jain <rajatxjain@gmail.com>
Subject: Removing a sysfs attrinute file while user space is accessing it
Date: Mon, 4 May 2015 17:50:05 -0700
Message-ID: <CAA93t1rYvYBqihpgmgSOErLGQbFFEztV5ALht30GJOFfh-pK8A@mail.gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to:content-type;
        bh=unHO47xmST7nyLYDWjqCSZNWRLF98ofUD6Xkka9NrRw=;
        b=h0LWCsr2c32X+m/FxK/y+6ETsWEguVP2LTueXi5vA4GhS2n8lU41kWmF/TVqW3awT/
         ImJ3PbejB7EXmoKon4YmdkyqOjJ1bzwelVGR434YnU1RdtwkIA8P+YHjkYEfAif8KOcz
         baO5LGYHOtm0PXDZYI2eeT9bew7Zhxp7Q1AN9Y25wWLH5NyQZqZ79T1MDCthJRYxrDWq
         74zlaS11d+zTYKqYHaPF+yedB7Dmi0cbo3hS7S1Yk0nzQByim1IVC8I2T73Y2zSl5C8W
         /3F3cAR9A4pyDyxla+mVEVxPd66zZhmTBXXk7Ueylf+Frfza1Vzl2vVjTtkcjuoIUDgK
         LANg==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

What happens if the kernel tries to remove a sysfs attribute that is
currently in use by the user space (i.e. a user spacecode is, say
executing the corresponding show()/store() method of that sysfs
attribute)?

I have some confidence that the call shall sleep untill the user space
process is done with the read / write to the sysfs attribute. Is my
understanding correct?

If so, can some one point me to the supporting code (e.g. which locks
/ mutexes etc) provide this behaviour?

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
