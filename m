From: Eric Bambach <eric@cisu.net>
Subject: Re: reconfiguring sound after kernel upgrade
Date: Tue, 1 Mar 2005 12:44:20 -0600
Message-ID: <200503011244.20782.eric@cisu.net>
References: <000301c51e1e$db0a1390$0db3fea9@kath.state.gov>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <000301c51e1e$db0a1390$0db3fea9@kath.state.gov>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: bhamal@wlink.com.np
Cc: linux-newbie@vger.kernel.org

On Monday 28 February 2005 11:21 pm, bj wrote:
> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org
> [mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Eric Bambach
> Sent: Monday, February 28, 2005 11:13 PM
> To: bhamal@wlink.com.np
> Cc: linux-newbie@vger.kernel.org
> Subject: Re: reconfiguring sound after kernel upgrade
>
> On Sunday 27 February 2005 11:17 pm, bj wrote:
> > Hi !
>
> --snip--
>
> > cd alsa-driver-1.0.8
> > ./configure -->no error
> > ./make ----> the following error
> >
> > make[1]: *** No rule to make target
> > `/lib/modules/2.4.18-14/build/include/linux/config.h', needed by
> > `memalloc.o'.  Stop.
> > make: *** [compile] Error 1
>
> It looks like you are running 2.4.18 kernel version and trying to com=
pile
> programs for another vesion. Boot into your 2.4.20 legacy kernel and =
try
> again.
> Uname -a will show you what you are currently running.
>
> The problem is that the configure scripts detect your currently runni=
ng
> kernel
> when you want to compile for a different one. The simplest way to fix=
 this
> is
> to boot into the new kernel so the configure scripts can detect *THAT=
*
> version.
>
> Oops, I also just saw another problem. You must make sure that a kern=
el is
> CONFIGURED at that directory. You will need to install not only the k=
ernel
> binary RPMS, but make sure you install the source along with it. It c=
ant
> find
> config.h because you havent ran make menuconfig or similiar in that
> directory
> and generated the config files for alsa to use.
>
> HTH
>
> --snip--
>
> > Thanks in advance.
> >
> > cheers,
> > bj
>
>  Hi !
>
> Thank you for the prompt reply .
>
> The result of uname -a is as follows:-
>
> Linux home 2.4.20-30.8.legacy #1 Fri Feb 20 17:47:48 PST 2004 i686 i6=
86
> i386 GNU/Linux.
>
> I did boot into the new kernel that is 2.4.20-30.8.legacy .

Ok that was my initial suspicion. But since you are booting into the ne=
w=20
kernel there is one more possibility.

> my "ls -la /boot " gives the following .
>
> I am suprised at the result of the make command of the alsa sound.
>
> ANy new ideas ?

Yes. See below.
> I plan to do a ivh on the rpm instead of uvh (upgrade) of the kernel

The real problem I believe is you need to get the kernel SOURCES. Eithe=
r=20
install the appropriate rpm ( I dont use RPM distributions, but there s=
hould=20
be the file you installed, for example kernel-2.4.20-30.8.legacy.rpm an=
d a=20
kernel-2.4.20-30.8.legacy.srpm or kernel-2.4.20-30.8.legacy-source.rpm.=
)=20
Install a source rpm ( your best bet) and run make menuconfig from=20
the /usr/src/linux-[version] directory.

If you can't find an rpm you can try the vanilla sources at www.kernel.=
org but=20
it will be anywhere from slightly to vastly different from a RedHat pat=
ched=20
kernel and you will have to configure it manually rather than having=20
everything pre-configured by RedHat.

> Below is the result of 'ls -la /boot'
This is not relevant. If you can boot the kernel, you have it installed=
=20
correctly. Again, you have the BINARY installed just fine, you need the=
=20
SOURCES so you can make "out-of-tree" modules.
>
> total 22048
> drwxr-xr-x    3 root     root         4096 Feb 25 10:49 .
> drwxr-xr-x   19 root     root         4096 Mar  1 09:15 ..
> -rw-r--r--    1 root     root         5824 Sep  5  2002 boot.b
> -rw-r--r--    1 root     root          612 Sep  5  2002 chain.b
> -rw-r--r--    1 root     root        38724 Dec 12  2002
> config-2.4.18-19.8.0uml
> -rw-r--r--    1 root     root        44762 Feb 20  2004
> config-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root        44855 Feb 20  2004
> config-2.4.20-30.8.legacybigmem
> -rw-r--r--    1 root     root        54321 Feb 20  2004
> config-2.4.20-30.8.legacyBOOT
> -rw-r--r--    1 root     root        44814 Feb 20  2004
> config-2.4.20-30.8.legacysmp
> drwxr-xr-x    2 root     root         4096 Feb  4 23:02 grub
> -rw-r--r--    1 root     root       133424 Feb  4 23:00
> initrd-2.4.20-30.8.legacybigmem.img
> -rw-r--r--    1 root     root       125898 Feb  4 23:01
> initrd-2.4.20-30.8.legacyBOOT.img
> -rw-r--r--    1 root     root       130032 Feb  4 22:59
> initrd-2.4.20-30.8.legacy.img
> -rw-r--r--    1 root     root       132904 Feb  4 23:02
> initrd-2.4.20-30.8.legacysmp.img
> -rw-r--r--    1 root     root          473 Feb 25 10:49 kernel.h
> -rw-r--r--    1 root     root        23108 Sep  6  2002 message
> -rw-r--r--    1 root     root        21282 Sep  6  2002 message.ja
> lrwxrwxrwx    1 root     root           30 Feb  4 22:59 module-info -=
>
> module-info-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root        15436 Dec 12  2002
> module-info-2.4.18-19.8.0uml
> -rw-r--r--    1 root     root        15438 Feb 20  2004
> module-info-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root        15438 Feb 20  2004
> module-info-2.4.20-30.8.legacybigmem
> -rw-r--r--    1 root     root        15438 Feb 20  2004
> module-info-2.4.20-30.8.legacysmp
> -rw-r--r--    1 root     root          640 Sep  5  2002 os2_d.b
> lrwxrwxrwx    1 root     root           29 Feb 25 10:49 System.map ->
> System.map-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root       342101 Dec 12  2002
> System.map-2.4.18-19.8.0uml
> -rw-r--r--    1 root     root       519482 Feb 20  2004
> System.map-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root       545075 Feb 20  2004
> System.map-2.4.20-30.8.legacybigmem
> -rw-r--r--    1 root     root       329824 Feb 20  2004
> System.map-2.4.20-30.8.legacyBOOT
> -rw-r--r--    1 root     root       545040 Feb 20  2004
> System.map-2.4.20-30.8.legacysmp
> -rw-r--r--    1 root     root      3175842 Feb 20  2004
> vmlinux-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root      3543628 Feb 20  2004
> vmlinux-2.4.20-30.8.legacybigmem
> -rw-r--r--    1 root     root      2121837 Feb 20  2004
> vmlinux-2.4.20-30.8.legacyBOOT
> -rw-r--r--    1 root     root      3539492 Feb 20  2004
> vmlinux-2.4.20-30.8.legacysmp
> lrwxrwxrwx    1 root     root           26 Feb  4 22:59 vmlinuz ->
> vmlinuz-2.4.20-30.8.legacy
> -rwxr-xr-x    1 root     root      2496380 Dec 12  2002
> vmlinuz-2.4.18-19.8.0uml
> -rw-r--r--    1 root     root      1122342 Feb 20  2004
> vmlinuz-2.4.20-30.8.legacy
> -rw-r--r--    1 root     root      1208342 Feb 20  2004
> vmlinuz-2.4.20-30.8.legacybigmem
> -rw-r--r--    1 root     root       852938 Feb 20  2004
> vmlinuz-2.4.20-30.8.legacyBOOT
> -rw-r--r--    1 root     root      1206648 Feb 20  2004
> vmlinuz-2.4.20-30.8.legacysmp
>

HTH=20

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
