From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Problems with modules after installing Kernel 2.5.75
Date: Mon, 15 Sep 2003 09:07:09 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309150907.09529.pa3gcu@zeelandnet.nl>
References: <200309142314.35140.lindevel@gmx.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309142314.35140.lindevel@gmx.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dennis Schridde <lindevel@gmx.net>, linux-newbie@vger.kernel.org

On Sunday 14 September 2003 23:14, Dennis Schridde wrote:
> Hi List!
> I have some Problems with module-symbols...
>
> I hav compiled linux-2.5.75 without Problems
> Then I copied arch/i386/boot/bzImage to /boot/vmlinuz-2.5.75 and System.map
> to /boot/System.map-2.5.75
>
> When I now restart my System with this Kernel, I get following
> "error"-message in /var/log/boot.msg:
> ####################################
> Inspecting /boot/System.map-2.5.75
> Loaded 26091 symbols from /boot/System.map-2.5.75.
> Symbols match kernel version 2.5.75.
> No module symbols loaded - kernel modules not enabled.

Theres your answer, you disabled modules during your configuration.

> [... ]
>
> modprobe: FATAL: Module char_major_4 not found.
> ####################################
> The modprobe error appears many times...

Of course it will because you configured without module support.

>
> I edited the modules.conf in the way it is described on
> http://www.dhaller.de/linux/multikernel.html
> (It's german, but hope you understand it anyway)

You can edit what you want but it will not help, go and reconfigure the kernel 
and start over.

Why would you want to use such an old "development kernel".?
.6.0{test-x} is out, you may want to try that.
Be sure to read the Changes file in the Documentation directory, and of course 
update your system accordinly otherwise it still wont work.

>
> I think I put the files at the wrong places...

You may or may not get more help at;
http://people.zeelandnet.nl/pa3gcu/kernel.htm

> Can you help me?
>
> Thanks,
> Dennis Schridde

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
