From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: kernel-module version mismatch
Date: Mon, 30 Jun 2003 09:36:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAKECGEIAA.Riley@Williams.Name>
References: <Pine.GSO.4.21.0306300219300.13921-100000@nova19.cs.wisc.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.GSO.4.21.0306300219300.13921-100000@nova19.cs.wisc.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christopher Sly <vaidyana@cs.wisc.edu>
Cc: linux-newbie@vger.kernel.org

Hi Christopher.

 > I'm trying to run the most simple Linux modules and I get the
 > following error on saying: 
 >
 > /sbin/insmod hello.o
 >
 >  hello.o was compiled for kernel version 2.4.9-9
 >          while this kernel is version 2.4.18-14.
 >
 > I also tried:
 >
 > gcc -c hello.c -I /usr/src/linux-2.4.18-14/include
 >
 > with the same consequences and:
 >
 > gcc -c -D__KERNEL__ -DMODULE -I/usr/src/linux-2.4.18-14/include 
 >        -o hello.o hello.c
 > hello.c:1:1: warning: "MODULE" redefined
 > hello.c:1:1: warning: this is the location of the previous
 >              definition
 >
 > again with the same consequence.
 >
 > any suggestions?

IIRR, insmod looks for the module to insert in the standard
modules directories, not in the current directory. Do you have
an old version of the module in there that you're trying to
insert instead of the one you've just compiled? Try...

    find /lib/modules/ -name hello.o

...to find out as it could be anywhere under /lib/modules and
insmod would still find it. Also, if that finds nothing, try...

    strace insmod hello.o 2>&1 | fgrep open

...and analyse the resulting listing looking for where it loads
that module from.

 > the code looks like so:
 >
 > #define MODULE
 > #include <linux/module.h>
 > 
 > int init_module (void) /* Loads a module in the kernel */
 > {
 >         printk("Hello kernel\n");
 >         return 0;
 > }
 > 
 > void cleanup_module(void) /* Removes module from kernel */
 > {
 >         printk("GoodBye Kernel\n");
 > }

There's nothing obviously wrong with that code, at least not
to me.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.493 / Virus Database: 292 - Release Date: 25-Jun-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
