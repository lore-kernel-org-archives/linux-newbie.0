From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Network card and kernel module problems
Date: Mon, 3 Feb 2003 16:55:08 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020316550804.19519@unix.pa3gcu>
References: <000801c2cad3$a696b500$eb6510ac@citechbd.com> <03020216151302.19519@unix.pa3gcu> <000301c2cb7d$184dd620$eb6510ac@citechbd.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000301c2cb7d$184dd620$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

On Monday 03 February 2003 12:09, Amin wrote:
> Hi Richard,
>
> > Then that means the card was detected and the module was loaded, have
>
> you
>
> > done what it says.????
>
> I have made sure that the hardware works.  In fact, I dual-boot Windows 98
> on the same machine and Windows never has any problems with the card,
> including now.
>
> > You may need to use dhcpcd with options to obtain a IP# from your isp.
> > IE, hostname ??.
>
> Do you mean that I have to set up a DHCP server on my machine and
> configure it ... ?  I sure hope there's an easier way than that ... .

No, dhcpcd is the "client" that contacts a server, the server being your 
ISP's machine. So no you dont need to setup a server.
I was under the impression that you use dhcp top obtain a IP#.

>
> I'm beginning to think I've mixed up different kernel module dependencies.
> The short story is I need help sorting out the modules for use with my two
> kernels: 2.4.18-14 and 2.4.18-14custom.  The long story is: when I
> originally installed RH8.0 and found it didn't already support my NIC, I
> recompiled the kernel with

Dependancies is a big word when it comes to modules, most dependacy problems 
arise because of misconfiguration in /etc/modules.conf and not when compiling 
a new kernel, or tho' that can sometimes be the case.

>
> make xconfig; make dep; make modules; make modules_install; make bzImage
>
> and tried to boot the new kernel.  Eventually I got it to boot, but it
> failed to detect/insert a lot of modules, which seems strange in
> retrospect because I think I actually specified only one loadable module;
> all the others were built-in.  I recompiled again, with the same results.
> A lot of error messages courtesy of depmod as it tries to find module
> dependencies --- things like input.o, soundcore.o, etc.  I've recompiled
> twice after that, with a slightly different command order:


AFAIK, all recent distribution kernel verstions will support most all 
ethernet cards, unless of course your card is the newest of the newest.
So this means you should be able to use the kernel which was installed when 
you installed Linux, be it what ever distro...
What you must make sure is that "modprobe" knows which driver to use, this 
can be done via /etc/modules.conf

alias eth0 8139too # a Realtech 8139A/B or C type chip.

To be honest i have forgotten what type of card you have and all your other 
details, i cleaned out my mailbox this morning and i seem to have deleted 
mails replyed too as well.

>
> make xconfig; make dep; make bzImage; make modules; make modules_install

Use;
make dep clean bzImage modules modules_install

>
> But still I get the same module dependency problems during boot.  Help!

It would be better to show us the error messages, then we can advise more 
precisly, to say anything now would be pure guess work.


>
> Yawar Amin
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
