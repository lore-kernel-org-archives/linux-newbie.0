From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Re: XFree86 - Refresh Rate.
Date: Wed, 21 Jan 2004 13:49:14 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004f01c3e03e$80a691e0$680410ac@pcinstru1>
References: <4004711800003B7E@mail-bcm01.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie list <linux-newbie@vger.kernel.org>

 You need to change :

 HorizSync    30.0 - 65.0

to

 HorizSync    30.0 - 75.0

 i did it like that, and it worked fine !. Tell me if you could set it =
up.
good luck.

--
=46acundo Su=E1rez
Neuqu=E9n - Argentina
=46DSoft
mail y jabber: faco@fdsoft.com.ar
facundo.suarez@ensi.com.ar

----- Original Message -----
=46rom: <rgomez@bancomer.com>
To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, January 21, 2004 1:25 PM
Subject: XFree86 - Refresh Rate.


| My eyes ask for yor help because they feel very tired. I cannot take
X-Windows
| at 1024x768@75, I Know that my monitor and video card are able of thi=
s
because
| in Windows I can do it, I want to specify refresh rate to 75 instead =
of
| 60. =BFHow can I do this??
|
| XFree Version:    XFree86-4.3.0-2.90.43
|
| Actual XF86Config file:
|
| Section "Monitor"
|         Identifier   "Monitor0"
|         VendorName   "Monitor Vendor"
|         ModelName    "Dell VS17X"
|         HorizSync    30.0 - 65.0
|         VertRefresh  50.0 - 120.0
|         Option      "dpms"
| EndSection
|
| Section "Device"
|         Identifier  "Videocard0"
|         Driver      "vesa"
|         VendorName  "Videocard vendor"
|         BoardName   "S3 Trio64V2 (generic)"
|         VideoRam    2048
| EndSection
|
| Section "Screen"
|         Identifier "Screen0"
|         Device     "Videocard0"
|         Monitor    "Monitor0"
|         DefaultDepth     16
|         SubSection "Display"
|                 Depth     16
|                 Modes    "1024x768" "800x600" "640x480"
|         EndSubSection
| EndSection
|
| -
| To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
| the body of a message to majordomo@vger.kernel.org
| More majordomo info at  http://vger.kernel.org/majordomo-info.html
| Please read the FAQ at http://www.linux-learn.org/faqs
|

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
