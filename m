From: whitnl73@juno.com
Subject: Re: send messages to console
Date: Thu, 11 Dec 2003 10:42:42 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031211.104424.8.0.whitnl73@juno.com>
References: <200312111354.hBBDsWf04822@smtp.sunflower.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312111354.hBBDsWf04822@smtp.sunflower.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: rspr@sunflower.com
Cc: linux-newbie@vger.kernel.org

On Thu, 11 Dec 2003 rspr@sunflower.com wrote:

> Lawson,
>
> I recall you telling us how to send all [kernel?] messages to the console,
> so that when you do left alt+f8 if I recall correctly, would provide
> you with a lot of real-time information.
>
> Would you refresh my memory? What do I need to write, and where?
>
> I am running Debian 3, rel. 2 on a Dell Latitude LM laptop with a Pentium, 8 gb hdd, and 74 Mb RAM.
> -
Where is /etc/syslog.conf (described in man syslog.conf).  Here is what
I use to catch all syslog messages on tty12, and pppd/chat traffic on
tty11:

*.*							/dev/tty12
daemon,local2.*						/dev/tty11
daemon,local2.*						/var/log/ppp

# to catch only kernel messages to tty8:
kern.*							/dev/tty8

Probably the file /etc/syslog.conf has some examples too if you can't
make sense of the man page or don't have it handy.

Lawson
--
---oops---



________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
