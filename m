From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: Generating SSH Keys
Date: Fri, 20 Feb 2004 14:27:24 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040220142724.GA4025@archibold.chu.cam.ac.uk>
References: <20040219175356.GA6101@archibold.chu.cam.ac.uk> <GNEPLLCIIBHICCOGIAKPAEEACCAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <GNEPLLCIIBHICCOGIAKPAEEACCAA.eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Eve Atley <eatley@wow-corp.com>
Cc: linux-newbie@vger.kernel.org


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> So I've SSHed into my home machine from work (running OpenSSH on Mac OS X).
> Of course it comes up with the prompt about the machine not being found in
> the list and hit no if you don't trust it, etc. I generally, before this,
> have hit 'yes'.
Just to clear something up: the host key (which is what you're being
prompted about here) isn't the same as the user key (which will be
used for authentication).  The host key is used by the client to make
sure that it's talking to the right server; the user key is used by
the server to make sure that it's talking to the right user.

> So if I create a keypair on my Windows machine from work, and put
> the public key on my Macintosh, because I've logged in before
> without a keypair, will it ignore that keypair?
Whether you've logged in before using some other scheme should have no
effect.  If the private key is available on the client and the public
key is authorized for the account on the server, then everything
should work.

I'm not sure how Apple set up the ssh server by default, but I
wouldn't expect there to be any problems with this.

Steven.
--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFANhlMO4S8/gLNrjcRAnWGAJ0Tv57+rHW6w2mO6ibDRiqmjuxoeACdG70s
wdmRaJPO3tMo+KO962TkmKE=
=MQ1h
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
