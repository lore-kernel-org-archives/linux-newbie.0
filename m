From: Tobias Hirning <Tobias.Hirning@gmx.de>
Subject: Re: Problem booting linux from a Win2000 laptop
Date: Sun, 17 Apr 2005 20:13:18 +0200
Message-ID: <200504172014.05146.Tobias.Hirning@gmx.de>
References: <01C541CF.6B014C10.vanitha@agilis.stengg.com>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart1385810.MbFEYgI2CX";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01C541CF.6B014C10.vanitha@agilis.stengg.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: "vanitha@agilis.stengg.com" <vanitha@agilis.stengg.com>, linux-newbie@vger.kernel.org

--nextPart1385810.MbFEYgI2CX
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Vanitha!
On Friday, 15. April 2005 17:25 Vanitha Ramaswami wrote:
> I have a Acer Laptop which has Win2000 installed in it. I installed
> redhat linux in it (/dev/hda5)..But i am not able to boot the
> linux. I restarted the Laptop putting the Linux Boot CD (dont have
> floppy drive), i am getting the installtion screen. I dont know how
> to boot the linux which is installed in the /dev/hda5 partition.
>
> While installing linux i chose GRUB boot loader to install in /boot
> partition..
That's the problem. You installed GRUB in the partition and NOT in the=20
MBR. So now, when you start your laptop, the BIOS will start the=20
windows-bootmanager which is installed in MBR.

> Can you tell me how do i boot linux which is in /dev/hda5 partition
> using the boot CD.
You can mark the partition as active, but it's not so easy.
Or you can boot with the cd and install GRUB in the MBR. So GRUB will=20
be load everytime you boot and you can chose which OS to boot.
Tobias
=2D-=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085
Registered Linux-User #367044
Registered Linux-Machine #262062
http://counter.li.org
Diese E-Mail wurde mit einer fortgeschrittenen elektronischen
Signatur nach =C2=A72 2. d) SigG signiert.

--nextPart1385810.MbFEYgI2CX
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQBCYqdtVPy429AtcIURAtqzAJ9O18n72mZ/rRkCfNgFVe+Fj95o7gCeKzGd
G+beLnzi4cPgwxGsx4SRGn0=
=rKUi
-----END PGP SIGNATURE-----

--nextPart1385810.MbFEYgI2CX--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
