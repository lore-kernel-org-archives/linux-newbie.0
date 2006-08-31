From: Santosh Puranshettiwar <santosh@wirkle.com>
Subject: Re: Combining three commands
Date: Thu, 31 Aug 2006 19:22:34 +0530
Message-ID: <44F6E9A2.60108@wirkle.com>
References: <44F438FB.5080207@wirkle.com> <44F5CA46.6000509@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44F5CA46.6000509@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
To: linux-newbie@vger.kernel.org

Yes Conway, you got me right.

I tried that. Seems like *decoder* does not work as expected with a "-"=
=2E=20
It rather creates a file with name "-" (which doesn't contain any valid=
=20
content either). I do have its source. Is there anyway we can tweak it=20
to make it work our way?=20
http://www.3gpp.org/ftp/Specs/2003-09/Rel-5/26_series/26104-520.zip -=20
this is where I downloaded the source from.=20
<http://www.3gpp.org/ftp/Specs/2003-09/Rel-5/26_series/>

Thanks alot.
Santosh.
Conway S. Smith wrote:
> Santosh Puranshettiwar wrote:
>  =20
>> $ /home/foouser/decoder input-file.amr temp.raw
>> $ sox =96r 8000 =96w =96c 1 =96s temp.raw =96r *8000* =96w =96c 1 te=
mp.wav
>> $ lame =96h temp.wav file.mp3 --tt song-title --ta artist --tl album
>>
>> Here are three commands that I wish to combine in one line so as to=20
>> avoid any temporary files?
>> Could anyone suggest me a solution.
>>
>> Santosh.
>>    =20
>
> I'm not entirely sure that I understand what you're asking, but if
> you're asking how to create the end "file.mp3" without creating the
> "temp.raw" and "temp.wav" files, then you can do that if all of your
> /home/foousr/decoder can write its output to standard output instead =
of
> a file.  Most decoder apps (including sox & lame) are able to do that=
,
> by specifying a single dash, "-", for the filename.  Assuming
> /home/foouser/decoder works in the standard way, you then connect its
> standard output to the standard input of the next command like this:
>
> $ /home/foouser/decoder input-file.amr "-" | sox =96r 8000 =96w =96c =
1 =96s -t
> raw "-" =96r *8000* =96w =96c 1 -t wav "-" | lame =96h "-" file.mp3 -=
-tt
> song-title --ta artist --tl album
>
> That should tell /home/foouser/decoder to read a datastream from
> input-file.amr, and write the decoded datastream to stdout; that stdo=
ut
> is then connected by a pipe to the stdin of the sox command, which wi=
ll
> read its input from the stdin, with the assumption that the input is =
in
> raw format, and write its output to stdout in wav format (I added the
> "-t raw" & "-t wav" options), and then the stdout of the sox command =
is
> connected to the stdin of the lame command, and the lame command read=
s
> its input from stdin, and writes to file.mp3.
>
> Hope this helps,
> Conway S. Smith
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>  =20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
