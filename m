From: mike <mike@kevino.org>
Subject: Re: partitons and proper order
Date: Sun, 31 Oct 2004 15:14:08 -0700
Message-ID: <418563B0.6060306@kevino.org>
References: <41853B6B.5020903@kevino.org> <1099252931.2838.4.camel@localhost>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1099252931.2838.4.camel@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org

Thorsten Alge wrote:
> Hi Mike,
>=20
> the order of the partitions doesnt really matter. Only if you want to
> use lilo as your bootloader you should have your /boot partition unde=
r
> cylinder 1024 - if you use grub you do not need an /boot partition.
>=20
> Am So, den 31.10.2004 schrieb mike um 20:22:
>=20
>>Hello,
>>I have installed linux a few times no real problems with my
>>installs. But going to move some drives around and do a fresh
>>install. I usually install with the below
>>
>>/
>>swap
>>/boot
>>/var
>>/usr
>>/home
>>/tmp
>>
>>I use ext3 and I am currently useing Mandrake distribution on an
>>intel compatible machine with ide drives.
>>
>>My question is does the order I create the partitions matter and if
>>so what would be the proper order, if there is one?
>>
>>
>>Mike
>>-
>=20
>=20
> mit freundlichen Gr=C3=BC=C3=9Fen,
>=20
> Thorsten Alge
>=20
>=20

Thanks Thorsten,
I do use lilo. I have also been running a dual boot box with M$ and
lilo has been writing to the master boot record. But this time it's
all going to be Linux. I have a 30 gig harddrive so I would assume I
would be safe if I kept the /boot partition within the first 500
megabytes of the drive.

Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
