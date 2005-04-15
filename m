From: Ray Olszewski <ray@comarre.com>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 09:48:46 -0700
Message-ID: <5.1.0.14.1.20050415091414.02008e58@celine>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 10:04 AM 4/15/2005 -0500, James Miller wrote:
>Among various frustrations recently I've had the gratifying success of=
=20
>learning how to use streamripper to augment my music collection.=20
>Streamripper is a program that writes an audio stream (e.g., from inte=
rnet=20
>radio) to your hard drive as an mp3 file. This is about the closest th=
ing=20
>to the mythical "Rivo" (Tivo for radio) that currently exists, I think=
,=20
>and could maybe serve as the basis for a *real* Rivo-type program, sho=
uld=20
>someone really decide to develop one.

 From looking at the streamripper writeup in the Debian packagins syste=
m,=20
I'd say this is less likely than you think. It says the app is limited =
to=20
MP3 and OGG streams, and these seem to be sonsiderably less popular, wi=
th=20
streaming sources, than WMA, RM, and Shoutcast.

>Despite the success, there are some problems--mainly having to do with=
=20
>file names. I've found a nice commercial-free classical (Baroque) stat=
ion=20
>and have been happily recording away for the last 24 hrs or so. The=20
>streamripper program was evidently written for rock or more popular ge=
nres=20
>and tries to detect breaks between songs so as to make discrete files =
from=20
>them. For whatever strange reason, it has a problem detecting beginnin=
gs=20
>and endings between movements in classical music (despite the noticeab=
le=20
>pause) and wants to break between movements about 30 seconds into the =
next=20
>movement, rather than at the pause. The cat command seems to fix this,=
 though:
>
>cat movement1.mp3 >full-piece.mp3
>cat movement2.mp3 >>full-piece.mp3
>cat movement3.mp3 >>full-piece.mp3

>The breaks at 30 seconds into the following movement are hardly even=20
>noticeable in the full-piece.mp3 (I don't have the kind of purist=20
>standards I used to when it comes to audio quality, though).
>
>But, on to file names. unfortunately, the names for the pieces I'm=20
>recording from this station follow Windows long-file-naming convention=
s.=20
>Even worse, the names tend to be quite complex and long. Here are a co=
uple=20
>of examples:
>
>Anton\ Reicha-\ Albert\ Schweitzer\ Quintett\ -\ Wind\ Quintet\ No.9\ =
in\=20
>D\ major\ Op.91\ No.3-\ Finale-\ Allegretto.mp3
>
>Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\=20
>Strings\ In\ D\ Major\,\ Op.56=A3=AF5\,\ G411\ -=A5=B2.\ Andante\ Come=
\ Prima.mp3
>
>Feeding those names to cat so I can join the movements into a single f=
ile=20
>is going to be a major pain in the wazoo, as they say down at symphony=
 hall.

Yeah. This is the sort of setting where point-and-click GUIs really sho=
w=20
their strength. Windows copes with this sort of gobbledygook just fine,=
 and=20
I imagine the heavy-duty Linux GUIs, like KDE and Gnome, do too.

>What I was hoping to find is a script that would automatically convert=
 all=20
>the wierd characters into more standard Unix file-naming characters. B=
ut=20
>so far I've come up empty-handed. Can anyone point me to some utility =
that=20
>might do what I need?

OK. A couple of thing to try ... one candidate app plus 2 workaround=20
possibilities.

1. See if the app "mp3wrap" (that's the Debian-Sid package name) helps =
in=20
any way relevant to your problem.

2. Consider using playlists rather than joining the files. If you use x=
mms=20
for playback, it has a deccent GUI for creating playlists, and it has n=
o=20
problem with the "weird" characters. (This naming standard is also a=20
problem for those of us who rip our own CDs to our hard drives as well,=
 and=20
xmms plus playlists has always handled it for me.)

3. TAB completion is your friend. Using your first example, I bet somet=
hing=20
close to "Anton<TAB>" would complete that entry on the command line. Fr=
om=20
the examples you provided, I can't back out where the movement=20
differentiators are in the names, but such things are typically at the =
end=20
of the name, so you might have to entry just a couple of additional=20
characters to complete.

As to actually changing the names ... the problem is that there is no=20
"Unix-friendly" standard for naming music files; the one you are seeing=
 has=20
pretty much been adopted universally, at least in the MP3 world (probab=
ly=20
due to the standardizing influence of the CDDB servers, but that's just=
 a=20
guess). I know of no off-the shelf script to convert, probably because=20
there is no consensus target for what to convert *to*.

A less targeted solution *might* be to try the app "mmv". (It's just=20
amazing what oddities are lurking around in the Debian packaging system=
=2E) I=20
haven't used it myself, but from the writeup, it might offer you some h=
elp=20
=2E.. though you'll still have to define your own naming convention, so=
 a=20
custom script (see below) may be about as easy.

>As a last resort, I might try to write my own script. I'm not too hot =
on=20
>doing that though, since I'm at an extremely rudimentary level when it=
=20
>comes to script writing. If it comes to that, could someone maybe help=
 me=20
>get started by giving an example for a script that would do the renami=
ng I=20
>want? I'd like to retain the bulk of the information, though I don't m=
ind=20
>truncating words at, say 5 letters. I suppose the main thing would be=20
>replaing all the spaces and/or punctuation with dashes and/or undersco=
res.

Or just omitting spaces (that's how I name my video files, and the resu=
lt=20
is pretty readable if you are strict about capitalizing every word). As=
ide=20
from spaces, the things you need to get rid of are, almost always,=20
ampersand (&), comma (,), and apostrophe ('). Maybe tilde (~) too. Your=
=20
examples above show a couple of truly weird characters (like the Englis=
h=20
pound and Japanese yen symbols, which I don't even know how to type in=20
here), so you may need a bit more capability than this.

This sort of script wouldn't be too tough to write in Perl, just using =
a=20
few tr commands plus the commands to read and mv file names, and probab=
ly a=20
shell script wouldn't be much tougher. If I have time later, I'll try t=
o=20
cobble something together to serve as an example.

>Thanks, James

Do let us know what solution you end up with ... this is an interesting=
=20
problem.

Closing thought ... take a look at

         http://www.classiccat.net/

for another way to acquire (legitimately, as far as I can tell) free MP=
3s=20
of public domain classical recordings. Or try Google; there seems to be=
 a=20
lot of this stuff around.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
