From: "Eckhardt, Rodolpho H. O." <reckhardt@mandic.com.br>
Subject: Re: setting Tab's in vi
Date: Thu, 20 Feb 2003 18:41:25 -0300 (BRT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <62234.200.136.52.249.1045777285.squirrel@www.mandic.com.br>
References: <8789.1045773996@www29.gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <8789.1045773996@www29.gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Matthiaseifert@gmx.de
Cc: linux-newbie@vger.kernel.org

Hi,

I don=B4t know how you can do that with emacs, since I only use vi...

You can add the following lines to /etc/vimrc or /.vimrc:

set tabstop=3D4

If you don't want vi to expand your tabs into spaces, you can also add =
this:

set noexpandtab


I hope this works!

Best regards,

Rodolpho Eckhardt
S=E3o Paulo - Brazil

> Hi, Listmembers!
>
> This is about configuring the vi editor.
>
> I'd like to change the default TabStop (currently 8 whitespaces) to 4=
 whitespaces
> (which will
> better suit my needs (at least, I think so)). I found out:
>
> 	:ret4
>
> will do so for one vi-session but for reasons of convenience I'm look=
ing for a
> permanent setting.
>
> Any hints?
>
> Thank you,
> Matthias
> Frankfurt am Main
>
> ooh. B.T.W. don't want to be to inquisitive but... how to do the same=
 with emacs? tnx.
>
> --
> +++ GMX - Mail, Messaging & more  http://www.gmx.net +++
> Bitte l=E4cheln! Fotogalerie online mit GMX ohne eigene Homepage!
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in the body of
> a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html Pl=
ease read the FAQ
> at http://www.linux-learn.org/faqs


--=20
Rodolpho H. O. Eckhardt
reckhardt@mandic.com.br
Cel: 11 9126-9107


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
