From: r4mz3z <r4mz3z@yahoo.es>
Subject: Re: problems with ALSA
Date: Thu, 12 Dec 2002 00:19:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212120019.25355.r4mz3z@yahoo.es>
References: <200212110750.08044.r4mz3z@yahoo.es> <Pine.LNX.4.50.0212112042140.4071-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.50.0212112042140.4071-100000@athame.gmpexpress.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: dashielljt <dashielljt@gmpexpress.net>, linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi...
  I know which is my card, I'm using a VIA card:
00:11.5 Multimedia audio controller: VIA Technologies, Inc. VT8233 AC97=
 Audio=20
Controller (rev 40)
        Subsystem: C-Media Electronics Inc: Unknown device 0300
        Flags: medium devsel, IRQ 3
        I/O ports at e000 [size=3D256]
        Capabilities: [c0] Power Management version 2

  And compile ALSA with the option snd-via82xx, the files exist and eve=
rything=20
look fine, but when I use modprobe... It doesn't works.

  Please help me
  thanks

El Jue 12 Dic 2002 01:46, dashielljt escribi=F3:
> Have you tried: lspci -v >lspci.log <cr> then had a look inside of
> lspci.log to see if you could find your sound card?  If it's a p&P so=
und
> card only this won't work, but if it's in a pci slot it's possible ls=
pci
> -v can give you the vendor and type of card which may be enough to ge=
t
> alsa going correctly.  That should also provide you port info, but ev=
en
> before that perhaps dmesg >dmesg.log as root and reading down that fi=
le to
> see if the system even finds a sound card would be useful.
>
> Jude <dashielljt(at)gmpexpress-dot-net>
- --=20
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE999YLs4dF9gl05swRAhgDAJ9NBcRDQIVCsLxlFChZYIf1HR006wCfVtnE
3NZ2iy6rHOhQg0CgYlpWRTk=3D
=3DDkH/
-----END PGP SIGNATURE-----


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
