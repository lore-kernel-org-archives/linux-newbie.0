From: whitnl73@juno.com
Subject: Re: Delete certain text in multiple files (sed/awk/?)
Date: Sat, 4 Jan 2003 15:55:03 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104.155611.134684296.0.whitnl73@juno.com>
References: <20030104195323.GA15354@neon.pearbough.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030104195323.GA15354@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: axel@pearbough.net
Cc: linux-newbie@vger.kernel.org

On Sat, 4 Jan 2003 axel@pearbough.net wrote:

> Hi,
>
> i have a little problem. There is a source tree with many subdirectories
> each with its own Makefile. My compiler is gcc 3.3 which produces more
> warnings that 3.2 and before. But the Makefiles all contain the -Werror flag
> which constantly causes my build to fail. Then I edit the corresponding
> Makefile manually.
> What I'd like to do is automatically delete all occurences of -Werror
> recursively in all Makefiles. I have looked at sed, awk, regular
> expressions, but it all seems fairly complicated,
> so I am now hoping that maybe someone of you helpful linux users can give me
> a little hint on what I need to write i.e. how a shell/perl script would
> need to look like to do exactly what I need.
>
>
> Thank you very much in advance,
> Axel Siebenwirth

Well, _I_ would do it like this:

find -name 'Makefile' |xargs -i sh -c "sed 's/-Werror//g' {} |safe {}"

You can find safe here:
http://www.ibiblio.org/pub/Linux/utils/text/safe-2.0.9.1.tar.gz

if 2.0.9.1 isn't there yet, 2.0.9 will do, I only changed my email
address in the doco.

This also seems to work:

find -name 'Makefile'|xargs -i perl -pi -e 's/-Werror//g' {}

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
