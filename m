From: azie <azie@kawan.net>
Subject: Setting up CD-RW
Date: Thu, 10 Oct 2002 09:41:51 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210100941.51738.azie@kawan.net>
Reply-To: azie@kawan.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hello,

I just bought a CD-RW and I can't seems to make it work with Linux. I'm=
=20
running RH7.3 dualboot with XP Home Edition. As for the CD-RW, it's a T=
DK=20
Cyclone with E-IDE/ATAPI Interface connected to secondary master (hdc).

Everytime I tried the command "cdrecord -scanbus", the result would be =
:

[root@localhost root]# cdrecord -scanbus
Cdrecord 1.10 (i686-pc-linux-gnu) Copyright (C) 1995-2001 J=F6rg Schill=
ing
cdrecord: No such file or directory. Cannot open SCSI driver.
cdrecord: For possible targets try 'cdrecord -scanbus'. Make sure you a=
re=20
root.

Could anyone help me?

Thanks.

- azie -
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
