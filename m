From: Dennis Schridde <lindevel@gmx.net>
Subject: Re: Kernel 2.6.0-test9 installation
Date: Wed, 12 Nov 2003 00:17:49 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200311120017.49932.lindevel@gmx.net>
References: <0A473B2DA7DBE5A4793E26CBF60D78B3@jlalarcon.Madera.zzn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0A473B2DA7DBE5A4793E26CBF60D78B3@jlalarcon.Madera.zzn.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

>  The way of compile the 2.6 kernel is radically changed. Now
> you only must do:
>
> .../linux-2.6.0-test9 # make
> .../linux-2.6.0-test9 # make modules_install

Ok, No problems at this point...
(I now compiled reiserfs into the Kernel, not as a module)

>   Another point about it is that now you need another tool,
> different than modutils...The new tool is named module-init-tools,
> you can search about it with Google.

Installed Version 0.9.14:
	./configure --prefix=/
	make
	make install
(Description from LinuxFromScratch)

Now I rebooted and after that nearly everything did not work.
I think the cause are these lines (from /var/log/boot.msg) :
	Inspecting /boot/System.map-2.6.0-test9
	Loaded 25114 symbols from /boot/System.map-2.6.0-test9.
	Symbols match kernel version 2.6.0.
	No module symbols loaded - kernel modules not enabled.

What does that mean?
(This Problem happened to me some time ago with linux-2.5.x (see the
archives..), but nobody could help me.)

Dennis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
