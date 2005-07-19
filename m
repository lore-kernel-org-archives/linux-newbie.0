From: AD Marshall <admarshall@gmail.com>
Subject: [Solution] how-to: one command for repeat OR iterate shell OR bash command delay OR interval
Date: Tue, 19 Jul 2005 10:24:34 +0700
Message-ID: <200507191024.36528.admarshall@gmail.com>
References: <200507171157.35066.admarshall@gmail.com> <200507171307.46798.admarshall@gmail.com> <200507171316.10728.admarshall@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200507171316.10728.admarshall@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org
Cc: John Kelly <bilbo@waitrose.com>

I worked out a cheap, if buggy, hack for what i wanted this morning. =A0=
But thanks all the same... =A0

In case you're interested:

am@[sh]$ rewatch 2 'cat /proc/loadavg'
0.51 0.36 0.65 1/121 9072 09:56:08
0.51 0.36 0.65 1/121 9083 09:56:10
0.47 0.36 0.65 1/121 9088 09:56:13

am@[sh]$ rewatch 2 'cat /proc/loadavg' 'mozilla' | tee rewatch-mozilla
0.43 0.35 0.65 1/121 9100 09:56:20
am =A0 =A0 =A0 32106 =A00.0 =A00.3 =A0 3832 =A0 988 ? =A0 =A0 =A0 =A0S =
=A0 =A007:37 =A0 0:00 /bin/sh /usr/bin/mozilla
am =A0 =A0 =A0 32112 10.0 25.7 141688 66084 ? =A0 =A0 =A0 =A0Sl =A0 07:=
37 =A013:54 /opt/mozilla/lib/mozilla-bin
0.40 0.34 0.64 3/121 9109 09:56:22
am =A0 =A0 =A0 32106 =A00.0 =A00.3 =A0 3832 =A0 988 ? =A0 =A0 =A0 =A0S =
=A0 =A007:37 =A0 0:00 /bin/sh /usr/bin/mozilla
am =A0 =A0 =A0 32112 10.0 25.7 141688 66092 ? =A0 =A0 =A0 =A0Sl =A0 07:=
37 =A013:54 /opt/mozilla/lib/mozilla-bin

am@[sh]$ cat ~/bin/rewatch
#!/bin/sh
# rewatch, v. 0.01
#
# Usage: rewatch <n> <cmdline> [process-to-watch]
# =A0 n: seconds between repetitions
# =A0 cmdline: command-line to repeat
# =A0 process-to-watch: process for which "ps aux" info is to be displa=
yed
#
# Purpose: repeat and, optionally, watch and record the "ps aux" info o=
f
# that or any other process
#
# Bkgd: original purpose was to be able to input a command-line (in sin=
gle
# quotes) along with an interval in seconds for its repetion and print =
a
# list of its stdouts labelled by the times they were printed until <Ct=
rl-c>
# is hit, and be able to capture all the output to stdout or a file.
#
# initial use was for watching and recording load averages as programs =
were
# loaded, eg, "re_watch 2 'cat /proc/loadavg' konqueror"
#
# Future: unknown
#
# Known Bugs: no input validation or user feedback for input errors
#
# Of course, bash operators will have to be properly quoted or escaped =
or
# not... -- which i still don't clearly understand

n=3D$1
cmdline=3D$2
proc2watch=3D$3

if test -z "$3"

then
=A0 while true ; do echo $( $cmdline && echo "$( date +%H:%M:%S )" ) ; =
sleep $n ; done

else

while true ; do echo $( $cmdline && echo "$( date +%H:%M:%S )" ) ; echo=
 "$( ps aux | grep -vE "(rewatch |grep |tee )" | grep $proc2watch )" ; =
sleep $n ; done

fi
am@[sh]$


On Sunday 17 July 2005 13:16, AD Marshall wrote:
> my apologies, if necessary.  but it's way past lunchtime in saigon an=
d
> i'm STARVING.  i'll check back later.  thanx again. - best, andi
>=20
> On Sunday 17 July 2005 13:07, AD Marshall wrote:
> > On Sunday 17 July 2005 12:35, John Kelly wrote:
> > > Hi,
> > > On Sun, 17 Jul 2005 11:57:34 +0700
> > > AD Marshall <admarshall@gmail.com> wrote:
> > >=20
> > > > Is there already one bash command to do what the following scri=
pt
> > > > does (poorly or incompletely), ie repeat "command" indefinitely
> > > > every "x" seconds:
> > > >=20
> > > > #!/bin/sh
> > > > # usage: repeat [x] <command>
> > > > while true ; do $2 ; sleep $1 ; done
> > > >=20
> > > > < rest deleted >=20
> > >=20
> > > The watch command might tbe what you want.
> > > Or maybe not, if you don't want anything output to screen.
> > > =20
> > > Try man watch for details.
> > >=20
> > <cut>
> > Ya.  Thanks.  I'd (long) forgotten about "watch". =20
> >=20
> > but, actually, i should be more specific. what i'm trying to do is=20
> > something like this -- though i'm screwing up on quoting or somethi=
ng
> >=20
> > am@[~]$ repeat 2 "echo $(cat /proc/loadavg ; date +%H:%m:%S)"
> > 0.05 0.14 0.24 6/127 27711 12:07:29
> > 0.05 0.14 0.24 6/127 27711 12:07:29
> > 0.05 0.14 0.24 6/127 27711 12:07:29
> >=20
> > as you can see, only one instance of load average and time are repe=
ated.
> > i want a running record that can be redirected to a file
> >=20
> > i just tinkered with backslashes, back-quotes, double-quotes and=20
> > single-quotes, but all the quoting stuff still confuses me.
> >=20
> > and, imho, i would have thought someone would have written a simple=
=20
> > tool to do this ages ago.  no?
> >=20
> > thanx again,
> > andi
> >=20
>=20

--=20
AD Marshall
Tel:  +84 (0)903871313
eM:   admarshall@gmail.com
Web:  http://h0lug.sourceforge.net
Zone: ICT (IndoChina Time; GMT/UTC+7)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
