From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: IO
Date: Sun, 4 Jan 2004 09:51:55 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401040951.55784.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20040102221932.01f989f0@celine> <5.1.0.14.1.20040103073408.01f10078@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040103073408.01f10078@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 03 January 2004 16:39, Ray Olszewski wrote:
> He might also change the PnP =A0OS setting in his BIOS, to try to get=
 the
> BIOS to set the card for him. This works for PCi cards, but I **think=
** it
> does NOT work for ISA cards. Still, it won't hurt to try.

He "would need" to resurve the irq for the card in his BIOS, otherwise =
some=20
PCI device may grab the IRQ and render the isa card unusable with an IR=
Q=20
conflicht.

--=20
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
