From: cr <cr@orcon.net.nz>
Subject: Re: ppp ain't talking
Date: Sun, 15 Jun 2003 07:45:00 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306140756.h5E7uENj010573@dbmail-mx1.orcon.co.nz>
References: <200306140104.h5E144wo017689@pegasus.wanadoo.be> <5.1.0.14.1.20030613230654.0390ced0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030613230654.0390ced0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

(Some snippage for bandwidth reasons)

On Saturday 14 June 2003 18:23, Ray Olszewski wrote:

> Perhaps. I'm not sure what Heimo means by "a no-no". Last I read, the KDE
> license was revised to be DFSG compliant (quite some time ago, I believe)
> and there was no longer any reason not to include its components in a
> Debian distro.

I believe Qt had its own licensing issues, but that was resolved some time 
back.

> I don't use ppp myself any longer, but I do use several apps that require
> one or another of the QT libraries. Debian-Sid (Unstable) seems to have no
> problem providing them, and my system ... which uses blackbox as its WM and
> doesn't run any desktop encironment ... has no trouble running them.

My preferred browser is Opera, which I believe uses Qt  (and I notice doesn't 
come with Debian, but that may be because of Opera's own licensing terms).   
I haven't tried installing Opera under Debian yet, be interesting to see if 
it works.

> A search of the online package archive for Debian-Sid turns up these
> candidates (not all make sense for your need, though):
>
> autovcr@kuryakin:~$ apt-cache search pppd
> gpppkill - GTK+ pppd monitoring and control utility
> ipmasq - Securely initializes IP Masquerade forwarding/firewalling
> ipppd - PPP daemon for syncPPP over ISDN
> isdnutils - Most important ISDN-related packages and utilities
> isdnutils-base - ISDN utilities, the basic (minimal) set
> kernel-patch-mppe - MPPE Encryption for PPP
> kppp - KDE dialer and frontend to pppd

(snip)

I see kppp in that list....

I'll assume for the present that KPPP is now supported in Debian and carry on 
with my debugging efforts.

Thanks

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
