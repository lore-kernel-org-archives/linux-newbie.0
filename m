From: Eric Bambach <eric@cisu.net>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 10:40:01 -0500
Message-ID: <200504141040.02011.eric@cisu.net>
References: <200504142239.24316.wheds8@ms66.hinet.net>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504142239.24316.wheds8@ms66.hinet.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Ssh is the de facto standard for remote administration but It lacks the=
=20
ability to give you a GUI interface. SSH Is quick and dirty remote=20
administration and comes standard (or should ) on all Unix variants.=20
(openssh.com)

TightVNC is a rather "unrobust" remote X server but it gets the job don=
e. This=20
will let you connect remotely and get an X GUI session open.

If you can afford it, try to look into NXMachine (No Machine) remote=20
administration. It offers very robust and configurable remote X server=20
connections that are compressed and secured. This can be used over low=20
bandwidth connections because it uses caching and compression. As far a=
s I=20
remember, they offer single user single machine trial liscenses so you =
can=20
test drive the technology before buying and I dont think that the licen=
ses=20
are terribly expensive.

HTH!

On Friday 15 April 2005 12:39 am, S. Barret Dolph wrote:
> I would like to be able to do some admin stuff on our school computer=
s from
> home. What is best way to do this? Are programs such as "Webmin" bett=
er
> than remote logins or just different. The administrative tasks are us=
ually
> more school administration than computer administration but not alway=
s just
> that. For example, I am now working on getting chinese input on our s=
chool
> computer. School administration work is usually just things like upda=
ting
> documents and making sure that the latest materials are available to =
them.
>
> Cordially,
> S. Barret Dolph
> Taipei Taiwan
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
