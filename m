From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Tar Exclude
Date: Wed, 13 Nov 2002 10:17:27 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <077901c28b27$c6fd7540$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_077A_01C28AFD.DE276D40"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_077A_01C28AFD.DE276D40
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

When running tar with the exclude set tar creates a 10k empty tar file.

I have a script that tars a all the sub directories of a directory into
individual tar files for each subdirectory. I have an exclude file that
is set to skip some of the folders I don't want tarred. This works but
it creates the empty tar files. Is this normal? Can it be set not to do
this?

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_077A_01C28AFD.DE276D40
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

------=_NextPart_000_077A_01C28AFD.DE276D40--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
