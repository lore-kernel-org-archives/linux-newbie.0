From: Valdis.Kletnieks@vt.edu
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 09 Sep 2014 10:27:53 -0400
Message-ID: <75730.1410272873@turing-police.cc.vt.edu>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
            <540F094F.3040904@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="==_Exmh_1410272873_2315P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 09 Sep 2014 16:06:07 +0200."
             <540F094F.3040904@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>

--==_Exmh_1410272873_2315P
Content-Type: text/plain; charset=us-ascii

On Tue, 09 Sep 2014 16:06:07 +0200, Matthias Brugger said:

> > Can someone tell me if the i386 one is to be used when we want to build for
> > a 32bit machine and the x86_64 is to be used for 64 bit machine?
>
> You can build the kernel with any architecture for any architecture.
> This is called cross-compiling. The homepage [0] should explain you how
> to do that.

Right, but you still need to use a .config appropriate for the target
machine, which is what I think Rajat was asking about.

A defconfig is usually only known verified to boot on a few (possibly one)
examples of that architecture hardware.  For embedded ARM, it may be one
specific development board or hardware device.  For x86, I think they try
to keep it "will probably kind of sort of boot on generic PC hardware with
a common distro, but anything fancylike a webcam or better graphics than
"vga tty emulation" may not work".

A defconfig is pretty much just a proof of concept starting point for
an actual working config for a given hardware system.

--==_Exmh_1410272873_2315P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1
Comment: Exmh version 2.5 07/13/2001

iQIVAwUBVA8OaQdmEQWDXROgAQIwaA/+IEq/530zbXlObWeQQULdCS/XV5luMLcO
szpD8SRXK7uaxoLe3Hy4EgHMpvTYx3TsmJ1uFgG4WCmn8gRJ3h7evrjXszJ2WaR1
yrUnPXTcWOoddcHYiuxCiJeAHyqF+Srt+v1Pou7OL86unHhNOp79YfVZcAjjSMfr
mGZdTjgsFwI9OQ9nO6rWe9PpwOLMYgNPMVosMlWwIe7zQeVCw73NTRKS++68AMvn
IVXWvdL9rSmo0RwH9W29G8QgQrHeImpGGcmPBFPtGGcIXxVK9xZTWx0qCw5igCgF
msqsSd3+UsJ6DtiKrD8IYv9SHTvlu3Lfn5pAHWh+T4bHw0bop1oW+70zprrm9wU8
BI1GVlO/PP4B6l8s6FyMXvetMOln8ZTIy5LiZZZ0v/M/jHl/Fz0HvUeQyPDSn9h4
iFWczzF2OJUSeqFlDB5TJMmYIy4f2/irffXn6MSwluV0gPPQdtU1JEQZS/Vbn22G
/yW0K9aOeJqNEHPwEETKT6pqVo867Od0er6hKXnHuOeMAo1hA/O0Na5BbpTPSLuv
u9WTFSgGvihBbDBpYE43Joi1iobT3yqiybmA13fb074Y92f8oV5StP+cJumfx/ef
MvVn0FlQ4zF0nAr2o8pbasr3oBAo3gNSZbo0vr7nn44wJtyQLfTRvPTPDjhX5FxI
3F7eoRXjnVU=
=Rgg0
-----END PGP SIGNATURE-----

--==_Exmh_1410272873_2315P--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
