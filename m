From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: Automatically loading kernel modules at bootup
Date: Thu, 29 Mar 2007 18:39:01 +0200
Message-ID: <20070329163900.GB15453@gateway.home>
References: <292693080703290852g4e244c67rb740029e5142a3ae@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080703290852g4e244c67rb740029e5142a3ae@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Thu, Mar 29, 2007 at 09:22:45PM +0530, Daniel Rodrick wrote:
> How do I make sure that my kernel module gets loaded automatically on
> system bootup?

Depends. Hotplug/udev will automatically load modules for devices in
plug-and-play busses (PCI, USB, Cardbus, firewire, etc). If that
doesn't work, it gets distro specific. In Debian you would put the
module name in /etc/modules, don't know about other distributions.


Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGC+uk/PlVHJtIto0RAl2BAJ9K1IdFgcyCrJh8JWh7qP90/MET1QCdHegA
vrANsmoHcmHk8pO8IZpMFTA=
=IoIt
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
