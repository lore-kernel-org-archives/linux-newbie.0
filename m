From: Alan Bort <333101@personal.net.py>
Subject: Re: Cannot login as non-root user
Date: 15 Jul 2003 20:30:46 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058315442.3629.2.camel@gandalf.ciccio-net.cjb.net>
References: <20030715.162201.505.419099@webmail10.lax.untd.com>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030715.162201.505.419099@webmail10.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: beolach@juno.com
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

do you have execute permissions for /bin/???

drwxr-xr-x    2 root     root         4096 may 17  2002 bin

something like like that shouldbe...=20

Just TOL


El mar, 15-07-2003 a las 19:21, beolach@juno.com escribi=F3:
> On my brother's computer, running Slackware 9.0, we have just recentl=
y
> begun experiencing problems signing in as non-root users, either from
> normal login, su, su -, or ssh.  After entering username & password,
> login prints the error "Cannot execute /bin/bash: Permission denied"
> and returns to login prompt. Su & su - from root prints the same erro=
r,
> "Cannot execute /bin/bash: Permission denied" and returns to the root
> shell.  Ssh gives "/bin/bash: Permission denied" and connection lost.
> Root can sign in with no problems at all.
>=20
> The first thing I did was check the pemissions on /bin/bash, and it
> is executable for everyone: -rwxr-xr-x.  We've also un/reinstalled
> the bash package (we've tried the bash packages from both the
> slackware-9.0 and slackware-current distributions; bash-2.05b-i386-2
> and bash-2.05b-i486-3), with no change.  I've also removed & readded
> the user accounts in /etc/passwd & /etc/shadow, both with vipw and
> userdel/useradd; again with no result.
>=20
> We started experiencing this quite suddenly, while we were trying to
> get X setup with 3d acceleration for my brothers ATI Radeon 9500 Pro
> (which is still not working, anyone here have experience?), and I am
> have no idea what started the login problems, because obviously X has
> nothing to do with login, and we really weren't doing anything else.
>=20
> Any help resolving this is greatly appreciated,
> Conway S. Smith
>=20
> ________________________________________________________________
> The best thing to hit the internet in years - Juno SpeedBand!
> Surf the web up to FIVE TIMES FASTER!
> Only $14.95/ month - visit www.juno.com to sign up today!
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--=20
Alan Bort
Personal:	+595 (0)971 333 101
=46ax: 		+595 (0)21 606 967
ICQ-UIN:	73799272
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Linux Registered User 298277 -Country Manager- [http://counter.li.org]
[ http://www.linuxquestions.org ] Username: Ciccio
[ http://es.tldp.org ]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
RedHat 9 on Intel Pentium IV 2GHz, 512 DIMM, 64MB nVidia gForce 2 MX200
Ximian Desktop 2 | Ximian Evolution
Asuncion - Paraguay
Ciccio.-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
