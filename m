From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Problems with modules after installing Kernel 2.5.75
Date: Sun, 14 Sep 2003 22:47:06 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0309142231390.902@ppg_penguin>
References: <200309142314.35140.lindevel@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309142314.35140.lindevel@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dennis Schridde <lindevel@gmx.net>
Cc: linux-newbie@vger.kernel.org

On Sun, 14 Sep 2003, Dennis Schridde wrote:

> Hi List!
> I have some Problems with module-symbols...
>
> I hav compiled linux-2.5.75 without Problems

 Why ?  We're into 2.6.0-test now, 2.5.75 is comparatively ancient. By
all means keep with this version until you have it sonfigured to your
satisfaction, but there have been quite a lot of changes since 2.5.75.

> Then I copied arch/i386/boot/bzImage to /boot/vmlinuz-2.5.75 and System.map to
> /boot/System.map-2.5.75
>
> When I now restart my System with this Kernel, I get following "error"-message
> in /var/log/boot.msg:
> ####################################
> Inspecting /boot/System.map-2.5.75
> Loaded 26091 symbols from /boot/System.map-2.5.75.
> Symbols match kernel version 2.5.75.
> No module symbols loaded - kernel modules not enabled.
>
> [... ]
>

 Sounds as if you compiled everything into the kernel, instead of
building some things as modules.  If you use `make menuconfig', you need
to set things to 'm' instead of 'y' (been there, inadvertently built
everything in to my first 2.5 kernel). - I see you've got a .config that
works, so that's not a bad start for 2.5/2.6.

> modprobe: FATAL: Module char_major_4 not found.
> ####################################
> The modprobe error appears many times...
>

 I assume this is because you've built it without modules, but did you
realise late-2.5 and 2.6 kernels will need Rusty's module init tools ?
(look in Documentation/ for the file setting out what you need, the
module tools are available on kernel.org mirrors in the people/rusty
directory.)

> I edited the modules.conf in the way it is described on
> http://www.dhaller.de/linux/multikernel.html
> (It's german, but hope you understand it anyway)
>

 I've never before seen anything like this (`uname -r` in the name of
the modules.conf file), I was going to say that I couldn't see why
anybody would do that, but I guess it can be useful in going to 2.5/2.6
(e.g. CDR/W drive using ide-scsi in 2.4 and ide-cd in 2.6).  But I don't
think this is the problem, it looks as if you haven't built the modules
so you can't load them.

> I think I put the files at the wrong places...
> Can you help me?
>
> Thanks,
> Dennis Schridde
>

Ken
-- 
<censored>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
