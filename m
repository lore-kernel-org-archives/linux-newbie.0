From: Peter <heisspf@skyinet.net>
Subject: Re: Skype and more
Date: Thu, 31 Mar 2005 09:44:11 +0800
Message-ID: <20050331094411.1b690094@skyinet.net>
References: <200503300719.j2U7JtHw001378@skyinet.net>
	<200503302019.57442.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200503302019.57442.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: pa3gcu@zeelandnet.nl
Cc: linux <linux-newbie@vger.kernel.org>

On Wed, 30 Mar 2005 20:19:57 +0200
Richard Adams <pa3gcu@zeelandnet.nl> wrote:

> On Wednesday 30 March 2005 09:19, Peter wrote:
> > Hi,
> >
> > Slackware 10.1 kernel 2.4.29
> >
> > Sometime ago I reported that skype would not open and at the same t=
ime
> > after I had reinstalled slackware 10, xine and totem did not open a=
nymore.
> > Richard Adams then suggested to reinstall slackware w/o the old /us=
r/local
> > and /home mounted, instead mount them after the installation.
>=20
> I suggested to you to install slack again without using you old /usr/=
local=20
> and /home dir=B4s to prove a point, the point i pointed out to you in=
 a couple

> of previous mails, i am sure they can be found in google groups, i me=
ntioned

> two things, one is the order of /etc/ld.so.conf and installing progra=
ms=20
> yourself and possably unknowingly installing them in /usr/local/ .
>=20
> >
> > Well that worked only until I installed additional programs such as=
 efax
> > after which neither skype nor the other 2 mentioned programs would =
not
open
> > again
> >
> > When slackware is installed it puts a number of library paths into
> > /etc/ld.so.conf. This list is headed by /usr/local/lib. Now I found=
 that
> > this positioning was the cause of the problems. If I put /usr/local=
/lib at
> > the end of the list all programs open properly and I can install fu=
rther
> > new programs w/o any change, meaning all programs keep on opening
properly.
> > If I just deactivate /usr/local/lib then naturally programs looking=
 at
that
> > path will not open such as siag.
>=20
> The order of /etc/ld.so.conf is of course important, slackware has it=
 (i=20
> belive) in that order because slackware does not have RPMs slackers i=
nstall=20
> tarballs now in a tarball full of source code there is 99% of the tim=
e a=20
> program called configure supplied, one runs ./configure and all execu=
teables

> and libs get installed into /usr/local, remember one thing if we have=
 xine=20
> installed and slackware does have it installed in /usr/bin and libs=20
> in /usr/lib we can expect problems for the simple reason we have 2 se=
ts of=20
> libs and 2 sets of exectuables for ONE program in our $PATH .
> To get around that so called problem ./configure has lots (and i mean=
) lots
of=20
> options, like
> --bindir=3DDIR            user executables in DIR [EPREFIX/bin]
> --libdir=3DDIR            object code libraries in DIR [EPREFIX/lib]
>=20
> There are around 60 different options.
>=20
> If you had used something like
>=20
> ./configure --bindir=3Dusr/bin --libdir=3D/usr/lib
>=20
> Then xine would have been installed into /usr/bin and would have over=
written

> the version installed by slackware at install time, if you install an=
other=20
> verion into /usr/local* then you will confuse your system and most=20
> importantly yourself.
>=20
> Now haing said that the chances are that a lib whcih got installed by=
 one of

> the two programs into /usr/local/lib was incompatable with skype henc=
e skype

> fails to open.
>=20
> >
> > I just thought I will let the list know in case others have similar
> > experiences, there was one in skype forum.
>=20
> I tryed to explain this to you in our private comverstaion emails, it=
 seems
i=20
> failed. I will try better next time.

I don't think you failed. I understood what you said, except it did not=
 fully
work that way. I have to correct myself when I mention xine I actually =
meant
gxine which was installed by slackware. I never had xine in /usr/local.=
 Xine
was actually automatically replaced by gxine if i remember right. I ins=
talled
slackware 3 times following your proposal mounting the old /usr/local l=
ater.
However each time I then installed another program, not a *.gz into
/usr/local but rpm2tgz, skype, gxine and totem failed to open until I
found my solution. And every time I move /usr/local/lib to the top in
/etc/ld.so.conf I get the same effect, programs won't open. Then disabl=
ing it
the programs open. So back down to the bottom of the list.

I have not tried un-installing skype and see if then gxine and totem wi=
ll open
with /usr/local/lib on the top. Since all works fine now I will not try=
=2E=20

 ----
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
