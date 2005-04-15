From: James Miller <jamtat@mailsnare.net>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 11:37:32 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
 <425FDAA8.4060502@vip.cybercity.dk>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1835199109-1113583052=:5717"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <425FDAA8.4060502@vip.cybercity.dk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1835199109-1113583052=:5717
Content-Type: TEXT/PLAIN; charset="en_US.UTF-8"; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I tried your perl script and it works really well, Flemming. Thanks for=20
bringing it to my attention. I see it works for all files in a given=20
directory--exactly what I need. Now, in place of something like

Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ Strings=
\ In\ D\ Major\,\ Op.565\,\ G411\ -.\ Andante\ Come\ Prima.mp3

I get

Patrick_Cohen__and__Mosaiques_Quartet_-_Quintet_For_Piano__and__Strings_In_=
D_Major._Op.56=A3=AF5._G411_-=A5=B2._Andante_Come_Prima.mp3

--a big step in the right direction. But I'm still getting some wierd=20
characters in there--=A3=AF and =A5=B2. Are these unicode or something? Any=
way, I=20
can't reproduce these at the command line. Is there any way your script=20
might be made to catch and replace symbols like these as well (I mean, for=
=20
someone who knows absolutely nothing about Perl, and precious little about=
=20
scripting in general)? I have no idea what information these symbols are=20
supposed to be representing. It's probably so inconsequential I don't even=
=20
need it, so replacing it with virtually any other symbol should suffice.=20
I'd say I've got at least 20 files with such symbols, and more are on the=
=20
way.

Thanks, James
--8323328-1835199109-1113583052=:5717--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
