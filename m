From: Jose Luis Alarcon <jlalarcon@linuxwaves.com>
Subject: Re: 2.5.59: Kernel: No module found in object
Date: Sat, 1 Mar 2003 09:05:24 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030301170524.C50674635@sitemail.everyone.net>
Reply-To: jlalarcon@linuxwaves.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>
Cc: linux-newbie@vger.kernel.org

--- "Eng Se-Hsieng" <g0202512@nus.edu.sg> wrote:
>Dear all,
>
>I have to get the Nokia D211 working in the 2.5.59 kernel. I tweaked the
>driver files (which are meant for 2.4.x kernels) and it compiles and
>installs fine but when I insert the PCMCIA device, I get:
>
>cardmgr[1302]: socket 0: Nokia D211
>cardmgr[1302]: executing: 'modprobe nokia_cs'
>cardmgr[1302]: +FATAL: Module nokia_cs not found
>cardmgr[1302]: modprobe exited with status 1
>cardmgr[1302]: executing: 'insmod /lib/modules/2.5.59/pcmcia/nokia_cs.o'
>kernel: No module found in object
>cardmgr[1302]: +Error inserting '/lib/modules/2.5.59/pcmcia/nokia_cs.o':
>-1 Invalid module format
>cardmgr[1302]: insmod exited with status 1
>cardmgr[1302]: get dev info on socket 0 failed: Resource temporarily
>unavailable.
>
>I would really appreciate any help on this. 
>
>Thank you.
>
>Regards,
>Se-Hsieng
>(linux-newbie)
>-

  Hi Eng.

  If your decission of use 2.5.59 kernel is definitive, you must visit
this web page without excuses: http://kernelnewbies.org

  This group have a very nice IRC channel in irc.oftc.net. The channel
name is #kernelnewbies. They have too a very useful mailing list about
how begin with the Linux kernel programming, you can found information
about how subscribe in http://kernelnewbies.org/mailinglist.php3

  Before quest in kernelnewbies.org formats i can tell you, that like
Richard Adams says, the modules extructures and code is rewritting for
the 2.5.47 and up. Now is obligatory have instaled a new package named
module-init-tools (the more recent version is 0.9.10) for manage
modules, you can find it in:

http://www.kernel.org/pub/linux/kernel/people/rusty/modules

  I hope this help, and once you have module-init-tools in your system,
you get manage the modules correctly.

  Regards.

  Jose.


http://linuxespana.scripterz.org

Debian GNU/Linux 'Sid' Kernel 2.5.62 Ext3.
ESware Linux 365 Kernel 2.5.62 ReiserFS.
Registered Linux User #213309.
Memories..... You are talking about memories. 
Rick Deckard. Blade Runner.

_____________________________________________________________
Get your spam-free, Linux email now --> http://www.LinuxWaves.com
Join Linux discussions --> http://Community.LinuxWaves.com

_____________________________________________________________
Select your own custom email address for FREE! Get you@yourchoice.com w/No Ads, 6MB, POP & more! http://www.everyone.net/selectmail?campaign=tag
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
