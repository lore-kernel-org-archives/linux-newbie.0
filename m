From: Beolach <beolach@comcast.net>
Subject: Re: Remote X
Date: Mon, 12 Apr 2004 11:37:02 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407AD3BE.7080301@comcast.net>
References: <004501c41fce$712216c0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004501c41fce$712216c0$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

That's correct.  The only step you left out, is you need to tell the
XServer to allow the remote computer to display on the XServer, with xh=
ost.

=46or example:

host1$:XFree86 :(a) vt(b)
host1$:xhost +host2

host2$:wmaker -display host1:(a)

HTH,
Conway S. Smith

Juan Facundo Su=E1rez wrote:
>  Hi all.
>
>  I am trying to set up a remote X conection. And i am reading about
XFree86.
> I will tell you what i understood, and you tell me if i am wrong.
>  I did some tests in my pc. i have started two or more Xfree86 server=
 like
> this:
>
>  $:XFree86 :(a) vt(b)
>
>  and after that, run wmaker like this:
>
>  $:wmaker -display :(a)
>
>  and it worked fine. I think i can do something like this, but runnin=
g
> wmaker in another pc on my lan, like:
>
>  $:wmaker -display 192.168.0.1:(a)
>
>  where 192.168.0.1 is the ip from machine where i started XFree86. I =
think
> this shoud start wmaker any pc from my lan, working in host
192.168.0.1. Is
> this correct?, or need to change something?. what is it?.
>
>  Besides, i know about VNC. I have tried it, and it is great how it w=
orks
> windo$/linux platforms crossover. But, if you know about any other wa=
y to
> make remotes X sessions, please, tell me. I will ask you, too, about =
any
> window$ X client to work with Xfree86, if there is any.
>
>  Thaks !!
>
>      _____
>     / ___/
>    / /_  ____    ____   ____    Facundo Su=E1rez -
facundo.suarez@ensi.com.ar
>   / __/ / __ \  / ___\ / __ \   Instrumentos - ENSI SE
>  / /   / /_/ / / /___ / /_/ /   Arroyito - Argentina
> /_/    \_____\ \____/ \____/    Usuario Registrado Linux
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)

iD8DBQFAetO7GL3AU+cCPDERAneyAKCd6M38TkFo6c8L62lZfTpVN6Pp5wCgrzap
71FZ/wzqPLE53y/EwLyOUbM=3D
=3DlJon
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
