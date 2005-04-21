From: Eric Bambach <eric@cisu.net>
Subject: Re: sound card problem
Date: Wed, 20 Apr 2005 23:22:51 -0500
Message-ID: <200504202322.51831.eric@cisu.net>
References: <00a701c54610$9932c6f0$4a071aac@autocadmachine1> <426709C9.6090507@comarre.com> <014d01c54627$2d1de550$4a071aac@autocadmachine1>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <014d01c54627$2d1de550$4a071aac@autocadmachine1>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: ymc014 <ymc014@ymc.mitsumi.co.jp>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 20 April 2005 11:04 pm, ymc014 wrote:
> Hello,
>
>     I really apologize for not informing in advance that this is the =
first
> time I've used linux,I've been using windows through the years,from w=
indows
> 95 up to windows XP(my OS before I've decided to switch to Linux) so =
I do
> not really know what is "modprobe sb","lspci-vv" etc.,=20

What Ray means is to type in these commands at a console. In KDE you ca=
n look=20
for the program konsole. This will give you a command console similiar =
to a=20
DOS command prompt (But infinitely more powerful ;). You have to do the=
se as=20
the root user. That means when you open the (c/k)onsole, you must type =
'su'=20
and it will ask you for the root password that you specified at install=
 time.=20
If you lack konsole, all distributions will let you push CTRL-ALT-F1 an=
d you=20
will get a raw login console. Username root and your password will let =
you=20
then type in the commands Ray Specified.
=46urthermore, lacking konsole, you can try the program 'xterm' for the=
 same=20
results. Remeber to type these as the root user or you lack enough=20
permissions to get things done!

I hope that lets you start on Ray's advice!

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
