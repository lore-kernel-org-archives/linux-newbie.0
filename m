From: Chris Rose <offline@shaw.ca>
Subject: RE: Running fetchmail in daemon mode?
Date: Thu, 24 Apr 2003 15:07:33 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <009101c30aa5$867d3520$4b01a8c0@t9397.tjem.com>
References: <200304241807.h3OI7cUG011085@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200304241807.h3OI7cUG011085@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: brownh@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org

 
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Well, i get that command line result no matter whether i run fetchmail via the command line or via cron.

My cron command looks like this:
0,15,30,45 * * * * /usr/bin/fetchmail -s

My fetchmailrc reads:
defaults
poll pop3.server.net
        proto pop3
        interface eth0/192.168.1.50/255.255.255.0
        user "<username>"
        pass "mypassword"
        is <username>
        keep

Chris R.
=======
http://offline.pointclark.net/

- -----Original Message-----
From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Haines Brown
Sent: April 24, 2003 12:08 PM
To: offline@shaw.ca
Cc: carl@anexia.co.uk; linux-newbie@vger.kernel.org
Subject: Re: Running fetchmail in daemon mode?


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


- -
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-----BEGIN PGP SIGNATURE-----
Version: PGP 8.0

iQA/AwUBPqhSFcFBXq9qNmWaEQJ+LQCfXN/+MzCbsA2DDgam7d48d69M0ywAoNmj
8/psXV4wQF+BKD5jqgSu80vz
=IZKF
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
