From: Eric Bambach <eric@cisu.net>
Subject: Re: reconfiguring sound after kernel upgrade
Date: Mon, 28 Feb 2005 11:27:57 -0600
Message-ID: <200502281127.57150.eric@cisu.net>
References: <000d01c51d55$1b6dbf10$0db3fea9@kath.state.gov>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <000d01c51d55$1b6dbf10$0db3fea9@kath.state.gov>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: bhamal@wlink.com.np
Cc: linux-newbie@vger.kernel.org

On Sunday 27 February 2005 11:17 pm, bj wrote:
> Hi !
--snip--
> cd alsa-driver-1.0.8
> ./configure -->no error
> ./make ----> the following error
>
> make[1]: *** No rule to make target
> `/lib/modules/2.4.18-14/build/include/linux/config.h', needed by
> `memalloc.o'.  Stop.
> make: *** [compile] Error 1

It looks like you are running 2.4.18 kernel version and trying to compi=
le=20
programs for another vesion. Boot into your 2.4.20 legacy kernel and tr=
y=20
again.
Uname -a will show you what you are currently running.

The problem is that the configure scripts detect your currently running=
 kernel=20
when you want to compile for a different one. The simplest way to fix t=
his is=20
to boot into the new kernel so the configure scripts can detect *THAT*=20
version.

Oops, I also just saw another problem. You must make sure that a kernel=
 is=20
CONFIGURED at that directory. You will need to install not only the ker=
nel=20
binary RPMS, but make sure you install the source along with it. It can=
t find=20
config.h because you havent ran make menuconfig or similiar in that dir=
ectory=20
and generated the config files for alsa to use.

HTH

--snip--
> Thanks in advance.
>
> cheers,
> bj

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
