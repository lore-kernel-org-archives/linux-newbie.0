From: lawson_whitney@juno.com
Subject: Re: stripping flies (was: Re: .so, .a and .o-files)
Date: Sat, 17 Aug 2002 10:07:15 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020817.100901.134671024.0.lawson_whitney@juno.com>
References: <Pine.LNX.4.21.0208170957360.8397-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208170957360.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Riley@Williams.Name
Cc: lists@tcob1.net, linux-newbie@vger.kernel.org

On Sat, 17 Aug 2002, Riley Williams wrote:

> Hi Ray.
>
>  1. Axel asked about stripping OBJECT files. These are the
>     intermediate files created by the compiler and fed to
>     the linker, and I'm not sure that it's even possible
>     to strip those.

You can strip object files.  Some options (including the default)
will make them useless if you do.

Script started on Sat Aug 17 09:47:25 2002
[whit@giftie whit]$ cat hw.c
#include <stdio.h>
int main(){printf("Hello world!\n");
return 0;}
[whit@giftie whit]$ gcc -g -c hw.c
[whit@giftie whit]$ ls -l --color=no hw.o
-rw-r--r--    1 whit     uucp        10572 Aug 17 09:49 hw.o
[whit@giftie whit]$ strip --strip-unneeded hw.o
[whit@giftie whit]$ ls -l --color=no hw.o
-rw-r--r--    1 whit     uucp          868 Aug 17 09:50 hw.o
[whit@giftie whit]$ gcc -o hw hw.o
[whit@giftie whit]$ ./hw
Hello world!
[whit@giftie whit]$ ls -l --color=no hw
-rwxr-xr-x    1 whit     uucp        13212 Aug 17 09:50 hw*
[whit@giftie whit]$ strip hw
[whit@giftie whit]$ ls -l --color=no hw
-rwxr-xr-x    1 whit     uucp         2984 Aug 17 09:51 hw*
[whit@giftie whit]$ ./hw
Hello world!
[whit@giftie whit]$ strip hw.o
[whit@giftie whit]$ gcc -o hw hw.o
/usr/lib/crt1.o: In function `_start':
/usr/lib/crt1.o(.text+0x18): undefined reference to `main'
collect2: ld returned 1 exit status
[whit@giftie whit]$ exit
Script done on Sat Aug 17 09:52:12 2002

> Best wishes from Riley.
>
Lawson
---oops---




________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
