From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Tue, 14 Sep 2004 02:48:38 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040914094838.24782.qmail@web53605.mail.yahoo.com>
References: <200409141025.10507.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200409141025.10507.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Richard Adams <pa3gcu@zeelandnet.nl>, Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!

thank you very much :-)
the make mrproper; make oldconfig; and make dep were
all that was lacking . . . whew!!!

for my next steps though, where can i find some
information on snull_load and snull_unload?
running them gave me the following errors:

[aphrodite@aphrodite2 snull]$ snull_load
./snull.o: ELF file ./snull.o not for this
architecture
local0: Host name lookup failure
ifconfig: `--help' gives usage information.
local1: Host name lookup failure
ifconfig: `--help' gives usage information.

[aphrodite@aphrodite2 snull]$ snull_unload
sn0: unknown interface: No such device
sn1: unknown interface: No such device
snull: Operation not permitted



--- Richard Adams <pa3gcu@zeelandnet.nl> wrote:

> On Tuesday 14 September 2004 02:27, Donald Duckie
> wrote:
> > hi!
> >
> > thank you very much for your information.
> > and i'm so sorry for not stating everything that i
> was
> > doing.
> >
> > anyway, i was trying to compile the snull sample
> that
> > i got from
> >
>
http://www.oreilly.com.tw/editor_column/a138_read.html
>=20
> Unless you understand the langauage of China then i
> suggest you use,=20
> http://www.oreilly.com/ forget the tw.
>=20
> > on linux-sh-2.4.18. since i found some problem, i
> > modified the Rules.make (not exactly the Makefile
> as
> > previously mentioned).
>=20
> You should not touch that file _at all_.
>=20
> >
> > the original errors were:
> > [aphrodite@aphrodite2 snull2]$ make clean;make
> > rm -f *.o *~ core .depend
> > gcc -Wall -D__KERNEL__ -DMODULE
> > -I/usr/src/linux/include -O -g -DSNULL_DEBUG =A0-I..
> -M
> > snull.c > .depend
> > In file included from
> > /usr/src/linux/include/linux/config.h:4,
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from snull.c:25:
> > /usr/include/linux/autoconf.h:1:2: #error Invalid
> > kernel header included in userspace
>=20
> You are indeed doing things _all_ wrong, firstly one
> needs a fully configured=20
> kernel source, you do not need to fully compile a
> new kernel simply use your=20
> running kernels .config file, most distro's include
> a sample configuration=20
> file for the running kernel, it can be found in
> /boot, it could also be=20
> located in /usr/src/linux/configs/ (i have seen at
> lease one distro) that=20
> does that.
> Now _before doing anything do;
>=20
> cd /usr/src/linux
> make mrproper
>=20
> Now copy your sample config file to /usr/src/linux
> rename it .config and do=20
> the following.
>=20
> make oldconfig
> make dep
>=20
> change to the directory where you have the snull
> source, i had it in
>  /home/pa3gcu/source/ldd2-samples/snull/
>=20
> Now type 'make' in that directory i needed to edit
> nothing, i did get 2=20
> warnings but you can safely ignore then, snull.o
> gets created ok.
>=20
> Thats it, no going around in circels at all,
> remember one thing, third party=20
> code most always depends on a _configured_ kernel
> source, if one has a=20
> configured kernel source then files like autoconf.h
> and all the nessacary=20
> symlinks are in place and ready to go.
>=20
> I compiled snull on a machine running 2.4.26 with
> gcc 3.3.4.
> Considering snull was first written for 2.0.x
> kernels and has been changed to=20
> suit most all kernel versions then i see no problem
> with 2.4.18.
>=20
> --=20
> If the Linux community is a bunch of theives because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
>=20
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
>=20
>=20
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at=20
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
>=20



	=09
__________________________________
Do you Yahoo!?
New and Improved Yahoo! Mail - Send 10MB messages!
http://promotions.yahoo.com/new_mail=20
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
