From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: RE: Remote X
Date: Tue, 13 Apr 2004 11:55:20 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000c01c42167$57da7820$680410ac@pcinstru1>
References: <407AD3BE.7080301@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <407AD3BE.7080301@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi, i could do it. I am really happy about that.

 Now, what i need is to connect a window$ machine, as an X server, to a
session / window manager on a remote linux machine. I have heared about
cygwin / winx32. I am trying cygwin, but i dont understand how to set i=
t up,
to use it, as an X server. Running the cygwin application, it opens
something too much like an "xterm". I can run many linux commands in th=
ere.
I tried to "XFree86" or "startx" commands, but nothing. Have i install =
an x
server on cygwin to make it work?. Any help?.

 Besides, i will try xwin32 too. If anyone can tell me something to "ta=
ke
care" for using it, or any help, i will be very thaks.

 See you !

| -----Mensaje original-----
| De: linux-newbie-owner@vger.kernel.org
| [mailto:linux-newbie-owner@vger.kernel.org]En nombre de Beolach
| Enviado el: Lunes, 12 de Abril de 2004 02:37 p.m.
| Para: Juan Facundo Su=E1rez
| Cc: linux-newbie@vger.kernel.org
| Asunto: Re: Remote X
|
|
| -----BEGIN PGP SIGNED MESSAGE-----
| Hash: SHA1
|
| That's correct.  The only step you left out, is you need to tell the
| XServer to allow the remote computer to display on the
| XServer, with xhost.
|
| For example:
|
| host1$:XFree86 :(a) vt(b)
| host1$:xhost +host2
|
| host2$:wmaker -display host1:(a)
|
| HTH,
| Conway S. Smith
|

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
