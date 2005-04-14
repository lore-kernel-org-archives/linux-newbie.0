From: Eric Bambach <eric@cisu.net>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 16:02:15 -0500
Message-ID: <200504141602.15453.eric@cisu.net>
References: <200504142239.24316.wheds8@ms66.hinet.net> <200504141040.02011.eric@cisu.net> <20050415074715.5845d80b.qwms-avib@dea.spamcon.org>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050415074715.5845d80b.qwms-avib@dea.spamcon.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: qwms-avib@dea.spamcon.org
Cc: hgf4-wgsm@dea.spamcon.org, Linux-Newbie <linux-newbie@vger.kernel.org>

On Thursday 14 April 2005 02:47 pm, qwms-avib@dea.spamcon.org wrote:
> Eric Bambach wrote:
> > Ssh is the de facto standard for remote administration
> > but It lacks the ability to give you a GUI interface.
>
> Getting a GUI interface for ssh is easy.  Simply start
> ssh from an xterm, login to the remote server and execute
> xterm.  This will cause a remote xterm to appear on your
> local X display.
>
> Instead of a remote xterm, you can start a remote
> window manager (or other X application) the same way.

Hehe, I stand corrected. I suppose *I* usually think of it as more of a=
=20
console administration app. Anyways, this is not a good solution if you=
 are=20
logging in from a windows or "other" OS based machine. You would have t=
o=20
install a local X-server which may or may not be practical or useful.

Additionally, as others pointed out you can tunnel X connections over S=
SH.=20
While this is true the X protocol by itself is quite heavy and lag and=20
interactivity will be less than spectacular on anything less than 10Mbi=
t.=20
This is why I suggested NX Server for GUI administration because it doe=
s some=20
quite spectacular compression and caching I havent seen in other projec=
ts=20
(though I admit I havent done alot of diggin on the subject, only raw X=
,=20
lbxproxy, ssh compression, and VNC each of which has its own caveats)
> Cheers,
> Steven
>
>
>
>
>
>
> ____________________________
> http://www.basiclinux.com.ru
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

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
