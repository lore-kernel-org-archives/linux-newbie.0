From: whitnl73@juno.com
Subject: Re: PC speaker 'alert'
Date: Wed, 19 Feb 2003 21:33:41 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030219.215413.8.0.whitnl73@juno.com>
References: <3E540B98.190D9D8D@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E540B98.190D9D8D@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org

On Wed, 19 Feb 2003, Chuck Gelm wrote:

> Howdy, Y'all:
>
>  I'm monitoring my /var/log/messages file and I'd
> like to have the PC's speaker beep when there is a new
> entry.  I am monitoring 'DENY'ed packets.  I am now
> using 'cut' and 'grep' and 'tail' to show the last
> 11 denied packets.  How can I cause the PC speaker to
> beep when the last 11 lines are different the the
> previous 11 lines.
>
> Here is what I am using now:
>
> #!/bin/sh
> #
> grep DENY /var/log/messages > t
> cut -f2 -d\= t > u
> cut -f2 -d" " u > v
> cut -f1 -d: v > w

tail -n 11 w | diff -- - deny.txt >/dev/null 2>&1 || echo -ne "\a"

> tail -n 11 w > deny.txt
> clear
> echo ""
> cat deny.txt
> echo ""
> chmod 777 deny.txt   ; v
> chgrp users deny.txt ; so that my other workstations can see
>
> Regards, Chuck
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
