From: Valdis.Kletnieks@vt.edu
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 09 Sep 2014 09:21:23 -0400
Message-ID: <22561.1410268883@turing-police.cc.vt.edu>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8520604414137000608=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: Your message of "Tue, 09 Sep 2014 07:58:49 -0000."
	<a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Sender: kernelnewbies-bounces@kernelnewbies.org
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: Rajat Jain <rajatjain@juniper.net>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>

--===============8520604414137000608==
Content-Type: multipart/signed; boundary="==_Exmh_1410268883_2315P";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1410268883_2315P
Content-Type: text/plain; charset=us-ascii

On Tue, 09 Sep 2014 07:58:49 -0000, Rajat Jain said:

> Can someone tell me if the i386 one is to be used when we want to build for a
> 32bit machine and the x86_64 is to be used for 64 bit machine?

I wouldn't run either one on an actual machine.  Defconfigs are *example*
configs, only useful as a template for customizing for actual hardware.

--==_Exmh_1410268883_2315P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1
Comment: Exmh version 2.5 07/13/2001

iQIVAwUBVA7+0wdmEQWDXROgAQJfkQ/7BmHoEgvl9z7H8ZBffa57GsTYtYpkDCte
jD58Zuij/ipPBB1ddjKgy7xfGOuncbcR+EXoyLc23hRD+FZAHITBRzNVGckxKsX4
81/D4t7yU8o3/s2b4S7wupb5WhgAuMsGJEI2goearlXvvV3cWyHnT0MnyT0/j6cK
2j7ScdB/RL4gyp+dQ7lYpGLKl8hnzNfnImXlgDPaaurnDUIFtrocbqmVnIhA+c9U
LzSG4sRgZL6+iYIwZB03LjG+HiETEwK8Dx0DzFBb5yI5Odvr+d8wBdAJAksR4Gal
GXQSlMxjiOiIq7Msu2gDUVaibyczJAoQnvSF3Wqw2uPoZ3Ydhnd718Pb0moR7Dwi
DZzFux/aeVoHQxIOJFHQwMl0Rcsl4EgqpCMm5Zt3LPxRBzTCo8u4ndiPyP323rhD
dkHrprw5+Z5+kW1ozFhzSKgmcwevRg0/5J3Wo72M0E1PT3I2j+f5hcRhAhTuOcrH
DK6dIJZ63VxW05GBcqnGaq9eMevMhtKl2VqABy44zDTJuCmdsmZYOSwBbW33+FOK
Wlic0Nm/sh1wMQyDb+K3DE8KppOEQn1D/1r+/4524A0aTXrouVcliERuAbG97tJJ
8ApdozPPqBoq6v5toNSz/Q/dxwesmV/B7sWa+UPYnMYy6M9xSUT6e/+OB6+hjCmb
jGArgUmoQMk=
=jm/4
-----END PGP SIGNATURE-----

--==_Exmh_1410268883_2315P--


--===============8520604414137000608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============8520604414137000608==--

