From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Re: How to convert a MSDOS text file to Linux text file?
Date: Fri, 31 May 2002 21:47:52 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206010208.g5128tu29670@cs.annauniv.edu>
References: <20020531141900.TDRO5116.mtiwmhc23.worldnet.att.net@alan> <200205312016.50361.knutties@indiainfo.com>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205312016.50361.knutties@indiainfo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: knutties@indiainfo.com, Alan Womack <arwbackup@worldnet.att.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Saturday 01 June 2002 05:47 am, Natarajan wrote:
  > >=A0What command line utility can I run on my txt files to fix this
  > > "problem"?
  > >
  > >=A0Thanks
  > >=A0Alan
  >
  > Use unix2dos that come with most of the standard distributions.

$ cat file.dos | tr -d "\r" > file.unix

Bye,
Suriya Narayanan M S

--=20
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha

Public key at www.keyserver.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
