From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Running fetchmail in daemon mode?
Date: Thu, 24 Apr 2003 14:07:38 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304241807.h3OI7cUG011085@hartford-hwp.com>
References: <003e01c30a7f$2a6b1110$4b01a8c0@t9397.tjem.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <003e01c30a7f$2a6b1110$4b01a8c0@t9397.tjem.com> (message from
	Chris Rose on Thu, 24 Apr 2003 10:32:58 -0600)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: offline@shaw.ca
Cc: carl@anexia.co.uk, linux-newbie@vger.kernel.org

> The issue that i run into with the cron job is twofold:
> 
> One: I get duplicate messages.  Right now, i'm passing mail to
> postfix-maildrop(Maildir/)-courierIMAP, and i get as many as 10
> copies - already marked as read - of mail messages that have been
> sitting there a while.
> 
> Two: Fetchmail, when i run it from the command line, gives me a
> console message: fetchmail: interface option is only supported under
> Linux (without IPv6) and FreeBSD
> 
> This message gets mailed to me every time that fetchmail runs, which
> you can imagine isn't too helpful :/
> 
> Can anyone suggest a way to resolve these issues?

Chris,

I'm a bit unclear about your message, for you say you have two
problems with a cron job, and then #2 is running it from command line.

In any case, I don't have either problem. I run fetchmail-5.9.0-16
under RH8.0.

In my cron file I have:

  # every hour:
  0 */1 * * * fetchmail

In my ~/.fetchmailrc:

  # This sets last resort mail recipient
  set postmaster "postmaster"

  poll pop.xxx.com 
  proto POP3

  user "xxx@xxx" 
  password "xxx" 

  # User options to screen out big messages using a fetchmail bug
  limit 50000	
  flush

When I run fetchmail from a command line, the only feedback I get is
its report that it is reading message and a new mail report. 

Haines Brown


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
