From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: Query regarding Copy-on-write
Date: Mon, 22 Nov 2004 06:48:00 -0500
Message-ID: <41A1D1F0.40109@ieee.org>
References: <1100947162.4038.43.camel@myLinux> <419F4DA7.1070606@ieee.org>
 <1101094465.3783.19.camel@myLinux> <41A187A6.4000300@ieee.org>
 <1101106158.4527.14.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1101106158.4527.14.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Jagadeesh Bhaskar P a =E9crit :
>=20
>>and also made a minimalist OS for a MC68000 microcontroler=20
>>(only basic process support without even support for a filesystem).=20
>=20
>=20
>=20
> I too want to learn something like a minimalist OS. Where to start
> digging?
>=20

   I'm not too sure.  In my case, I started mixing assembly language an=
d=20
Pascal about 15 years ago while quite young.  It really helps :o)



   I know there is things likes Nachos, OSP or Minix (yes, that's the=20
one used by Linus) for learning how to write operating systems.  I=20
personnally prefer a real OS like Hurd, but if you have a teacher or=20
someone to assist you, I guess they can be usefull.


   To write a real OS, you need to understant how your hardware is=20
working and to have the documentation book to know how to program it an=
d=20
manage it's interruptions.  Beeing efficient in assembly language is a=20
must, even if you do most of your coding in C language, as it helps you=
=20
to understand your computer.

   A book that might help you saving time, and that I found both very=20
informative and interesting is this one:

   "Operating systems" from William Stallings, Prentice Hall.

   It won't tell you how to code everythings, but it will explain the=20
algorithmes and ideas of differents Operating systems for doing similar=
=20
tasks.  For example, it compares Posix threads with Linux, Windows and=20
Solaris threads.  I found it quite complete; it even talk about RAID-6,=
=20
and my book is many years old.


   Understanding as many OS as possible will certainly helps you=20
understanding differents concepts and improve your skills.  OS likes=20
Inferno, QNX and Plan 9 are probably good for that.


   For going back to your question, once you feel ready, you should=20
probably start by trying to write a small OS.  At first, all you will=20
need to write is a sheduler, a way to start programs and a way to kill=20
them.  Writing something similar to /sbin/init with a couple of built-i=
n=20
commands (for starting, showing and stoping processes) will also=20
simplify things.


   Eventually, you could add (or emulate) a file system.  By the way,=20
the sheduler should be activated by interruptions, otherwise you will=20
just have an improved version of DOS 1.0  ;o)


Simon Valiquette

---
win-nt from the people who invented edlin
(By mwikholm@at8.abo.fi, MaDsen Wikholm)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
