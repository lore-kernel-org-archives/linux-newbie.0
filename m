From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Bash Scripts
Date: Thu, 10 Oct 2002 16:34:48 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0034_01C2707A.F3AF7B00"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_0034_01C2707A.F3AF7B00
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

I have a script that mounts an samba shared drive, copies the contents
if newer to the Linux box, and then umounts the share.

Sample script
---
mount -t smbfs -o username=x,password=y //machine/share /mnt/network
cp --recursive --preserve --verbose --parents --update /mnt/network/*
/backup/machine \
	> log1.txt 2>log2.txt
umount /mnt/network
------------
End script

A couple of easy questions I can't seem to find answers to.
1. How can I pass in parameters from the command line to use as
variables. 
	myscript value1 value2
2. How can I have it dump a message to a log file if something fails and
then cease running the script. 
	if mount fail append to end of log1.txt "mounting failed",
terminate script.

I was under the impression that you could have a script terminate if a
command failed by having && separate the commands but this just
generates an error.

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_0034_01C2707A.F3AF7B00
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

------=_NextPart_000_0034_01C2707A.F3AF7B00--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
