From: Alan Bort <333101@personal.net.py>
Subject: Re: disabling X display Manager
Date: 11 Jun 2003 18:58:12 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1055347092.31273.8.camel@Gandalf>
References: <20030611.160313.-280611.0.matthewstapleton@juno.com>
	 <200306112230.02595.pa3gcu@zeelandnet.nl>
Reply-To: 333101@personal.net.py
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306112230.02595.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: pa3gcu@zeelandnet.nl
Cc: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

search on google for advanced bash scripting guide. It's abut 400 pages
and It's REALLY GOOD. I'm reading it... it has many sample script and
everything..

El mi? 11-06-2003 a las 23:30, pa3gcu escribi=F3:
> On Wednesday 11 June 2003 22:03, Matthew Stapleton wrote:
> > Hello,
> >
> > When I boot into linux (I have a dual boot system) the XDM is
> > automatically started.  What file or files do I need to modify in o=
rder
> > to disable this? Is there a linux equivalent to DOS's autoexec.bat?
>=20
> Depends on which distor you use, in slackware you edit /etc/inittab a=
nd make=20
> the default runlevel 3 as in;
>=20
> id:3:initdefault:
>=20
> Its around line 24 of the file.
>=20
> Some other distros work the same, last time i commented on this it se=
emed some=20
> distos do it in other ways, i am sure the users of those distros will=
 comment=20
> and help you further on your way.
>=20
> Your other question is a script file with executable permissions, an =
example=20
> would be.
> Create a file called my-first-script,
>=20
> #!/bin/sh
>=20
> /bin/echo "This is my first try at a script..."
>=20
> /bin/date
>=20
> /bin/echo "That is tdays date"
>=20
> close file, change permissions;
> chmod a+x my-first-script
> Now type ./my-first-script
>=20
> There is a man page for this sort of thing,=20
> man bash
>=20
> > Thanks,
> > Matthew Stapleton
> > %%%%%%%%%%%%%%%%%%
> > http://webpages.marshall.edu/~staple12
> > %%%%%%%%%%%%%%%%%%
--=20
Alan Bort
Linux Registered User 298277 -Country Manager- [http://counter.li.org]
[ http://www.linuxquestions.org ] Username: Ciccio
[ http://es.tldp.org ]
Ciccio.-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
