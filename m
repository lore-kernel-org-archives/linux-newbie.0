From: Beolach <beolach@comcast.net>
Subject: Re: Remote X
Date: Tue, 13 Apr 2004 10:59:36 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407C1C78.4090403@comcast.net>
References: <000c01c42167$57da7820$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000c01c42167$57da7820$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I've never done this, so I don't have much info for you.  But the one
thing I can think of, is you might want to make sure you are using
cygwin/X, not just cygwin.  cygwin is just a port of the standard *nix
console commands (ls, cp, cat, dd, etc.), whereas cygwin/X adds a port
of the X Window System, including an X Server.  For more info see
<http://x.cygwin.com/>.

Also note there a probably several other M$ Windows X Servers out there=
,
but I personally have never used any, so I can't recommend one over any
other.

Good luck,
Conway S. Smith

Juan Facundo Su=E1rez wrote:
> Hi, i could do it. I am really happy about that.
>
>  Now, what i need is to connect a window$ machine, as an X server, to=
 a
> session / window manager on a remote linux machine. I have heared abo=
ut
> cygwin / winx32. I am trying cygwin, but i dont understand how to set
it up,
> to use it, as an X server. Running the cygwin application, it opens
> something too much like an "xterm". I can run many linux commands in
there.
> I tried to "XFree86" or "startx" commands, but nothing. Have i instal=
l
an x
> server on cygwin to make it work?. Any help?.
>
>  Besides, i will try xwin32 too. If anyone can tell me something to "=
take
> care" for using it, or any help, i will be very thaks.
>
>  See you !
>
<snip>
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)

iD8DBQFAfBx3GL3AU+cCPDERAtYuAKDdTUsYHPx6anncsBCEuLIXxWgfPgCaA2qy
C8DzqvJ88i/QWyUiORWkU98=3D
=3DRi9v
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
