From: Eric Bambach <eric@cisu.net>
Subject: Re: root password
Date: Fri, 1 Apr 2005 10:52:06 -0600
Message-ID: <200504011052.06961.eric@cisu.net>
References: <5.1.0.14.1.20050330063201.02035bd0@celine> <200504011823.16115.Tobias.Hirning@gmx.de>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504011823.16115.Tobias.Hirning@gmx.de>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Tobias Hirning <Tobias.Hirning@gmx.de>
Cc: linux-newbie@vger.kernel.org

On Friday 01 April 2005 10:23 am, Tobias Hirning wrote:
> Hi Ray!
>
> > [...]
> > Any other suggestion of how to become root without knowing the root
> > password is a technique for breaking into systems, and I (and I
> > hope everyone else) will not give advice on that publicly, in this
> > forum or anywhere else.
>
> Why shouldn't we know how the bad can break into our systems?
> I think it's always better to know exactly how they do it.
> Tobias

Kernel parameter line init=3D/bin/(ba)sh (most effective IMO)
Boot cd/disk/ etc.
Physically removing the hard drive
Get the shadow file and crack
Overwrite the shadow file with an exploit
Sniff the password from telnet/unsecure services

=2E..And many more, these just came off the top of my head.

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
