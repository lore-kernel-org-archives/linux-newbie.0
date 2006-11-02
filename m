From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: frozen X on ubuntu breezy badger
Date: Thu, 2 Nov 2006 07:21:46 -0700
Message-ID: <20061102072146.542d8134@mandalor.homelinux.net>
References: <Pine.LNX.4.64.0610302121040.29887@localhost>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_CR13uTI+gs=N4EIRDANQ.qq";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0610302121040.29887@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: karthikv@Alum.Dartmouth.ORG
Cc: Newbie List <linux-newbie@vger.kernel.org>

--Sig_CR13uTI+gs=N4EIRDANQ.qq
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 31 Oct 2006 11:55:25 -0500 (EST)
Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG> wrote:
> Every time I 'startx' my machine freezes up. The desktop loads to
> different points, at different times - what I mean by that is that
> sometimes I see the task bar with the buttons and labels and
> sometimes I don't, sometimes the clock applet runs for a few seconds
> and then freezes and at other times I just get a "frozen" desktop,
> and yet at other times the desktop is active, responds to mouse
> clicks (i.e. opens an xterm/firefox) but freezes on using the
> keyboard. During all of this, the mouse remains active and the
> pointer responds to mouse motion, while the keyboard is dead (no
> response to num/capslock, Ctrl-Alt-F1/F5, Ctrl-Alt-Bksp).
>=20
> The machine is however reachable via ssh and killing all X related=20
> processes (startx, X, xserver) does not return to the shell. Issuing
> a shutdown command, is the only way to recover, seemingly. I have
> tried moving from icewm (the default window manager) to gnome, with
> no success.
>=20

I have occasionally had X crashes where it's difficult to return to a
normal terminal, but I've found that I can usually login via ssh & use
chvt to change back to a non-corrupted virtual terminal.

> This started after I replaced my old power supply with a newer one -
> no hardware was added/removed/changed around on the machine.
>=20
> Attached is the Xorg.0.log (please pardon bloating the posting size).
> The running kernel is 2.6.12-9-386, and the icewm/gnome versions are:
>=20
> icewm-common 1.2.22-2ubuntu2
> icewm 1.2.22-2ubuntu2
> gnome-session 2.12.0-0ubuntu1
>=20
> I am really frustrated at this behavior especially since I am now
> forced to boot to windows. Any pointers to help fix this will be
> great.
>=20
>=20
> Thanks,
>=20
> -K

I can't see anything really wrong in the log (although the nvidia
driver it shows being loaded [1.0.7667] is an old version)... maybe try
"startx -- -logverbose 5", to get more messages in the log file, and
see if there's any Error or (EE) lines. Another thing to try would be
editing xorg.conf & switching from the nvidia driver to the nv driver,
and see if that helps (most of the X crashes I've experienced have been
from bugs in the nvidia driver). Even if you don't want to use the nv
driver permanently, it might at least narrow down the source of the
problem. =20

I'm not very familiar with Ubuntu, but I believe Breezy Badger is an
older version, so you might want to consider upgrading to Dapper Drake
(the Long Term Support version) or Edgy Eft (was just released last
week).


Good luck,
Conway S. Smith

--Sig_CR13uTI+gs=N4EIRDANQ.qq
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFFSf7/GL3AU+cCPDERAmL5AKCpT8jsvKCu3p7pyhP2UEEjHH3uSACfYly0
1HMKcJD4h4VkosSnNlxxpxA=
=BvUL
-----END PGP SIGNATURE-----

--Sig_CR13uTI+gs=N4EIRDANQ.qq--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
