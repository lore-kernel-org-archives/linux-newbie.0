From: Jude DaShiell <dashielljt@gmpexpress.net>
Subject: Re: Set the "mail system".
Date: Tue, 7 Jan 2003 20:05:49 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0301072001000.22192-100000@athame.gmpexpress.net>
References: <20030107190203.26D873E2F@sitemail.everyone.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030107190203.26D873E2F@sitemail.everyone.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jose Luis Alarcon <jlalarcon@linuxwaves.com>
Cc: linux-newbie@vger.kernel.org

Sounds like both fetchmail and sendmail need configuring or alternatively
to sendmail there's postfix or exim.  If the system runs sendmail the
package will have to be turned off and possibly uninstalled if you go with
one of the alternatives.  On this machine whenever I run as root one of
the things that happens when I start that account up is the internet
connection gets taken down then brought back up on reboot.  If you have
the linux howtos installed on your system take a look at
sendmail-address-rewriting-howto.  It has the necessary configuration
steps you'll ned to get sendmail configured.

-- 
Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
