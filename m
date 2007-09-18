From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Microphone
Date: Tue, 18 Sep 2007 07:06:26 -0600
Message-ID: <20070918070626.02f7c52f@mandalor.homelinux.net>
References: <46EFC380.6080709@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_aKDx93os+7j8+LlLwxN_9J/";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <46EFC380.6080709@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Daron Ryan <daron.ryan@gmail.com>
Cc: linux-newbie@vger.kernel.org

--Sig_aKDx93os+7j8+LlLwxN_9J/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Sep 2007 21:54:32 +0930
Daron Ryan <daron.ryan@gmail.com> wrote:
> Hi,
>=20
> I have recently purchased a microphone / headset but can not get the=20
> microphone to work. The system is dual boot and the microphone works=20
> under windows but not Linux. Here some of the details of the system
>=20
> Distribution:                                Fedora 64bit
> Audio card:                                 Intel 82801H (ICH8 Family)
> ALSA driver version:                 1.0.14.
>=20
> I have tried adjusting microphone up to maximum volume using
> alsamixer (I assume maximum volume means maximum sensitivity). This
> only causes a hiss when microphone input is played back out again
> with no sign of my voice. What else can I try?
>=20
> Regards,
> Daron.
>=20

What program are you using to test the microphone?  Several
applications still use the older OSS instead of the newer ALSA
interface, especially for microphones.  ALSA includes OSS
compatibility, but the mixer levels are somewhat separate.  Try using
an OSS mixer program, like rexima or aumix, as well as alsamixer, and
make sure that both the OSS & ALSA mixers are set to record from the
microphone & the capture level isn't 0.  Also note that in alsamixer
there are separate playback & capture levels for the microphone, as
indicated in the "View:" line towards the top: pressing tab should
cycle them.

Good luck,
Conway S. Smith

--Sig_aKDx93os+7j8+LlLwxN_9J/
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.6 (GNU/Linux)

iD8DBQFG781ZGL3AU+cCPDERAkICAKCLlK2P00mRjQTSIoxHsXh3qxpYVACfTvfg
Wdg4J3g2FbtKqEQFAsB4j9w=
=X+Kr
-----END PGP SIGNATURE-----

--Sig_aKDx93os+7j8+LlLwxN_9J/--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
