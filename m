From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: modules: aliases and configuration
Date: Sun, 9 Nov 2003 12:10:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031109121004.GA793@archibold.chu.cam.ac.uk>
References: <3FADADC8.3070904@rcn.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3FADADC8.3070904@rcn.com>
List-Id: <linux-newbie.vger.kernel.org>
To: John Aspinall <jgaspinall@rcn.com>
Cc: linux-newbie@vger.kernel.org


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> So what is it with these "formalized" (for want of a better word) alias=
=20
> names?  If I see an alias char-major-<n> (for some number <n>), what is=
=20
> the significance of <n>?
When the kernel wants to load a driver, it usually doesn't know the
name of the driver (so, for instance, if it wants to start a network
interface, and the driver isn't currently loaded, it won't know
whether to load rtl8139 or 3c59x).  The standard names reflect what it
*does* know about the driver i.e. why it needs to be loaded.

On older Linux systems, before the introduction of devfs, devices were
identified by a major number, which specified the class of device
e.g. serial ports, and a minor number, which specified the specific
instance.  ``char-major-<n>'' is supposed to be an alias for the
driver which provides a character-by-character device with major
number <n>.

I'm not aware of any authoritative list of such aliases.  The ones
I've come across are:

char-major-<n> 		-- see above
char-major-<n>-<m> 	-- same, but request the specific minor number <m>
block-major-<n> 	-- block oriented major device <n>
block-major-<n>-<m> 	-- same, but request the specific minor number <m>
tty-ldisc-<n> 		-- tty line discipline number <n> (a tty is an
			   abstraction layer which can get put on top of
			   basically any bi-directional	character device)
scsi_hostadapter 	-- SCSI host adapter for the machine
sound-slot-<n> 		-- Sound card number <n>
sound-service-<n>-<m> 	-- service <m> provided by soundcard <n>
	(Service 0 =3D=3D mixer, 1 =3D=3D sequencer, 2 =3D=3D midi, 3 =3D=3D dsp)
binfmt-<n> 		-- binary (i.e. executable) format <n>.  The <n> is
			   a magic number from near the start of the file,
			   rather than anything	predictable.
iptable_<s> 		-- the iptables table which is called <s>
ipt_<s> 		-- the iptables target or match rule which is
			   called <s>

In addition, network interfaces are requested directly by name e.g.
the module responsible for eth0 is requested as eth0.

I'm sure there are lots of other entertaining special cases.

> Question 2) Module configuration info:
> If I look in my system's /etc/modules.conf it consists of 2 lines.
> Yet if I do 'modprobe -c' I get a couple of hundred lines.  The man page=
=20
>  for modprobe says that 'modprobe -c' shows the "currently used=20
> configuration (default + configuration file)".  So where does this=20
> "default" come from?  Presumably it's established somewhere during the=20
> kernel build, but where?
I think it's actually chosen when modprobe is built, rather than as
part of the kernel build.  I' haven't got a Linux machine handy to
check, though.

Steven Smith,
sos22@cam.ac.uk.

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (FreeBSD)

iD8DBQE/ri6cO4S8/gLNrjcRAkhwAKCiDnrONEWYtzQzqf+zX2TpeI65BACfdY2B
1RSIzbvp+qYdkIgDjtVzCSU=
=QEkB
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
