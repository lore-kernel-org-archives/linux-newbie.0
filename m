From: whitnl73@juno.com
Subject: Re: Setting standard arguments
Date: Fri, 13 Dec 2002 17:51:28 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021213.183853.134684296.0.whitnl73@juno.com>
References: <20021212161921.GA10853@neon.pearbough.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021212161921.GA10853@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: axel@pearbough.net
Cc: linux-newbie@vger.kernel.org

On Thu, 12 Dec 2002 axel@pearbough.net wrote:

> Hi,
>
> I have an Slackware installation and I'm using checkinstall to create and
> install slackware packages from sources.
> Now there are some options I use checkinstall with that I'd like
> checkinstall always to use.
> For example I call "checkinstall" and "checkinstall -S --nodoc --gzman
> --install=yes" shall be executed.
> Can this be done somehow with tcsh?

alias checkinstall='checkinstall -S --nodoc --gzman --install=yes'

would be one way.  put it in your shell startup file /etc/csh.cshrc
or ~/.tcshrc or so.  it won't take effect until the next shell startup
or you source the file you put it in.
>
> Thank you for your help,
> Axel Siebenwirth
> -
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
