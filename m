From: Jim Nelson <james4765@verizon.net>
Subject: Re: Query regarding Copy-on-write
Date: Sat, 20 Nov 2004 09:22:17 -0500
Message-ID: <419F5319.8090500@verizon.net>
References: <1100947162.4038.43.camel@myLinux> <419F4DA7.1070606@ieee.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <419F4DA7.1070606@ieee.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Simon Valiquette <v.simon@ieee.org>
Cc: linux-newbie@vger.kernel.org

Simon Valiquette wrote:
> Jagadeesh Bhaskar P a =E9crit :

>> How can this work? Can someone please help me on this regard?
>>
>=20
>   I think I gave a good overview of the question.  I tried to keep=20
> things as simple as I could, at the cost of not giving an exact=20
> description of how Linux handle COW.  For example, there is in fact 3=
=20
> levels of page table indirections in Linux, but it was not necessary =
to=20
> understand COW.
>=20

4-level page tables just were merged into the kernel mainline as of 2.6=
=2E10-rc2 -=20
mostly to support the big iron that has almost-terabyte-level system me=
mory (the=20
SGI Altix, some of the big stuff from IBM, some other NUMA machines).

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
