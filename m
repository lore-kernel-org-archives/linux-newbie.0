From: "Dinesh K Subhraveti" <dinesh@cs.columbia.edu>
Subject: isn't wait4 amenable to interception?
Date: Fri, 9 Apr 1999 01:12:40 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <009b01be8247$97659b60$13123b80@endo>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

hello,

i was trying to intercept various system calls and got stumped at wait4. the
new syscall routine just returns original sys_wait4. i am able to insert the
module. sytem works just fine after insertion. but when i rmmod the module,
kernel 'oops'es with "bad eip" message and the shell gets killed. am just
not able to figure why. i'd greatly appreciate any insight on this. am
attaching the code below.

thanks in advance

-----------------------------------------------
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/resource.h>
#include <sys/syscall.h>

extern void *sys_call_table[];

static int (*original_sys_wait4) (pid_t, int*, int, struct rusage*);

asmlinkage int my_wait4 (pid_t a, int *b, int c, struct rusage *d)
{
   return original_sys_wait4 (a, b, c, d);
}

int init_module()
{
   original_sys_wait4 = sys_call_table[__NR_wait4];
   sys_call_table[__NR_wait4] = my_wait4;
   return 0;
}

void cleanup_module()
{
   sys_call_table[__NR_wait4] = original_sys_wait4;
}



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
