From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: keyword for rivafb in XF86Confige file
Date: Fri, 24 Sep 2004 12:35:22 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811107E93@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hello All,
=A0
I am not able to make my X server work on rivafb (framebuffer module) w=
hich is loaded as a module on system.
=A0
I edited "XF86Config-4" file
Driver "nvidia" .=20
Is it the right keyword to invoke the rivafb driver. I got this on same=
 maillists. Where in the system can I find the database for these keywo=
rd stuff.
=A0
Later, when I say
# startx , it fails.
It says:-
(EE) Failed to load module "nvidia" (module does not exist, 0)
(EE) No devices detected.
=A0
What is going wrong here? Is there any other way through which I can te=
ll the X server to use Framebuffer.
=A0
Please help.
=A0
My system configuration
Os=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0 linux 7.3(kernel - 2.4.18=
)
Boot loader=A0=A0=A0=A0=A0=A0 lilo
Default runlevel=A0 3
=46ramebuffer=A0=A0=A0=A0=A0=A0 rivafb
X server version=A0 4.2.0=20
=A0
Regards,
Mukund jampala
=A0
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
