From: rekha vn <vidiyala_r@yahoo.com>
Subject: kernek version problem
Date: Sat, 30 Jul 2005 01:16:26 -0700 (PDT)
Message-ID: <20050730081626.54233.qmail@web40608.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

i have written a small module :



#define MODULE
#include<linux/module.h>
int init_module(){printk("<1>hello world");return 0;}
void cleanup_module(void){printk"<1>bye world");}

it got compiled without errors.when i'm trying to run
it by insmod:
insmod ./hello.o

i got the error message as:
./hello.o :kernel module version mismatch
./hello.o was compiled for kernel version 2.4.20 while
this kernel is version 2.4.21-4.EL

how do i update my kernel?
is there any way to bypass the kernel version
dependencies? 



		
____________________________________________________
Start your day with Yahoo! - make it your home page 
http://www.yahoo.com/r/hs 
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
