From: mailing@thorsten-alge.de
Subject: [Kein Betreff]
Date: Mon,  8 Sep 2003 14:10:51 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030908121051.D5C5510B797@basicbox1.server-home.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

    i've installed an Aurox Linux on my ThinkPad. I want to use my
USB - MP3-Player with it. Also 
i added the following lines into the
'/usr/src/linux/drivers/usb/storage/unusual_dev.h' :

UNUSUAL_DEV ( 0x09bc, 0x0003, 0x0000, 0x9999,
			"PONTIS",
			"SP600",
			US_SC_SCSI, US_PR_BULK, NULL,
			US_FL_START_STOP),
	
    I've tested it on a Debian-Linux with an 2.4.18 kernel and it
runs. But if i want to compile it on 
my ThinkPad whith a 2.4.22 kernel from kernel.org i got the following
error message:

In file included from usb.c:190:
	unusual_devs.h:641: `US_FL_START_STOP' undeclared here (not
in a function)
	unusual_devs.h:641: initializer element is not constant
	unusual_devs.h:641: (near initialization for
`us_unusual_dev_list[63].flags')
	unusual_devs.h:641: initializer element is not constant
	unusual_devs.h:641: (near initialization for
`us_unusual_dev_list[63]')
	usb.c:194: initializer element is not constant
	usb.c:194: (near initialization for
`us_unusual_dev_list[64]')
	usb.c:196: initializer element is not constant
	usb.c:196: (near initialization for
`us_unusual_dev_list[65]')
	...
	.
	.
	...
	usb.c:232: initializer element is not constant
	usb.c:232: (near initialization for
`us_unusual_dev_list[81]')
	usb.c:235: initializer element is not constant
	usb.c:235: (near initialization for
`us_unusual_dev_list[82]')
	make[4]: *** [usb.o] Fehler 1
	make[3]: *** [first_rule] Fehler 2
	make[2]: *** [_subdir_storage] Fehler 2
	make[1]: *** [_subdir_usb] Fehler 2
	make: *** [_dir_drivers] Fehler 2
	
    I can't understand this error message, so i can't repair it and i
can't use my MP3-Player. Any 
help or pointers on this issue would be nice for me.

Thanks 

    Thorsten


PS: Excuse for my bad english...
-- 
Thorsten Alge <mailing@thorsten-alge.de>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
