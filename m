From: Michael Scondo <michael.scondo@arcor.de>
Subject: Debian libc6 upgrade
Date: Tue, 27 Jan 2004 21:40:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401272140.53742.michael.scondo@arcor.de>
Reply-To: michael.scondo@arcor.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi to all,
I'm running a mixed Debian Woody, with a few backports and libc6 2.3.1-16.
Now I would like to upgrade to libc6 2.3.2.ds1-10.
Anything runs fine - until I try to compile a program :

e.g.
____
#include <stdio.h>

int main()
{
    printf("Hallo !\n");
}
____

cpp -o hallo hallo.cpp
micha@betageuze:~/prog/test/t2$ ./hallo
bash: ./hallo: Permission denied
micha@betageuze:~/prog/test/t2$ chmod a+x ./hallo
micha@betageuze:~/prog/test/t2$ ./hallo
./hallo: extern: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: typedef: command not found
./hallo: line 972: syntax error near unexpected token `;'
./hallo: line 972: `} __quad_t;'
micha@betageuze:~/prog/test/t2$

?:-(

gcc -o hallo hallo.cpp
/usr/lib/crt1.o: In function `_start':
../sysdeps/i386/elf/start.S:92: undefined reference to `__libc_csu_fini'
../sysdeps/i386/elf/start.S:93: undefined reference to `__libc_csu_init'
collect2: ld returned 1 exit status

I don't have any idea, what is going wrong.
Maybe I should say, before the upgrade this example program compiled fine.

Thanks for any help..
Micha

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
