From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Re: date alias
Date: Fri, 7 Jun 2002 15:59:19 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206080018.g580Itu07934@cs.annauniv.edu>
References: <200206070311.g573BL429283@ns2.easy-pages.com>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206070311.g573BL429283@ns2.easy-pages.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

On Thursday 01 January 1970 05:30, pericles@v35.com wrote:
  > Steven, others,
  >=20
  > I've added the following to /root/.profile
  >=20
  > alias date=3D'date +'%cEST''
  >=20
  > and output is Thu Jun 06 13:33:14 2002EST
  >=20
  > I have all the reference materials I need,
  > but don't know where to begin looking. I'd
  > like to include a space between the year
  > and time zone (2002 EST). =A0Am I looking at
  > a kind of variable? =A0What is the %c called
  > in the above alias? =A0Am I looking for something
  > similar to %c?

$ man date
[snip]

%c     locale's date and time (Sat Nov 04 12:02:33 EST 1989)

[snip]

$ date +"%c EST"
=46ri 07 Jun 2002 03:58:20 PM IST EST


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
