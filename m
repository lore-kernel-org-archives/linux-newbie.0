From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: linux kernel print to file problem
Date: Fri, 15 Jul 2005 17:06:02 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811610F7B@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear Linux-lovers.

I am trying to build a 2.6.10 linux kernel module to print messages to a
file. I have done this 2.4 and I was successful but I am failing here.

I am using the sys_open, sys_write calls to do so.
I am getting a compilation warning and I find no .ko file created
finally instead I find an .o.ko file.

*** WARNIG: "sys_write" [/home/cf.o.ko] undefined!
Below is the module code. Please suggest me what could be the problem:-


#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <asm/fcntl.h>		/* for O_WRONLY */
#include <linux/syscalls.h>	/* for sys_ functions */
#include <asm/uaccess.h>	/* for set_fs(), get_fs() etc. */
#include <linux/string.h>	/* for string length */
#include <linux/slab.h>		/* for kmalloc */

MODULE_LICENSE("GPL");
/*
#define DBG
#define PRINTK(fmt,arg...) printk("DBG INFO <%s> | "
fmt,__FUNCTION__,##arg)
#else
#define PRINTK(fmt,arg...) while(0)
#endif
*/

typedef struct tagWRITE_TEST
{
	unsigned long fd;
	unsigned long x;
	
}WRITE_TEST, *PWRITE_TEST;

PWRITE_TEST ptest;

void SysPrint(char * pString, ...)
{
	static char buff[1024];
	va_list ap;

	va_start(ap,pString);
	vsprintf((char *)buff, pString, ap);
	va_end(ap);
	
	sys_write(ptest->fd,(char *)buff,(size_t)strlen(buff));
}

int init_module(void)
{
	
	printk("<%s> invoked!\n",__FUNCTION__);
	printk("File Creation Testing in Kernel Module!\n");

	set_fs(get_ds());
	
	/* allocate the memory for structre */
	ptest = (PWRITE_TEST)kmalloc(sizeof(WRITE_TEST),GFP_KERNEL);
	if(ptest == NULL)
	{
		printk("Structure Memory Allocation Fails!\n");
		return -ENOMEM;
	}
	
	ptest->fd = sys_open("srcdebug.txt", O_CREAT | O_WRONLY, 644);
	if (ptest->fd == 0)
	{
		SysPrint("File Creation Error!!!\n");
		return 1;
	}
	
	SysPrint("File Creation Testing in Kernel Module!\n");
	SysPrint("Srinivas Testing the File Creation\n");
	sys_close(ptest->fd);
	
	return 0;
}

void cleanup_module(void)
{
	printk("Good bye!\n");

	/* free the allocated memory */
	kfree(ptest);
}

Regards,
Mukund jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
