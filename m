From: simon <simon.guinot@laposte.net>
Subject: Re: linux kernel print to file problem
Date: Sat, 16 Jul 2005 01:23:56 +0200
Message-ID: <42D8458C.2080905@laposte.net>
References: <4EE0CBA31942E547B99B3D4BFAB34811610F7B@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB34811610F7B@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

hello

Mukund JB. wrote:
> Dear Linux-lovers.
> 
> I am trying to build a 2.6.10 linux kernel module to print messages to a
> file. I have done this 2.4 and I was successful but I am failing here.
> 
> I am using the sys_open, sys_write calls to do so.
> I am getting a compilation warning and I find no .ko file created
> finally instead I find an .o.ko file.
> 
> *** WARNIG: "sys_write" [/home/cf.o.ko] undefined!
> Below is the module code. Please suggest me what could be the problem:-

system call are no longer export with 2.6 kernel...
you can find syscall address in your system.map...
if you intend to use lot of system call... you have best to find the 
sys_call_table address...

it can looks like :

#define SYS_CALL_TABLE "address_in_your_system.map"

void **sys_call_table;

int (*orig_write) (int, char *, size_t);

int init_module(void)
{
	[...]

	sys_call_table = (void **) SYS_CALL_TABLE;
	
	orig_write = sys_call_table[__NR_write];
	
	[...]
}

may be there is an other problem with your example code...
have you try to run it ?
system call should be used with parameters coming from userspace...

a way to perform that : http://www.ouah.org/LKM_HACKING.html#I.4.

regards

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
