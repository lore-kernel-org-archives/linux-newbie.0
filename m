From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Script
Date: Tue, 12 Nov 2002 12:09:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <06d801c28a6e$4ce35e00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_06D9_01C28A44.640D5600"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_06D9_01C28A44.640D5600
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

This code keeps trying to execute the variable instead of comparing it.



 for filestotar in `ls --almost-all --directory -x1 *`
        do
                if ["$filestotar" != "advserver"]; then
                        #!tar --directory /backup/tar.archive --create
--verbose --file test.tar /backup/$filestotar/*
                        counter=`expr $counter + 1`
                fi
        done 

Output. It tries to execute the variable $filestotar rather then compare
it to "advserver"
Any ideas???
------
advserver
./archive.sh: [advserver: command not found
agracon
./archive.sh: [agracon: command not found
agullifer
./archive.sh: [agullifer: command not found
bob
./archive.sh: [bob: command not found
dons
./archive.sh: [dons: command not found
gina
./archive.sh: [gina: command not found
Gmalleo
./archive.sh: [Gmalleo: command not found
kluiere
./archive.sh: [kluiere: command not found
logs
./archive.sh: [logs: command not found
lost+found
./archive.sh: [lost+found: command not found
paulette
./archive.sh: [paulette: command not found
pkraus-xp
./archive.sh: [pkraus-xp: command not found
rwollenburg
./archive.sh: [rwollenburg: command not found
scripts
./archive.sh: [scripts: command not found
tar.archive
./archive.sh: [tar.archive: command not found
vwalsh
./archive.sh: [vwalsh: command not found
0

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_06D9_01C28A44.640D5600
Content-Type: text/x-vcard;
	name="Paul Kraus (pkraus@pelsupply.com).vcf"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="Paul Kraus (pkraus@pelsupply.com).vcf"

BEGIN:VCARD
VERSION:2.1
N:Kraus;Paul
FN:Paul Kraus (pkraus@pelsupply.com)
ORG:PEL Supply Company
TITLE:Network Administrator
TEL;WORK;VOICE:(216) 267-5775
TEL;CELL;VOICE:(216) 410-5526
TEL;WORK;FAX:(216) 267-6176
ADR;WORK:;;4666 Manufacturing Road;Cleveland;Ohio;44135;United States of =
America
LABEL;WORK;ENCODING=3DQUOTED-PRINTABLE:4666 Manufacturing =
Road=3D0D=3D0ACleveland, Ohio 44135=3D0D=3D0AUnited States of Ame=3D
rica
ADR;HOME:;;;;;;United States
LABEL;HOME:United States
URL;WORK:http://www.pelsupply.com
EMAIL;PREF;INTERNET:pkraus@pelsupply.com
REV:20020416T182124Z
END:VCARD

------=_NextPart_000_06D9_01C28A44.640D5600--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
