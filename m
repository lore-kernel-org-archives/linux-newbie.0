From: Robin Doer <robin@robind.de>
Subject: Re: Mutual Exclusion in Kernel
Date: Wed, 6 Oct 2004 16:04:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200410061604.16497.robin@robind.de>
References: <20041006085523.35414.qmail@web52903.mail.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart4039598.kJuqzZUPym";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006085523.35414.qmail@web52903.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-newbie@vger.kernel.org

--nextPart4039598.kJuqzZUPym
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

No!

You have to write your own busy-waiting-algorithm while the operating syste=
m=20
provides you a semaphore.

A busy-waiting-algorithm can be compared with a two-state-semaphore (lock o=
r=20
unlock) but the concept of the semaphore is must more powerful. In theory a=
n=20
infinite number of states is possible. Thus you can control the access to a=
=20
resource in different levels.

Am Mittwoch, 6. Oktober 2004 10:55 schrieben Sie:
> but this is like semaphore?
>
> thanks again
>
> ankit
>
>  --- Robin Doer <robin@robind.de> wrote:
> > Good morning!
> >
> > Ankit Jain (ankitjain1580@yahoo.com) schrieb:
> > > hi
> > >
> > > what is spin lock?
> >
> > http://en.wikipedia.org/wiki/Spin_lock
> >
> > aka "busy waiting". A thread is polling <something>
> > until <something> says
> > "ok" and the thread continues working.
> >
> > > thanks
> > >
> > > ankit
> >
> > Have fun,
> > Robin
> >
> > -
> > To unsubscribe from this list: send the line
> > "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at
> > http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> > http://www.linux-learn.org/faqs
>
> ________________________________________________________________________
> Yahoo! Messenger - Communicate instantly..."Ping"
> your friends today! Download Messenger Now
> http://uk.messenger.yahoo.com/download/index.html

--nextPart4039598.kJuqzZUPym
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQBBY/tgwnZkqspVX/oRAjB4AJ9tS5TKQJhFtz5eR26qxMF272FsUgCfeEEw
4CLi2/8k9f6jhfnhLbFzb/c=
=mfs0
-----END PGP SIGNATURE-----

--nextPart4039598.kJuqzZUPym--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
