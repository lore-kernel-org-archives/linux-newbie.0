From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Umount / mnt
Date: Wed, 4 Dec 2002 12:09:09 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <019e01c29bb7$dc2ad430$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_019F_01C29B8D.F354CC30"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_019F_01C29B8D.F354CC30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a perl script that mounts and smb share then umounts it at the
end. A simple system "umount /mnt/backup".
About 60% of the time it will hang and suck up about 98% of the cpu
taking 10-15 minutes to complete. Other times it completes right away.
This is on a test server with nothing else running at the same time.

I have tried it back to back with it working then not working then not
working then working... You get idea.

Suggestions?

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_019F_01C29B8D.F354CC30
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

------=_NextPart_000_019F_01C29B8D.F354CC30--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
