From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: Query regarding Copy-on-write
Date: Tue, 23 Nov 2004 09:45:30 +0545
Message-ID: <652016d304112220001db8bd20@mail.gmail.com>
References: <1100947162.4038.43.camel@myLinux> <419F4DA7.1070606@ieee.org>
	 <1101094465.3783.19.camel@myLinux> <41A187A6.4000300@ieee.org>
	 <1101106158.4527.14.camel@myLinux> <41A1D1F0.40109@ieee.org>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41A1D1F0.40109@ieee.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: Simon Valiquette <v.simon@ieee.org>, linux-newbie@vger.kernel.org

On Mon, 22 Nov 2004 06:48:00 -0500, Simon Valiquette <v.simon@ieee.org>=
 wrote:
> Jagadeesh Bhaskar P a =E9crit :
> >
> >>and also made a minimalist OS for a MC68000 microcontroler
> >>(only basic process support without even support for a filesystem).
> >
> >
> >
> > I too want to learn something like a minimalist OS. Where to start
> > digging?
> >
>=20
>   I'm not too sure.  In my case, I started mixing assembly language a=
nd
> Pascal about 15 years ago while quite young.  It really helps :o)
>=20
>   I know there is things likes Nachos, OSP or Minix (yes, that's the
> one used by Linus) for learning how to write operating systems.  I
> personnally prefer a real OS like Hurd, but if you have a teacher or
> someone to assist you, I guess they can be usefull.
>=20
>   To write a real OS, you need to understant how your hardware is
> working and to have the documentation book to know how to program it =
and
> manage it's interruptions.  Beeing efficient in assembly language is =
a
> must, even if you do most of your coding in C language, as it helps y=
ou
> to understand your computer.
>=20
>   A book that might help you saving time, and that I found both very
> informative and interesting is this one:
>=20
>   "Operating systems" from William Stallings, Prentice Hall.
>=20
>   It won't tell you how to code everythings, but it will explain the
> algorithmes and ideas of differents Operating systems for doing simil=
ar
> tasks.  For example, it compares Posix threads with Linux, Windows an=
d
> Solaris threads.  I found it quite complete; it even talk about RAID-=
6,
> and my book is many years old.
>=20
>   Understanding as many OS as possible will certainly helps you
> understanding differents concepts and improve your skills.  OS likes
> Inferno, QNX and Plan 9 are probably good for that.
>=20
>   For going back to your question, once you feel ready, you should
> probably start by trying to write a small OS.  At first, all you will
> need to write is a sheduler, a way to start programs and a way to kil=
l
> them.  Writing something similar to /sbin/init with a couple of built=
-in
> commands (for starting, showing and stoping processes) will also
> simplify things.
>=20
>   Eventually, you could add (or emulate) a file system.  By the way,
> the sheduler should be activated by interruptions, otherwise you will
> just have an improved version of DOS 1.0  ;o)
>=20
> Simon Valiquette
>=20
> ---
> win-nt from the people who invented edlin
> (By mwikholm@at8.abo.fi, MaDsen Wikholm)



=46urthermore,
 There are a lot of resources in the internet. I too started writing
an OS few years back. Those resources were very much helpful.

www.osdev.org
www.nondot.org/~sabre/os
www.mega-tokyo.org/forum
http://my.execpc.com/~geezer/os/
http://mega-tokyo.com/osfaq2/
sources of Linux, Mach, e.t.c.
(google)
http://www.onesmartclick.com/rtos/rtos.html (if you are concerned with =
rtos)

regards manish


--=20
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
