From: "Whitnl73@juno.com" <fido@tcob1.net>
Subject: Re: ppp-go anomoly??
Date: Wednesday, 05 Feb 2003 15:39:00 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_030205_153900__40f2580d@racenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All

On Wed, 5 Feb 2003, Ray Olszewski wrote:

> Hal -- Look at the logs; usually, pppd (and chat, if your setup uses it)
> reports more detail on failures there than what you are seeing at the
> command line. It could be something like LCP negotiation timing out.
> Speculating as to why it happens sometimes but not others is hopeless until
> you get a better handle on what "it" is. If the logs aren't reporting
> enough connection detail, raise temporarily the level of logging that pppd
> does (the "debug" option).
>
Right, and chat -v for the chat script.  You might like something like
this in /etc/syslogconf:

daemon,local2.*						/dev/tty11
daemon,local2.*						/var/log/ppp
#that catches chat and pppd


restart syslogd after.

chat -v logs every thing sent and received by chat; sorry, I don't know
where-all pppsetup puts scripts and options.  It is easier for me to
write ppp options and chat scripts myself than to use some setup
program.


Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
