From: Bob Swift <powerstation@shaw.ca>
Subject: Re: Running fetchmail in daemon mode?
Date: Thu, 24 Apr 2003 17:56:38 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304241756.38904.powerstation@shaw.ca>
References: <009101c30aa5$867d3520$4b01a8c0@t9397.tjem.com>
Reply-To: powerstation@shaw.ca
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <009101c30aa5$867d3520$4b01a8c0@t9397.tjem.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Rose <offline@shaw.ca>, linux-newbie list <linux-newbie@vger.kernel.org>

On Thursday 24 April 2003 15:07, Chris Rose wrote:

> My cron command looks like this:
> 0,15,30,45 * * * * /usr/bin/fetchmail -s

Looks okay to me...

> My fetchmailrc reads:
> defaults
> poll pop3.server.net
>         proto pop3
>         interface eth0/192.168.1.50/255.255.255.0
>         user "<username>"
>         pass "mypassword"
>         is <username>
>         keep

I'm guessing the "keep" option is what's causing your duplicate messages.  Try 
removing this and see if that helps.

I would also suggest removing the "interface" option unless you *really* need 
it.  Judging from the error message you're getting when running it from the 
command line, my guess would be that it's not doing anything for you anyway.

For what it's worth, I run fetchmail in daemon mode here, picking up mail from 
the 6 accounts I use, and have occasionally (about once a year) run into the 
"hanging" problem that someone else mentioned.  It hasn't bothered me enough 
(yet) to change it to a cron job.  <grin>

-- 
Bob Swift

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
