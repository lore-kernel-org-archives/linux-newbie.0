From: Thorsten Alge <mail@thorsten-alge.de>
Subject: About unusual_dev.h
Date: 11 Sep 2003 20:31:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1063275743.12827.23.camel@Nimue>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Kernel mailing list - linux newbie <linux-newbie@vger.kernel.org>

Hi,

   i have a new pontis USB MP3-Player with Compact Flasch Card
Reader/Writer. To use it with Linux (according to manufacturer
indication), i have to add the followint lines into
'/usr/src/linux/drivers/usb/storage/unusual_dev.h' :

        UNUSUAL_DEV ( 0x09bc, 0x0003, 0x0000, 0x9999,
                "PONTIS",
                "SP600",
                US_SC_SCSI, US_PR_BULK, NULL,
                US_FL_START_STOP),
=20
     I have tested it with Debian (2.4.18 kernel) without any error
messages and i can run the drive as /dev/sda1 without trouble. But now =
i
want to runt it on my laptop with Aurox Linux and a 2.4.20-9 Kernel. So
i have updated unusual_dev.h and started to compile the new kernel. But
i got this error message:

        In file included from usb.c:190: unusual_devs.h:641:
        `US_FL_START_STOP' undeclared here (not in a function)
        unusual_devs.h:641: initializer element is not constant
        unusual_devs.h:641: (near initialization for
        `us_unusual_dev_list[63].flags')
        unusual_devs.h:641: initializer element is not constant
        unusual_devs.h:641: (near initialization for
        `us_unusual_dev_list[63]')
        usb.c:194: initializer element is not constant
        usb.c:194: (near initialization for `us_unusual_dev_list[64]')
        usb.c:196: initializer element is not constant
        usb.c:196: (near initialization for `us_unusual_dev_list[65]')
        [...]
        usb.c:232: initializer element is not constant
        usb.c:232: (near initialization for `us_unusual_dev_list[81]')
        usb.c:235: initializer element is not constant
        usb.c:235: (near initialization for `us_unusual_dev_list[82]')
        make[4]: *** [usb.o] Fehler 1
        make[3]: *** [first_rule] Fehler 2
        make[2]: *** [_subdir_storage] Fehler 2
        make[1]: *** [_subdir_usb] Fehler 2
        make: *** [_dir_drivers] Fehler 2
       =20
I don not understand why it says=20

        In file included from usb.c:190: unusual_devs.h:641:
        `US_FL_START_STOP' undeclared here (not in a function)
       =20
because it runs fine on Debian.=20
I downloaded a 2.4.22 kernel from kernel.org and tryed to test it again=
,
but i got the same error msg.

Now i do not know what to do. Can anyone help me?

with regards,

   Thorsten



--=20
Mit Freundlichen Gr=C3=BC=C3=9Fen / with kind regards

Thorsten Alge

    Thorsten Alge
    Ringslebenstr. 2
    12353 Berlin

    +49 (0) 1 70 - 6 15 76 33
    +49 (0) 30 - 66 86 82 27

    http://www.thorsten-alge.de/
    mail@thorsten-alge.de

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
