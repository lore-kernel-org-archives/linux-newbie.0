From: X-Penguin <mailinglist.x-penguin@tut.by>
Subject: Re: howto configuring kernel and modules.conf for automatic loading
 of ide-scsi
Date: Sun, 25 Jan 2004 04:16:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <401326EF.6090607@tut.by>
References: <20040125041110.22704715.agri@desnol.ru>
Reply-To: mailinglist.x-penguin@tut.by
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040125041110.22704715.agri@desnol.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="koi8-r"; format="flowed"
To: Agri <agri@desnol.ru>
Cc: linux-newbie@vger.kernel.org

Agri =D0=C9=DB=C5=D4:
> i'm  confused with module loading.
>=20
> i have cdrw and configure ide-scsi emulation for it.
> doing "modprobe ide-scsi; mount /dev/scd0" is fine.
>=20
> but, how to configure automatic loading of ide-scsi?
> it seems that just "touching" for /dev/scd0 do not
> cause kmod to exec modprobe at all. What to do?
> i think that loading several modules at boottime are not the best ide=
a,
> in that case - why do i use modules at all?
>=20
> Agri
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>=20

You need to change /etc/rc.d/rc.sysinit
---------------------------
# Begin of /etc/rc.d/rc.sysinit
=2E....
modprobe ide-scsi
# End of /etc/rc.d/rc.sysinit
---------------------------
for load only this module or enable autoloading by kernel

Loadable module support  --->  [*]   Automatic kernel module loading

p.s.
sorry, my english is not good :(

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
