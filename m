From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Qmail SMTP issues
Date: Thu, 17 Oct 2002 16:01:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c27617$f7b19150$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0001_01C275F6.70A177F0"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_0001_01C275F6.70A177F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have installed qmail and it appears to be working correctly. I can
send messages using qmail-inject to accounts on the system. However the
SMTP part does not seem to be working correctly. When I telnet (locally
or remotely) to port 25 it hangs. It connects but then sits with no
greeting messages. When I try to issue SMTP commands it does not
respond. I am unusable to exit or quit and have to kill the telnet
process. Any ideas?
Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_0001_01C275F6.70A177F0
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

------=_NextPart_000_0001_01C275F6.70A177F0--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
