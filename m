From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: Re: how do I use other than UTF8
Date: Tue, 01 Apr 2003 14:13:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030401121312.30890.qmail@arnold.mailbox.hu>
References: <1048357229.1140.4.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1048357229.1140.4.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: ramzez <r4mz3z@yahoo.es>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

ramzez <r4mz3z@yahoo.es> wrote:

>Hi friends...
>
>   I'm using RedHat 8.0 and for default it use UTF8 but I want to use
> only code charset "ISO-8859-1"... how do I do that?

This is an older question, but it looks like nobody answered it.

You should change in /etc/sysconfig/i18n the line (egsample):
LANG=3D"en_US.UTF8"
to
LANG=3D"en_US"

Probably LC_ALL too...

en_US can be anything else...


Akos

> thanks.
> --
>   Linux User Registered #232544
>          ICQ : 337889406
> my GnuPG-key at www.keyserver.net
>     --- rm -rf /bin/laden ---
>
---------------------------------------



_______________________________________________________________________
Domain regisztr=E1ci=F3, t=E1rhely, szerver hosting http://www.deninet.=
hu

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
