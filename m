From: James Miller <jamtat@mailsnare.net>
Subject: Re: modprobe snd-cs4236 question
Date: Wed, 20 Oct 2004 12:31:10 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410201226370.1287@debian-emach>
References: <5.1.0.14.1.20041020083240.01f57b98@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041020083240.01f57b98@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 20 Oct 2004, Ray Olszewski wrote:

> In "standard Debian", the entries in /etc/modules get modprobe'd, not
> insmod'ed, so dependencies will be handled properly (assuming the
> dependencies file is up to date ... "standard Debian" runs depmod as part
> of the init process). You do put ONLY the names of the modules, plus any
> arguments, you want loaded in this file ... not either "insmod" or "modprobe".
>
> I haven't looked at Ubuntu so cannot tell you if it follows this "standard"
> procedure or not. But the "standard Debian" procedure just runs this
> feature from an ordinary init script (/etc/init.d/modutils), so you might
> check for a corresponding init script in Ubuntu.

Thanks for the clarification on /etc/modules and insmod/modprobe, Ray.
Looks like adding snd-cs4236 to /etc/modules is the answer for Ubuntu,
just as for "standard Debian."  There *is* an /etc/init.d/modutils script
in Ubuntu, btw.  More help requests on other topics will likely follow
soon.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
