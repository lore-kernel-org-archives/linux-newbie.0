From: Christopher Sly <vaidyana@cs.wisc.edu>
Subject: kernel-module version mismatch
Date: Mon, 30 Jun 2003 02:19:43 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.GSO.4.21.0306300219300.13921-100000@nova19.cs.wisc.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hello,
	im trying to run the most simple linux modules and i get the
following error on saing: 

/sbin/insmod hello.o

 hello.o was compiled for kernel version 2.4.9-9
        while this kernel is version 2.4.18-14.

I also tried:
gcc -c hello.c -I /usr/src/linux-2.4.18-14/include
 with the same consequences 

And:
gcc -c -D__KERNEL__ -DMODULE -I/usr/src/linux-2.4.18-14/include -o hello.o
hello.c
hello.c:1:1: warning: "MODULE" redefined
hello.c:1:1: warning: this is the location of the previous definition

again with the same consequence.

any suggestions?

the code looks like so:
#define MODULE
#include <linux/module.h>

int init_module (void) /* Loads a module in the kernel */
{
        printk("Hello kernel n");
        return 0;
}

void cleanup_module(void) /* Removes module from kernel */
{
        printk("GoodBye Kerneln");
}



*******************************************************************************

	Getting crazy on the waltzers but it's the life that I choose
				-- Dire Straits

*******************************************************************************




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
