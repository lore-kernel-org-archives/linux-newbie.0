From: whitnl73@juno.com
Subject: Re: safety/permissions
Date: Mon, 24 Mar 2003 16:50:54 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030324.165557.8.0.whitnl73@juno.com>
References: <15999.13082.237069.193180@ksys.rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15999.13082.237069.193180@ksys.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kurt.sys@rug.ac.be
Cc: linux-newbie@vger.kernel.org

On Mon, 24 Mar 2003, Kurt Sys wrote:

> Hello all,
>
> I don't know if there were (a lot) of responses to my last mail(s),
> since I again did some 'uncareful' things and I lost now and then some
> mail. Anyway, for the people who want to know, the problem is solved
> now completely. It was something with my fetchmail configuration. I
> don't fully understand why it used to work but it didn't work when I
> reinstalled Linux Debian, but ok... Here's the solution:
>
> My .fetchmailrc-file looks now like this:
> -----
> set postmaster "kurt"
> set bouncemail
> set spambounce
> set properties ""
> set daemon 500
> poll allserv.rug.ac.be with proto IMAP
>        user 'ksys' there with password 'xxxx' is 'kurt' here
>        options smtphost 'ksys.rug.ac.be' forcecr ssl fetchall
> -----
>
> I had to add the option:
> smtphost 'ksys.rug.ac.be'
>
> I guess another config-file, somewhere is /etc is wrong and fetchmail
> reads that file if it doesn't find the 'smtphost'-option. Could this
> be right?
>
Not exactly.  smtphost defaults to 'localhost'.
>
> Anyway,
> thanks for your help,
> Kurt.

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
