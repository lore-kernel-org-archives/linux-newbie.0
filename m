From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Skype and more
Date: Wed, 30 Mar 2005 20:19:57 +0200
Message-ID: <200503302019.57442.pa3gcu@zeelandnet.nl>
References: <200503300719.j2U7JtHw001378@skyinet.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200503300719.j2U7JtHw001378@skyinet.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Wednesday 30 March 2005 09:19, Peter wrote:
> Hi,
>
> Slackware 10.1 kernel 2.4.29
>
> Sometime ago I reported that skype would not open and at the same tim=
e
> after I had reinstalled slackware 10, xine and totem did not open any=
more.
> Richard Adams then suggested to reinstall slackware w/o the old /usr/=
local
> and /home mounted, instead mount them after the installation.

I suggested to you to install slack again without using you old /usr/lo=
cal=20
and /home dir=B4s to prove a point, the point i pointed out to you in a=
 couple=20
of previous mails, i am sure they can be found in google groups, i ment=
ioned=20
two things, one is the order of /etc/ld.so.conf and installing programs=
=20
yourself and possably unknowingly installing them in /usr/local/ .

>
> Well that worked only until I installed additional programs such as e=
fax
> after which neither skype nor the other 2 mentioned programs would no=
t open
> again
>
> When slackware is installed it puts a number of library paths into
> /etc/ld.so.conf. This list is headed by /usr/local/lib. Now I found t=
hat
> this positioning was the cause of the problems. If I put /usr/local/l=
ib at
> the end of the list all programs open properly and I can install furt=
her
> new programs w/o any change, meaning all programs keep on opening pro=
perly.
> If I just deactivate /usr/local/lib then naturally programs looking a=
t that
> path will not open such as siag.

The order of /etc/ld.so.conf is of course important, slackware has it (=
i=20
belive) in that order because slackware does not have RPMs slackers ins=
tall=20
tarballs now in a tarball full of source code there is 99% of the time =
a=20
program called configure supplied, one runs ./configure and all execute=
ables=20
and libs get installed into /usr/local, remember one thing if we have x=
ine=20
installed and slackware does have it installed in /usr/bin and libs=20
in /usr/lib we can expect problems for the simple reason we have 2 sets=
 of=20
libs and 2 sets of exectuables for ONE program in our $PATH .
To get around that so called problem ./configure has lots (and i mean) =
lots of=20
options, like
--bindir=3DDIR            user executables in DIR [EPREFIX/bin]
--libdir=3DDIR            object code libraries in DIR [EPREFIX/lib]

There are around 60 different options.

If you had used something like

=2E/configure --bindir=3Dusr/bin --libdir=3D/usr/lib

Then xine would have been installed into /usr/bin and would have overwr=
itten=20
the version installed by slackware at install time, if you install anot=
her=20
verion into /usr/local* then you will confuse your system and most=20
importantly yourself.

Now haing said that the chances are that a lib whcih got installed by o=
ne of=20
the two programs into /usr/local/lib was incompatable with skype hence =
skype=20
fails to open.

>
> I just thought I will let the list know in case others have similar
> experiences, there was one in skype forum.

I tryed to explain this to you in our private comverstaion emails, it s=
eems i=20
failed. I will try better next time.

>
> Regards

--
My sig used to be here.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
