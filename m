From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: ld: cannot open pad.o COMPILE Error --help
Date: Thu, 9 Jun 2005 16:54:38 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811543211@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Dear all,
=A0
I am written a new keypad driver `keypad_drv.c' .I wanted this to be in=
tegrated to the kernel rather than a module.
=A0
So, I edited the Config.in file the driver/char adding
=A0
        bool `EP93xx Keypad support' CONFIG_GPIO_KEYPAD
=A0
I edited the Makefile file in driver/char adding
=A0
        Obj-$(CONFIG_GPIO_KEYPAD) +=3Dkeypad_drv.o
=A0
Is there any thing that I am missing just because, I am not able to com=
pile and I am getting the following Error:
=A0
        arm-linux-ld: cannot open keypad_drv.o: No such file or directo=
ry
=A0
Can any one suggest me what is the problem?
=A0
=A0
Regards,
Mukund Jampala
=A0
=A0

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
