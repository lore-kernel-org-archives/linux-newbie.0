From: whitnl73@juno.com
Subject: Re: file transfer via telnet
Date: Sat, 22 Feb 2003 10:59:09 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030222.120730.8.2.whitnl73@juno.com>
References: <5.1.0.14.1.20030222065155.00a194f0@pop.bsb.terra.com.br>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030222065155.00a194f0@pop.bsb.terra.com.br>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: tfga@terra.com.br
Cc: linux-newbie@vger.kernel.org

On Sat, 22 Feb 2003, Thiago F.G. Albuquerque wrote:

>
> >However, to downoad a file by telnet, capture stdout so:
> >
> >telnet hostname | tee logfile
> >....
> >uuencode remotefile remotefile
> >exit
> >tr -d "r" < logfile | uudecode
>
> Ok, I understand. But what is this 'tr -d "r"' for?

It is a typo for

tr -d "\r"

to remove the carriage returns.  Most versions of uudecode don't like
then, especially on the "end" line.  IIRC slackware had a "fromdos"
program to do it, but tr works just as well for uuencoded data - there
are no control characters in the data itself.

tr -d "r" shouldn't trash anything, but it won't do what I wanted it to,
either.  And I tested the whole thing before I put it in the mail wrong.
>
> Thiago
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
