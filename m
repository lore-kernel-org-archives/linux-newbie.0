From: "Amin" <raihan@citech-bd.com>
Subject: Re: Network card and kernel module problems
Date: Mon, 3 Feb 2003 18:09:18 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000301c2cb7d$184dd620$eb6510ac@citechbd.com>
References: <000801c2cad3$a696b500$eb6510ac@citechbd.com> <03020216151302.19519@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Richard,

> Then that means the card was detected and the module was loaded, have
you
> done what it says.????

I have made sure that the hardware works.  In fact, I dual-boot Windows 98
on the same machine and Windows never has any problems with the card,
including now.

> You may need to use dhcpcd with options to obtain a IP# from your isp.
> IE, hostname ??.

Do you mean that I have to set up a DHCP server on my machine and
configure it ... ?  I sure hope there's an easier way than that ... .

I'm beginning to think I've mixed up different kernel module dependencies.
The short story is I need help sorting out the modules for use with my two
kernels: 2.4.18-14 and 2.4.18-14custom.  The long story is: when I
originally installed RH8.0 and found it didn't already support my NIC, I
recompiled the kernel with

make xconfig; make dep; make modules; make modules_install; make bzImage

and tried to boot the new kernel.  Eventually I got it to boot, but it
failed to detect/insert a lot of modules, which seems strange in
retrospect because I think I actually specified only one loadable module;
all the others were built-in.  I recompiled again, with the same results.
A lot of error messages courtesy of depmod as it tries to find module
dependencies --- things like input.o, soundcore.o, etc.  I've recompiled
twice after that, with a slightly different command order:

make xconfig; make dep; make bzImage; make modules; make modules_install

But still I get the same module dependency problems during boot.  Help!

Yawar Amin

----- Original Message -----
From: "pa3gcu" <pa3gcu@zeelandnet.nl>
To: "Amin" <raihan@citech-bd.com>; <linux-newbie@vger.kernel.org>
Sent: Sunday, 02 February, 2003 22:15
Subject: Re: Network card and kernel module problems

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
