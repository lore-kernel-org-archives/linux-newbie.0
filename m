From: Eric Bambach <eric@cisu.net>
Subject: Re: Linux Display silly question
Date: Wed, 23 Mar 2005 08:19:58 -0600
Message-ID: <200503230819.58307.eric@cisu.net>
References: <4EE0CBA31942E547B99B3D4BFAB348113F4FA1@mail.esn.co.in>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB348113F4FA1@mail.esn.co.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

On Wednesday 23 March 2005 06:39 am, Mukund JB. wrote:
> Hi all,
>
> I am very new to the GUI thing. I don't know how it works.
> I just have base Linux kernel running on an EBD9312 ARM Embedded Boar=
d
> with Linux Prompt working & no display.
>
> Now, I want to provide GUI support to the existing Linux. Now I just
> want to know are there any kernel modules that the kernel should have=
 to
> support the GUI?
> The framebuffer driver is already active. I have NO X server on the
> machine because of memory constraints.

Sounds reasonable, especially for an embedded system. If you have at le=
ast 16M=20
you can make it work though. Just try a lightweight window manager like=
=20
enlightenment instead of kde or gnome, then you will have ALOT less=20
compatibility problems.

> I have gone through a lot of Maillists which say I need to some GUI
> Library or tools like
>
>  GtkFB - does NOT use X11
>  Qt/Embedded - Direct Framebuffer access and so on.
>
> I have a very basic doubt here. I mean how I can launch the GUI
> Application when there is no UI (NO X server).
> I think there will be an intermediate desktop like thing which I am
> missing from where I can launch my application. Is there any thing li=
ke
> that for an ARM embedded system.

This has been discussed on the list before, (running GUI or GUI-like ap=
ps w/o=20
X-server) just not on the ARM embedded architecture. You dont need any =
kernel=20
modules per-se everything you want to accomplish is in userspace. As lo=
ng as=20
framebuffer is working don't touch the kernel ;)

It sounds like you are coming from the windows world if you think you n=
eed to=20
click an icon to make a GUI work. I haven't used those libraries per-se=
, but=20
as long as you provide mouse and toolkit support you can launch firefox=
 (for=20
example if it supports Qt/Embedded) just by typing it in. As the prompt=
 you=20
will type
my-app

and if you install the proper support libraries it will use the framebu=
ffer=20
for rendering instead of the X server. This all depends on the applicat=
ion=20
though. Since the majority of "GUI" apps are designed for X, then you m=
ay run=20
into odd compatibility problems when not running them in X.

You are on the right track, keep reading those mailing lists, install t=
he=20
libraries, find a compatible program and run it!=20
user@embedded #my-app

> Please help to understand this?
>
> Regards,
> Mukund jampala

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
