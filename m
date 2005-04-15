From: "J." <mailing-lists@xs4all.nl>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 19:16:03 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0504151853090.842-100000@hestia>
References: <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
Reply-To: linux-newbie <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
Content-ID: <Pine.LNX.4.21.0504151853092.842@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

On Fri, 15 Apr 2005, James Miller wrote:

> I tried your perl script and it works really well, Flemming. Thanks f=
or=20
> bringing it to my attention. I see it works for all files in a given=20
> directory--exactly what I need. Now, in place of something like
>=20
> Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ S=
trings\ In\ D\ Major\,\ Op.565\,\ G411\ -.\ Andante\ Come\ Prima.mp3
>=20
> I get
>=20
> Patrick_Cohen__and__Mosaiques_Quartet_-_Quintet_For_Piano__and__Strin=
gs_In_D_Major._Op.56=A3=AF5._G411_-=A5=B2._Andante_Come_Prima.mp3
>=20
> --a big step in the right direction. But I'm still getting some wierd=
=20
> characters in there--=A3=AF and =A5=B2. Are these unicode or somethin=
g?=20

To strip or translate characters that can't be printed properly or aren=
't=20
in your locale `man locale' you can use `tr' [translate] from the=20
command-line, for example translate all non-printable characters with
underscores.
~: tr -sc '![:print:]' '_'
translate a `space' to an underscore
~: tr ' ' '_'
DOS to UNIX newlines:
tr -d '\015' < foo.txt > newfoo.txt

or in combi with other programs..
find . -type d -print | xargs rename 'tr/A-Z/a-z/;'=20

If your translating filenames, from the command-line in a sequence
of events, make sure you use `read', that will help reading non-ascii=20
data. `man ascii'

~: ls -1 | while read FNAME ; do echo ${FNAME} | tr ' ' '_' ; done

Most GNU/Linux distro's come with a standaard program called `rename'
~: rename -h
Usage: rename [-v] perlexpr [filenames]

The Bash shell itself has quite some standard easy & powerfull ways onb=
oard
to achive this, named `parameter expansion':=20
ls -1 *.pdf | while read file ; do ps2ascii $file ${file%%pdf}txt ; don=
e
or..
for file in *.bmp ; do convert $file ${file%.bmp}.png ; done

=46rom the bash manual page:
# remove from end the smallest part from `param'
# that equals `word' and returns the remainder as result.
${param%%word}

There are more ways to expand parameters, ${param#word}, ${param##word}=
,=20
 ${foo:+bar}... Just look in the manual page..

To give an example, in combination with find :
~: find . -name '*.jpg' -print | while read file ; do echo "${file%/*}/=
thumb_${file##*/}" ; done

The unix philosophy is, do one thing and do it good.. Search for `Unix
philosopy' at google to learn more about it. Quite interesting, and wil=
l
give some historical insights and understanding on the command-line.=20

J.

> Anyway, I=20
> can't reproduce these at the command line. Is there any way your scri=
pt=20
> might be made to catch and replace symbols like these as well (I mean=
, for=20
> someone who knows absolutely nothing about Perl, and precious little =
about=20
> scripting in general)? I have no idea what information these symbols =
are=20
> supposed to be representing. It's probably so inconsequential I don't=
 even=20
> need it, so replacing it with virtually any other symbol should suffi=
ce.=20
> I'd say I've got at least 20 files with such symbols, and more are on=
 the=20
> way.
>=20
> Thanks, James

--
Don't worry Ma'am. We're university students, - we know what we're doin=
g.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
