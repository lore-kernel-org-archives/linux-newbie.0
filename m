From: James Miller <jamtat@mailsnare.net>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 13:49:09 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504151312240.5717@localhost.localdomain>
References: <5.1.0.14.1.20050415091414.02008e58@celine>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-795110782-1113589636=:5717"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050415091414.02008e58@celine>
Content-ID: <Pine.LNX.4.61.0504151332330.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-795110782-1113589636=:5717
Content-Type: TEXT/PLAIN; CHARSET="en_US.UTF-8"; FORMAT=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <Pine.LNX.4.61.0504151332331.5717@localhost.localdomain>

Thanks for your input, Ray.

On Fri, 15 Apr 2005, Ray Olszewski wrote:

> 1. See if the app "mp3wrap" (that's the Debian-Sid package name) helps in=
 any=20
> way relevant to your problem.

Ok. I'll check that.

> 2. Consider using playlists rather than joining the files. If you use xmm=
s=20
> for playback, it has a deccent GUI for creating playlists, and it has no=
=20
> problem with the "weird" characters. (This naming standard is also a prob=
lem=20
> for those of us who rip our own CDs to our hard drives as well, and xmms =
plus=20
> playlists has always handled it for me.)

In this case, I think cat'ting files together is going to be the right=20
solution, though it might create a bit of extra work. I've discovered that=
=20
it joinsd movments together almost precisely at the point where the break=
=20
was made (ca. 30 seconds into the beginning of a given movement). The=20
breaks are almost unnoticeable when I cat the files together into a single=
=20
file. I'm guessing with a playlist, I'd get a pause at the break, meaning=
=20
I would hear the first 30 seconds of a movement at the end of the=20
preceding movement, then a pause, then a continuation of the movement that=
=20
got cut off by the software. Isn't that how the playlist scenario would=20
work out?

> 3. TAB completion is your friend. Using your first example, I bet somethi=
ng=20
> close to "Anton<TAB>" would complete that entry on the command line. From=
 the=20
> examples you provided, I can't back out where the movement differentiator=
s=20
> are in the names, but such things are typically at the end of the name, s=
o=20
> you might have to entry just a couple of additional characters to complet=
e.

Tab completion only gets me so far, and is less helpful because of all=20
the wierd characters that are getting inserted. For example, "cat Pat"=20
gets me the following output (I include the tail end of the direcory's=20
content from an ls command):

Luigi Boccherini - No. 8 in B flat -- Allegro.mp3
Luigi Boccherini - No. 8 in B flat -- Andante affetuoso.mp3
Luigi Boccherini - No. 9 in F -- Adagio assai.mp3
Luigi Boccherini - No. 9 in F -- Andantino.mp3
Luigi Boccherini - No. 9. in F -- Tempo di minuetto amoroso.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In D Major,=
 Op.56=A3=AF5, G411 -=A5=B2. Andante Come Prima.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In D Major,=
 Op.56=A3=AF5, G411 -=A5=B3. Variazioni.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In D Major,=
 Op.56=A3=AF5, G411 -=A5=B0. Andante Sostenuto.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In D Major,=
 Op.56=A3=AF5, G411 -=A5=B1. Minuetto Allegro.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In E Minor,=
 Op.56=A3=AF1, G407 -=A5=B2. Minuetto Con Moto.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In E Minor,=
 Op.56=A3=AF1, G407 -=A5=B3. Allegretto Final.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In E Minor,=
 Op.56=A3=AF1, G407 -=A5=B1. Adagio.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In E Minor,=
 Op.56=A3=AF1, G407 -=A5=B0. Allegro Comodo.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In F Major,=
 Op.56=A3=AF2, G408 -=A5=B2. Poco Adagio.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In F Major,=
 Op.56=A3=AF2, G408 -=A5=B3. Allegretto.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In F Major,=
 Op.56=A3=AF2, G408 -=A5=B0. Allegretto.mp3
Patrick Cohen & Mosaiques Quartet - Quintet For Piano & Strings In F Major,=
 Op.56=A3=AF2, G408 -=A5=B1. Minuetto Amoroso.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Concerto In A Major, Op. 30=20
Allegro Maetoso.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Concerto In A Major, Op. 30=20
Polonaise.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Concerto In A Major, Op. 30=20
Siciliana.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Sinfonia Allegro E Con=20
Imperio.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Sinfonia Allegro.mp3
Portland Baroque Orchestra under Monica Huggett, with Richard Savino, baroq=
ue guitar - Sinfonia Grave.mp3
**ME**@mymachine:~/Classical$ cat Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -=
\ Quintet\ For\ Piano\ \&\ Strings\ In\

As you can see, I have to complete the key, then the opus number, then the=
=20
Yen symbol--etc etc. It's still pretty involved, even using=20
autocompletion. Getting rid of odd characters in file names won't help much=
 with=20
that, but it will give me a valid name to use as my full-piece.mp3 file=20
name.

> A less targeted solution *might* be to try the app "mmv". (It's just amaz=
ing=20
> what oddities are lurking around in the Debian packaging system.) I haven=
't=20
> used it myself, but from the writeup, it might offer you some help ... th=
ough=20
> you'll still have to define your own naming convention, so a custom scrip=
t=20
> (see below) may be about as easy.

I'll take a look at that, too.

> This sort of script wouldn't be too tough to write in Perl, just using a =
few=20
> tr commands plus the commands to read and mv file names, and probably a s=
hell=20
> script wouldn't be much tougher. If I have time later, I'll try to cobble=
=20
> something together to serve as an example.

Flemming's has gotten me most of the way. He's just posted a slight=20
modification that may get rid of the rest of the problem characters for=20
me. I'll post to the list whether it works as advertised. If you have the=
=20
time to try a bash script, that would be interesting to see as well.

> Closing thought ... take a look at
>
>        http://www.classiccat.net/
>
> for another way to acquire (legitimately, as far as I can tell) free MP3s=
 of=20
> public domain classical recordings. Or try Google; there seems to be a lo=
t of=20
> this stuff around.

Another interesting way the internet is turning staid institutions on=20
their ears. I was expecting to see old recordings digitized or something.=
=20
But the little bit of snooping I did there reveals that at least some of=20
these (the Beethoven piano sonata's I was interested in) are private=20
recordings done by unknown (but wanting-to-be-known) artists. It's not=20
going to be Schnabel, but nearly any decent interpretation will suit my=20
needs just fine. The recording industry has not only file sharing to worry=
=20
about, but independents with access to a wide audience without corporate
intermediaries.

James
--8323328-795110782-1113589636=:5717--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
