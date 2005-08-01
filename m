From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Linux FAT12 mount issue (digital media problem)
Date: Mon, 1 Aug 2005 07:29:52 +0200
Message-ID: <200508010729.52409.pa3gcu@zeelandnet.nl>
References: <C349E772C72290419567CFD84C26E01704205C@mail.esn.co.in> <42ED6FCC.5010001@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42ED6FCC.5010001@gelm.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org
Cc: "Mukund JB." <mukundjb@esntechnologies.co.in>

On Monday 01 August 2005 02:41, chuck wrote:

Mukund JB. wrote:

> Dear chunk,
>
>Here are the details of my understanding. =A0
>
>The cannon camera (other devices too) formatted SD is indeed a partiti=
on
>FAT12. When I said

Most linux distros now have hotplug which should take care of loading t=
he=20
correct module(s) for camera memory driver devices.
A way of getting around not knowing what module to use for the filesyst=
em is=20
to use the "-t auto" option of mount.

mount -t auto /dev/xxx /mnt/xxx
=20
chuck gelm. Wrote:

> Please copy and paste (not attach) the new lines appended to=20
> /var/log/messages
> when your camera device is connected to your computer.

dmesg would be much more informative and indeed shead more light=20
than /var/log/messages would.

Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
