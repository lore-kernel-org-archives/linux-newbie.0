From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Remote X
Date: Thu, 15 Apr 2004 11:26:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407ED3EA.4010704@bcgreen.com>
References: <004501c41fce$712216c0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004501c41fce$712216c0$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: =?ISO-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>, linux-newbie@vger.kernel.org

=46irst thing to note here, is a bit of nomenclature.
=46or X windows, the server is the machine with the DISPLAY
The client is the one running the program.

I"m going to presume here, that the Linux box is
supposed to be the server.

=46irst of all, you need to make sure that the Linux box
is allowing connections from the remote machine. If you've
already started a window manager (looks like you're using
windowmaker,) you do NOT need to start it again from the PC,
but you DO need to provide access to the PC from the Linux server

if you have a local xterm running on the PC, try going:

   xhost + 192.168.0.2

(presuming that this is the address of the PC).  This is the
most INsecure way of doing this (read up on xauth for a better way),
but it's OK for testing.

if you want to be *really* insecure,
	xhost +

will allow ANY machine which can get packets to your box to open
up a connection.



On the PC, try something simpler than another windowing program, like
an xterm, or xclock....

xclock -display 192.168.0.1:(a)

[ I'm presumimg that (a) is replaced by a number...]

Note: if you really want to start windowmaker from the PC,
then you should NOT be starting it on the Linux box... You don't
want  two window managers running at the same time on one (virtual)
display.


Juan Facundo Su=E1rez wrote:
>  Hi all.
>=20
>  I am trying to set up a remote X conection. And i am reading about X=
=46ree86.
> I will tell you what i understood, and you tell me if i am wrong.
>  I did some tests in my pc. i have started two or more Xfree86 server=
 like
> this:
>=20
>  $:XFree86 :(a) vt(b)
>=20
>  and after that, run wmaker like this:
>=20
>  $:wmaker -display :(a)
>=20
>  and it worked fine. I think i can do something like this, but runnin=
g
> wmaker in another pc on my lan, like:
>=20
>  $:wmaker -display 192.168.0.1:(a)
>=20
>  where 192.168.0.1 is the ip from machine where i started XFree86. I =
think
> this shoud start wmaker any pc from my lan, working in host 192.168.0=
=2E1. Is
> this correct?, or need to change something?. what is it?.
>=20
>  Besides, i know about VNC. I have tried it, and it is great how it w=
orks
> windo$/linux platforms crossover. But, if you know about any other wa=
y to
> make remotes X sessions, please, tell me. I will ask you, too, about =
any
> window$ X client to work with Xfree86, if there is any.
>=20
>  Thaks !!
>=20
>      _____
>     / ___/
>    / /_  ____    ____   ____    Facundo Su=E1rez - facundo.suarez@ens=
i.com.ar
>   / __/ / __ \  / ___\ / __ \   Instrumentos - ENSI SE
>  / /   / /_/ / / /___ / /_/ /   Arroyito - Argentina
> /_/    \_____\ \____/ \____/    Usuario Registrado Linux
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


--=20
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
