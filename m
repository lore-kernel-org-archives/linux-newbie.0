From: Oliver Ob <ob_ok@gmx.net>
Subject: Re: Lilo and NT-Safeguard -NO Diskdrive available on Toshiba!-2
Date: Tue, 28 Jan 2003 00:20:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E35BEC0.22C19799@gmx.net>
References: <Pine.LNX.4.21.0208062008090.8397-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Riley Williams <Riley@Williams.Name>
Cc: Lx Newbie List <linux-newbie@vger.kernel.org>

Riley Williams :
>=20
> Hi Oliver.

Hi Riley, sorry, we better both calm down. But please understand my
situation. I am fumbling with this shit without success since 6 months
already. So bare with my temperament and dont take it too serious :-)

> > There is some problem here. I had been using my machine dualbooting
> > with Lilo for NT and Linux. Worked like a charme. Lilo resided in
> > the mbr and it worked.
> >
> > But now the NT uses SAFEGUARD and that thing sits in the mbr for th=
e
> > pre-boot-password-authentication. So for all of you who do not know
> > SG yet: It starts booting ONLY if you entered the correct pw.
> >
> > I have not done this before and ask for your advice:
> >
> > *** AGAIN, STOP WASTING MY AND YOU TIME WITH IDEAS TO MODIFY THE NT
> > LOADER! I SAID A MILLION TIMES WHY I CANNOT CHANGE THAT !!! ****
> > Thanks.
>=20
> If you're not willing to read the replies you get, then stop wasting =
OUR
> time asking for information you then ignore !!!
No, I read and tried.
Secondly, do not take that too personal, I received more answers than
you can think of (in private mail), and 90% of them were telling me to
change the NTloader, just like the howto says :-((
=20
> To quote your comment above, you said "Lilo resided in the mbr" and T=
HAT
> is the problem that stops SafeGuard from working. As I stated in my
> previous reply, you need to move Lilo out of the mbr and into the boo=
t
> sector of the LINUX partition - NOT the NT partition as you claim in
> your comments. When you've done so, you change the partition table
> (which is NOT part of the MBR and is also NOT part of the NT loader)
> to indicate that the active partition is the Linux one.
>=20
> > How can I continue using LILO for NT/Linux dualboot *when I need to
> > make NT believe the orignal ("safeguarded") NT-Bootsector in the
> > mbr, but want to use lilo in the mbr ACTUALLY
>=20
> Why do you want to put lilo in the MBR ??? Why not just give safeguar=
d
> what it wants in the first place?
Because to my understanding any booting system on earth needs his mbr,
or am I wrong here? How would a system without mbr boot at all?
Teach me if I am wrong here! I want to learn!
=20
> > I put it like this: I NEED lilo in the mbr...
>=20
> Why? I've never put lilo in the MBR and have many systems happily dua=
l
> booting Linux and Windows, so it can't be for that. I even have one
> system that is quad-booting Linux, Windows XP, OS2 Warp and MS-DOS an=
d
> did it precicely this way.

Alright, this is a good point to ask: What THEN have _you_ got in your =
mbr?

I currently have the data from win98 inside my mbr.
Must I zero it out?=20

If I put the Safeguard-mbr back to my drive, it boots
NT without even booting Lilo on hda2 even THOUGH I have activated hda2
as booting partition. So please, Riley, what have you in your mbr when
you say you are multibooting all those above systems with a lilo in a
primary partition (hda1 hda2 hda3 or hda4)?

Please include also a list of your partitions using fdisk -l to help
my understanding. I want to get to know this!

> > ...but can only boot with SAFEGUARD. So how can I tell lilo to run
> > the SAFEGUARD sector, which I have here in a file (512 bytes) ?
>=20
> That's easy enough, but if you do it that way, it won't work as the
> safeguard sector is sensitive to its position on the hard drive.
Do you use safeguard ?
=20
> Best wishes from Riley.

Best wishes back and bare with my 6-month-agony-temperament...

Olli

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
