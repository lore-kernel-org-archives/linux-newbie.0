From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Failed none for illegal user lfs from 127.0.0.1 port 4664 ssh2
Date: Mon, 24 Jun 2002 21:47:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020625044704.TEHS20423.mtiwmhc21.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I am working on adding a normal user on my Redhat 7.2 box.  I also have openldap installed.

I added a user using

useradd -s /bin/bash -m lfs &&
passwd lfs

then I also used the smbldap-useradd.pl script and added the same user.

In passwd I have this now:

lfs:x:1007:1007::/home/lfs:/bin/bash

and from

smbldap-usershow.pl

[root@Webby sbin]# ./smbldap-usershow.pl lfs
dn: uid=lfs,ou=Users,dc=FAMILY,dc=com
objectClass: top
objectClass: account
objectClass: posixAccount
cn: lfs
uid: lfs
uidNumber: 1008
gidNumber: 100
homeDirectory: /home/lfs
loginShell: /bin/bash
gecos: User
description: User
userPassword::  passwd hash here

How do I fix this?

Thanks
Alan


Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
