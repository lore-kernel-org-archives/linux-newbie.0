From: "Axel H. Siebenwirth" <axel@hh59.org>
Subject: Configure for a program that uses QT fails
Date: Thu, 2 May 2002 15:24:17 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020502132417.GA16613@neon>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hi,

I=B4m completely desperate. Several times I have tried to build program=
s from
source that use the QT library. Now I again tried to configure kdevelop=
, but
it never succesfully finds the qt libraries. I have no idea whats wrong=
=2E
Everything should be ok. Every other source I want to configure for a b=
uild
and that uses qt fails as well.

Please help me! Give me hints on what I could do or check for..

Thank you very much in advance,
Axel Siebenwirth

	Here are the errors:

checking for Qt... configure: error: Qt (>=3D Qt 3.0.2) (library qt-mt)=
 not
found. Please check your installation!

	config.log:

configure:19187: checking for Qt
configure: 19249: /usr/lib/qt3/include/qstyle.h
taking that
tried NO
configure:19354: rm -rf SunWS_cache; g++ -o conftest -Wnon-virtual-dtor
-Wno-long-long -Wbad-function-cast -Wundef -Wall -pedantic -W
-Wpointer-arith -Wmissing-prototypes -Wwrite-strings -ansi
-D_XOPEN_SOURCE=3D500 -D_BSD_SOURCE -Wcast-align -Wconversion -O2
-fno-exceptions -fno-check-new -I/usr/lib/qt3/include -I/usr/X11R6/incl=
ude
-DQT_THREAD_SUPPORT  -D_REENTRANT  -L/usr/lib/qt3/lib -L/usr/X11R6/lib
conftest.cc  -lqt-mt -lpng -lz -lm -ljpeg -ldl  -lXext -lX11 -lSM -lICE
-lresolv -lpthread 1>&5
/tmp/cclqqmci.o: In function =0Dain':
/tmp/cclqqmci.o(.text+0x12): undefined reference to =11String::null'
/tmp/cclqqmci.o(.text+0x17): undefined reference to
=11StyleFactory::create(QString const&)'
/tmp/cclqqmci.o(.text+0x27): undefined reference to
=11Cursor::QCursor[in-charge](int)'
/tmp/cclqqmci.o(.text+0x2f): undefined reference to =11Cursor::~QCursor
[in-charge]()'
/usr/X11R6/lib/libfontconfig.so.1: undefined reference to =06T_Get_Next=
_Char'
collect2: ld returned 1 exit status
configure:19357: $? =3D 1
configure: failed program was:
#include "confdefs.h"
#include <qglobal.h>
#include <qapplication.h>
#include <qcursor.h>
#include <qstylefactory.h>
#include <private/qucomextra_p.h>
#if ! (QT_VERSION >=3D 302)
#error 1
#endif

int main() {
    (void)QStyleFactory::create(QString::null);
    QCursor c(Qt::WhatsThisCursor);
    return 0;
}
configure:19396: error: Qt (>=3D Qt 3.0.2) (library qt-mt) not found. P=
lease
check your installation!


	my environment:

QTDIR=3D/usr/lib/qt3
KDEDIR=3D/opt/kde3

	my libs:

/usr/lib/libqt-mt.so.2 -> qt2/lib/libqt-mt.so.2
/usr/lib/libqt-mt.so.3 -> ../lib/qt3/lib/libqt-mt.so.3

lrwxrwxrwx    1 root     root            8 Apr 25 00:48 /usr/lib/qt2 ->=
=20
qt-2.3.2
lrwxrwxrwx    1 root     root            8 Apr 15 17:34 /usr/lib/qt3 ->=
=20
qt-3.0.3

/usr/lib/qt-2.3.2:
total 14
drwxr-xr-x    2 root     root          303 Apr 25 00:48 bin
drwxr-xr-x    2 root     root           55 Apr 25 00:48 doc
drwxr-xr-x   76 root     root         1838 Apr 25 00:48 examples
drwxr-xr-x    4 root     root           77 Apr 25 00:49 extensions
drwxr-xr-x    2 root     root         8187 Apr 25 00:49 include
drwxr-xr-x    2 root     root          674 Apr 25 00:49 lib
drwxr-xr-x    3 root     root           59 Apr 25 00:48 tools
drwxr-xr-x   16 root     root          366 Apr 25 00:48 tutorial

/usr/lib/qt-3.0.3:
total 15
drwxr-xr-x    2 root     root          392 Apr 25 00:50 bin
drwxr-xr-x    5 root     root          103 Apr 15 17:35 doc
drwxr-xr-x    3 root     root           59 Apr 21 17:45 etc
drwxr-xr-x    3 root     root         9244 Apr 23 13:41 include
drwxr-xr-x    2 root     root          576 Apr 25 00:50 lib
drwxr-xr-x   52 root     root         1329 Apr 21 17:44 mkspecs
drwxr-xr-x    6 root     root          135 Apr 21 17:45 plugins
drwxr-xr-x    2 root     root          196 Apr 25 00:49 templates

qt3/lib> l libqt-mt.*
-rwxr-xr-x    1 root     root     10282078 Apr 21 17:56 libqt-mt.a
lrwxrwxrwx    1 root     root           17 Apr 15 17:34 libqt-mt.so ->
libqt-mt.so.3.0.3
lrwxrwxrwx    1 root     root           17 Apr 15 17:34 libqt-mt.so.3 -=
>
libqt-mt.so.3.0.3
lrwxrwxrwx    1 root     root           17 Apr 15 17:34 libqt-mt.so.3.0=
 ->
libqt-mt.so.3.0.3
-rwxr-xr-x    1 root     root      7554895 Apr 21 17:45 libqt-mt.so.3.0=
=2E3
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
