From: Oliver Ob <ob_ok@gmx.net>
Subject: Re: Lilo and NT-Safeguard -NO Diskdrive available on Toshiba!-
Date: Tue, 28 Jan 2003 00:20:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E35BEBD.75CB6349@gmx.net>
References: <Pine.LNX.4.21.0208051825270.8397-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Riley Williams <Riley@Williams.Name>
Cc: Lx Newbie List <linux-newbie@vger.kernel.org>

Riley Williams schrieb:
>=20
> Hi Oliver.
>=20
> > There is some problem here. I had been using my machine dualbooting
> > with Lilo for NT and Linux. Worked like a charme.
> >
> > But now my company uses SAFEGUARD and that thing needs the mbr for =
NT,
> > I have not done this before and ask for your advice:
> >
> > How can I continue using LILO for NT/Linux dualboot
> > *when I need the orignal ("safeguarded") NT-Bootsector instead of L=
ilo
> > in the mbr?
> >
> > What to do?
>=20
> Drop LILO in the boot sector of whichever partition has the Linux /bo=
ot
> directory in it, and set the partition table such that the said
> partition is the active one. That should deal with this problem.
>=20
> Best wishes from Riley.

Thanks Riley, but that did not solve it. See below.
Must I change or delete the mbr on /dev/hda?

When I reboot it tells me that (I try to translate that from German her=
e)
it is missing a boot system. (something like operating system not found=
)

I guess that is because I have also win98 installed and now it (that me=
ans
the rest of the data in the mbr) seems to search for win98, but now the
activated partition is hda2-linux, including the lilo with these result=
s:

linux:~ # lilo
Added l *
Added failsafe
Warning: CHANGE AUTOMATIC assumed after "other=3D/dev/hda3"
Added w
Added memtest86
TABLE may not be specified near line 46 in file /etc/lilo.conf

What does that "CHANGE AUTOMATIC" mean?
/dev/hda3 is my W98 partition.
And what about that sentence that the table
may not be specified? Line 46 ist the EOF!!! So what table???

--=20
   *=BA=A4.,___,.=A4=BA*=A8=A8=A8*=A4         =3DOliver@home=3D        =
 *=BA=A4.,=B8=B8=B8,.=A4=BA*=A8=A8*=A4
   I   / __|__   http://www.bmw-roadster.de/Friends/Olli/olli.html  I
   I  / /  |_/   http://www.bmw-roadster.de/Friends/friends.html    I
   I  \ \__|_\   http://groups.yahoo.com/group/VGAP-93              I
   I   \___|     mailto:VGAP-93-subscribe@yahoogroups.com           I
   >>>  Telek0ma iBBMS - moving house, but online! +49....TRSi1   <<<
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
