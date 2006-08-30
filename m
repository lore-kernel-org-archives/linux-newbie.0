From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Combining three commands
Date: Wed, 30 Aug 2006 11:26:30 -0600
Message-ID: <44F5CA46.6000509@comcast.net>
References: <44F438FB.5080207@wirkle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44F438FB.5080207@wirkle.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: Santosh Puranshettiwar <santosh@wirkle.com>
Cc: linux-newbie@vger.kernel.org

Santosh Puranshettiwar wrote:
> $ /home/foouser/decoder input-file.amr temp.raw
> $ sox =96r 8000 =96w =96c 1 =96s temp.raw =96r *8000* =96w =96c 1 tem=
p.wav
> $ lame =96h temp.wav file.mp3 --tt song-title --ta artist --tl album
>=20
> Here are three commands that I wish to combine in one line so as to=20
> avoid any temporary files?
> Could anyone suggest me a solution.
>=20
> Santosh.

I'm not entirely sure that I understand what you're asking, but if
you're asking how to create the end "file.mp3" without creating the
"temp.raw" and "temp.wav" files, then you can do that if all of your
/home/foousr/decoder can write its output to standard output instead of
a file.  Most decoder apps (including sox & lame) are able to do that,
by specifying a single dash, "-", for the filename.  Assuming
/home/foouser/decoder works in the standard way, you then connect its
standard output to the standard input of the next command like this:

$ /home/foouser/decoder input-file.amr "-" | sox =96r 8000 =96w =96c 1 =
=96s -t
raw "-" =96r *8000* =96w =96c 1 -t wav "-" | lame =96h "-" file.mp3 --t=
t
song-title --ta artist --tl album

That should tell /home/foouser/decoder to read a datastream from
input-file.amr, and write the decoded datastream to stdout; that stdout
is then connected by a pipe to the stdin of the sox command, which will
read its input from the stdin, with the assumption that the input is in
raw format, and write its output to stdout in wav format (I added the
"-t raw" & "-t wav" options), and then the stdout of the sox command is
connected to the stdin of the lame command, and the lame command reads
its input from stdin, and writes to file.mp3.

Hope this helps,
Conway S. Smith
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
