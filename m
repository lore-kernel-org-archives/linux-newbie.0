From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: make error
Date: Tue, 16 Apr 2002 19:06:12 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02041619061203.04062@unix.pa3gcu>
References: <00a701c1e575$ea0958e0$0901a8c0@system>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00a701c1e575$ea0958e0$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Thomas Beer <tbeer@analogon.com>, linux-newbie@vger.kernel.org

On Tuesday 16 April 2002 18:38, Thomas Beer wrote:
> Hi,
>
> I'm trying to install a radio clock software, which
> issues make errors. Can anyone guess what may be
> wrong. Tryed to modify the pcfclock.c with no positive
> result. Any suggestions are highly appreciated.
>
> Thanks Tom

The thing is with source is that quite often it will only compile with =
a=20
spesific kernel-verion-header files/and or spesific libs.

I suggest you check the doc's which i am presuming came with the source=
 and=20
see if there is any mention of what the authour used to compile it.

It could also be that he/she used a different compiler than you have.

>
> make
> cd . \
>   && CONFIG_FILES=3D CONFIG_HEADERS=3Dconfig.h \
>      /bin/sh ./config.status
> config.status: creating config.h
> config.status: config.h is unchanged
> make  all-recursive
> make[1]: Wechsel in das Verzeichnis Verzeichnis
> =BB/big/download/pcfclock-0.29=AB
> Making all in linux
> make[2]: Wechsel in das Verzeichnis Verzeichnis
> =BB/big/download/pcfclock-0.29/linux=AB
> gcc -O2 -Wall -fomit-frame-pointer -I/lib/modules/2.4.4/build/include
> -D__KERNEL__ -DMODULE -DMODVERSIONS -include
> /lib/modules/2.4.4/build/include/linux/modversions.h -D__SMP__   -c -=
o
> pcfclock.o pcfclock.c
> pcfclock.c:547: parse error before string constant

This could be a simple syntax error in the source, or it could be the r=
esult=20
of a header file mismatch.

> pcfclock.c:547: warning: type defaults to `int' in declaration of
> `MODULE_LICENSE'
> pcfclock.c:547: warning: data definition has no type or storage class

Looking at that i would take a wild guess and say that the software is =
very=20
old indeed and needs lib5 support, thesedays we have Glib's and they ar=
e=20
mostly not backwards compatable.

Of course it could be something else intyrly...

> make[2]: *** [pcfclock.o] Fehler 1
> make[2]: Verlassen des Verzeichnisses Verzeichnis
> =BB/big/download/pcfclock-0.29/linux=AB
> make[1]: *** [all-recursive] Fehler 1
> make[1]: Verlassen des Verzeichnisses Verzeichnis
> =BB/big/download/pcfclock-0.29=AB
> make: *** [all] Fehler 2
> [tom@milestone pcfclock-0.29]$
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
