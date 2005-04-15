From: James Miller <jamtat@mailsnare.net>
Subject: convert windows file names
Date: Fri, 15 Apr 2005 10:04:02 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-643839312-1113577442=:5717"
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-643839312-1113577442=:5717
Content-Type: TEXT/PLAIN; charset="en_US.UTF-8"; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Among various frustrations recently I've had the gratifying success of=20
learning how to use streamripper to augment my music collection.=20
Streamripper is a program that writes an audio stream (e.g., from internet=
=20
radio) to your hard drive as an mp3 file. This is about the closest thing=
=20
to the mythical "Rivo" (Tivo for radio) that currently exists, I think,=20
and could maybe serve as the basis for a *real* Rivo-type program, should=
=20
someone really decide to develop one.

Despite the success, there are some problems--mainly having to do with=20
file names. I've found a nice commercial-free classical (Baroque) station=
=20
and have been happily recording away for the last 24 hrs or so. The=20
streamripper program was evidently written for rock or more popular genres=
=20
and tries to detect breaks between songs so as to make discrete files from=
=20
them. For whatever strange reason, it has a problem detecting beginnings=20
and endings between movements in classical music (despite the noticeable=20
pause) and wants to break between movements about 30 seconds into the next=
=20
movement, rather than at the pause. The cat command seems to fix this,=20
though:

cat movement1.mp3 >full-piece.mp3
cat movement2.mp3 >>full-piece.mp3
cat movement3.mp3 >>full-piece.mp3

The breaks at 30 seconds into the following movement are hardly even=20
noticeable in the full-piece.mp3 (I don't have the kind of purist=20
standards I used to when it comes to audio quality, though).

But, on to file names. unfortunately, the names for the pieces I'm=20
recording from this station follow Windows long-file-naming conventions.=20
Even worse, the names tend to be quite complex and long. Here are a couple=
=20
of examples:

Anton\ Reicha-\ Albert\ Schweitzer\ Quintett\ -\ Wind\ Quintet\ No.9\=20
in\ D\ major\ Op.91\ No.3-\ Finale-\ Allegretto.mp3

Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\=20
Strings\ In\ D\ Major\,\ Op.56=A3=AF5\,\ G411\ -=A5=B2.\ Andante\ Come\=20
Prima.mp3

Feeding those names to cat so I can join the movements into a single file=
=20
is going to be a major pain in the wazoo, as they say down at symphony=20
hall. What I was hoping to find is a script that would automatically=20
convert all the wierd characters into more standard Unix file-naming=20
characters. But so far I've come up empty-handed. Can anyone point me to=20
some utility that might do what I need?

As a last resort, I might try to write my own script. I'm not too hot on=20
doing that though, since I'm at an extremely rudimentary level when it=20
comes to script writing. If it comes to that, could someone maybe help me=
=20
get started by giving an example for a script that would do the renaming I=
=20
want? I'd like to retain the bulk of the information, though I don't mind=
=20
truncating words at, say 5 letters. I suppose the main thing would be=20
replaing all the spaces and/or punctuation with dashes and/or underscores.

Thanks, James
--8323328-643839312-1113577442=:5717--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
