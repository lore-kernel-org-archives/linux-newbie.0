From: Jim Nelson <james4765@verizon.net>
Subject: Re: Heavy load of graphics
Date: Tue, 05 Oct 2004 06:04:18 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416271A2.8030304@verizon.net>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>hi
>
>well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
>
>i have seen not only on this sytem but the other one
>having 512 Mb RAM the most of the memory is lost or
>taken by graphics or xserver. on my system around 90%
>is occupied by the xsever and on the sys with 512 Mb
>RAM around 70% is occupied. how to reduce this load. i
>oculd not get any article or stuff relate to this . if
>we can do something in kernel or in some way reduce
>this load while working in GUI envt
>
>thanks
>
>Ankit
>  
>

Could you please post your ps -Al, /proc/meminfo, and lspci output?  I 
know Red Hat has a lot of standard daemons (PCMCIA, ISDN, etc) that are 
started by default - have you used chkconfig or redhat-config-services 
to shut off unneded services?

The kernel also uses a lot of free memory for I/O caching - even my P4 
w/ 1GB RAMBUS shows 90% memory consumption in /proc/meminfo.  Caching is 
a low-priority memory allocation - when the system needs memory for 
active processes, it should give the memory to the process.

BTW, unless you are using a framebuffer kernel-level driver, X is 
handled almost exclusively in userland.  On SPARC32 (for example) 
framebuffers are pretty much the only way to get X working, but mostly, 
XFree86 and the X.org server that comes with FC2 use mostly user-space 
drivers.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
