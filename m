From: Beolach <beolach@comcast.net>
Subject: Re: inittab
Date: Wed, 31 Mar 2004 21:24:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <406B9967.40803@comcast.net>
References: <406AA2BA.7020209@arrakis.es> <406B96A0.9080107@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <406B96A0.9080107@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 
Cc: Andrew Langdon-Davies <ald2@arrakis.es>, linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On other thing I want to mention: the way you have it now, you're
running the `XFree86 -query 192.168.0.1 :1 vt08` command on all
runlevels 1-5, you may only want to run it on runlevel 4 (Slackware's X
runlevel).

If you do only want it on runlevel 4, change the inittab line to:
c7:4:respawn:/usr/X11/bin/XFree86 -query 192.168.0.1 :1 vt08

Good luck,
Conway S. Smith

Beolach wrote:
> Andrew Langdon-Davies wrote:
>
>>>Good morning,
>>>
>>>Following is from /etc/inittab on a client running Slackware-9.0.
>>>
>>># These are the standard console login getties in multiuser mode:
>>>c1:1235:respawn:/sbin/agetty 38400 tty1 linux
>>>c2:1235:respawn:/sbin/agetty 38400 tty2 linux
>>>c3:1235:respawn:/sbin/agetty 38400 tty3 linux
>>>c4:1235:respawn:/sbin/agetty 38400 tty4 linux
>>>c5:1235:respawn:/sbin/agetty 38400 tty5 linux
>>>c6:12345:respawn:/sbin/agetty 38400 tty6 linux
>>>c7:12345:respawn:/usr/X11/bin/XFree86 -query 192.168.0.1 :1 vt08
>>>
>>>The last line is added by me. Sure enough, I get a display on vt08 from
>>>the server, which is running Mandrake-9.2. So far, so good. The two
>>>things I cannot work out, however many times I re-read man inittab, are
>>>1. How do I stop the local X system from giving me a login screen? (it
>>>comes up on vt02)
>
>
> Assuming you actually do want to have X running, but only want to login
> screen to be on the remote system & not the local, edit /etc/rc.4 so
> that you don't start [kgx]dm on the local machine.
>
>
>>>2. Why have I not got any text consoles? (they are all just black with a
>>>blinking cursor).
>>>Thank-you all very much in advance,
>>>Andrew
>>>
>
>
> You actually do have text consoles, just not on vt's 1-5.  If you want
> these text consoles, change your inittab to something like this:
>
> # These are the standard console login getties in multiuser mode:
> # consoleN:runlevels:what_to_do_on_exit:program_to_run_and_options
> c1:12345:respawn:/sbin/agetty 38400 tty1 linux
> c2:12345:respawn:/sbin/agetty 38400 tty2 linux
> c3:12345:respawn:/sbin/agetty 38400 tty3 linux
> c4:12345:respawn:/sbin/agetty 38400 tty4 linux
> c5:12345:respawn:/sbin/agetty 38400 tty5 linux
> c6:12345:respawn:/sbin/agetty 38400 tty6 linux
> c7:12345:respawn:/usr/X11/bin/XFree86 -query 192.168.0.1 :1 vt08
>
> HTH,
> Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFAa5lnGL3AU+cCPDERAlC1AJ9xx9YTH270JxuASORzhYF5Ns1XhgCcDWdj
1j6LSWishzdTdHUnzIVxuFE=
=FLV4
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
