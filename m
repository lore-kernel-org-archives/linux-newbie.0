From: "Thomas Beer" <tbeer@analogon.com>
Subject: make error
Date: Tue, 16 Apr 2002 20:38:33 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00a701c1e575$ea0958e0$0901a8c0@system>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi,

I'm trying to install a radio clock software, which
issues make errors. Can anyone guess what may be
wrong. Tryed to modify the pcfclock.c with no positive
result. Any suggestions are highly appreciated.

Thanks Tom

make
cd . \
  && CONFIG_FILES=3D CONFIG_HEADERS=3Dconfig.h \
     /bin/sh ./config.status
config.status: creating config.h
config.status: config.h is unchanged
make  all-recursive
make[1]: Wechsel in das Verzeichnis Verzeichnis
=BB/big/download/pcfclock-0.29=AB
Making all in linux
make[2]: Wechsel in das Verzeichnis Verzeichnis
=BB/big/download/pcfclock-0.29/linux=AB
gcc -O2 -Wall -fomit-frame-pointer -I/lib/modules/2.4.4/build/include
-D__KERNEL__ -DMODULE -DMODVERSIONS -include
/lib/modules/2.4.4/build/include/linux/modversions.h -D__SMP__   -c -o
pcfclock.o pcfclock.c
pcfclock.c:547: parse error before string constant
pcfclock.c:547: warning: type defaults to `int' in declaration of
`MODULE_LICENSE'
pcfclock.c:547: warning: data definition has no type or storage class
make[2]: *** [pcfclock.o] Fehler 1
make[2]: Verlassen des Verzeichnisses Verzeichnis
=BB/big/download/pcfclock-0.29/linux=AB
make[1]: *** [all-recursive] Fehler 1
make[1]: Verlassen des Verzeichnisses Verzeichnis
=BB/big/download/pcfclock-0.29=AB
make: *** [all] Fehler 2
[tom@milestone pcfclock-0.29]$



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
