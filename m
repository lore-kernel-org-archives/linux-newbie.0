From: Alan Womack <arwbackup@worldnet.att.net>
Subject: how long before a timeout on a cdrom drive error?
Date: Wed, 4 Sep 2002 21:11:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU08qLpHkat0000289d@cpimssmtpu08.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I'm testing several CDrom's from an older server, I put a cd in the wrong drive and then tried to do:

mount -t iso9660 -r /dev/scd2 /mnt/scd4

I am hung there..

I meant to be scd1 and the scd4 is correct as two are currently disconnected from the power supply awaiting another y cable.

I have tried a kill -9 pid which didn't kill it.  The first time I got, eventually, an error on console1, but the second time I ran it with the proper scd# it hung again and no errors.

Killing the spawing shell has no effect on the mount that hangs out there in ps either.

Alan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
