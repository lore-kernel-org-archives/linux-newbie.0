From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: Apache in Linux
Date: Thu, 4 Jul 2002 09:47:19 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020704074719.69442.qmail@web13108.mail.yahoo.com>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15D6@ccdc-exchg.careercommunity.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D15D6@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Sridhar J (june end)" <sridharj.hyd@cxknetworks.com>
Cc: linux-newbie@vger.kernel.org


--- "Sridhar J (june end)"
<sridharj.hyd@cxknetworks.com> wrote:
> Hi
>=20
> 1. I have installed Mandrake Linux 8.2 with all
> server tools. But I couldn't
> find where Apache was put in. I know that we have to
> untar and then install
> apache, but the gzip file could not be found. Can
> someone help me?
>=20

You forgot to install gzip maybe?

> 2. Is there any equivalent in Linux for the "File
> find" utility in windows.
> I have nautilus, but it didn't show up Apache. It
> took up a huge amount of
> time seaching only /usr.
>=20

1) man find
2) locate name_of_the_file
3) Try using 'find / -name www -print'

> Regards
> Sridhar

Calin

___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
