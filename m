From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: PCI config space doubt
Date: Tue, 24 Apr 2007 12:27:33 +0200
Message-ID: <20070424102733.GD20230@gateway.home>
References: <b115cb5f0704232333u13a27802ycf025724be8f59a3@mail.gmail.com> <20070424094151.GB20230@gateway.home> <b115cb5f0704240250y6360d82ev6dfff657dad7188d@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0704240250y6360d82ev6dfff657dad7188d@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Tue, Apr 24, 2007 at 03:20:01PM +0530, Rajat Jain wrote:
> >On Tue, Apr 24, 2007 at 12:03:32PM +0530, Rajat Jain wrote:
> >> Does Linux assign the resources to PCI devices? Or is it done by PCI
> >> firmware?
> >
> >Yes.
> 
> I'm sorry but I could not understand your "Yes" very well ... so Which
> one of the following assigns the resources to PCI devices?

Sorry, forgot to remove the remaining question.

> - Linux Kernel?

Kernel.

> - PCI firmware?

Modern BIOSes usually only initialise the devices needed for boot:
disk and video card. With older BIOSes you can control that by the
"PnP OS" option, even older BIOSes initialise every device.
 

Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGLduV/PlVHJtIto0RAhVnAJ98QaZJb54Pay3YomPCfZKZnfx/EACggpVo
KfWHHCCeL+a+sRSC59nNQZM=
=40ae
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
