From: Lei Yang <leiyang@nec-labs.com>
Subject: Re: Error building 'Hello,World' kernel Module
Date: Thu, 05 Aug 2004 15:44:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4112B836.2060703@nec-labs.com>
References: <1091659420.5427.14.camel@bijar.nec-labs.com> <1091683034.1861.13.camel@shine.naturesoft.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1091683034.1861.13.camel@shine.naturesoft.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: shinemohamed_j@naturesoft.net
Cc: Kernel Newbies Mailing List <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Shine Mohamed Jabbar wrote:
> Hi,
> 
> I tried ur program in my machine and
> its working fine.
> 
> Apart from what u've done I did two more things
> 1) Copied the config file from the /boot to kernel
>    source directory and done "make menuconfig"

I didn't copy anything to kernel source, I just did 'make oldconfig'

> 2) Done a make in the kernel source till it compiles
>    the first c file (CC      init/main.o). (I've done
>    because to make a link of include/asm->include/asm-i386).

Is this really necessary...? I don't know. I didn't do that. I thought 
all the information module needed is the kernel configuration.

Thanks.
Lei

> Regards,
> Shine Mohamed Jabbar
> 
> On Thu, 2004-08-05 at 04:13, Lei Yang wrote:
> 
>>Hello,
>>
>>I am learning about module programming and just tried to build a
>>simplest module, Hello World.
>>
>>The code is as follows:
>>/* hello.c
>>#include <linux/module.h>       
>>#include <linux/kernel.h>      
>>
>>int init_module(void)
>>{
>>        printk("Hello world!\n");
>>        return 0;
>>}
>>
>>void cleanup_module(void)
>>{
>>        printk(KERN_ALERT "Goodbye world!\n");
>>}
>>
>>
>>The makefile is just one line:
>> obj-m += hello.o
>>
>>Then as root, I did in the HelloWorld directory:
>>
>>make -C /usr/src/linux-`uname -r` SUBDIRS=$PWD modules
>>
>>There is such an error:
>>make: Entering directory `/usr/src/linux-2.6.5-7.104-default'
>>
>>WARNING: Symbol version dump
>>/usr/src/linux-2.6.5-7.104-default/Module.symvers is  missing, modules
>>will have CONFIG_MODVERSIONS disabled.
>>
>>make[1]: *** No rule to make target `/home/lei/HelloWorld/hello.c',
>>needed by `/home/lei/HelloWorld/hello.o'.  Stop.
>>make: *** [_module_/home/lei/HelloWorld] Error 2
>>make: Leaving directory `/usr/src/linux-2.6.5-7.104-default'
>>
>>
>>Appreciate any comments and help!
>>
>>TIA
>>Lei
>>
>>
>>
>>--
>>Kernelnewbies: Help each other learn about the Linux kernel.
>>Archive:       http://mail.nl.linux.org/kernelnewbies/
>>FAQ:           http://kernelnewbies.org/faq/
>>
>>
> 
> 
> 
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
