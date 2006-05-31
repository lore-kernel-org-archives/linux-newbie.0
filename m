From: chuck gelm <chuck@gelm.net>
Subject: Re: Symlink to Modem Vanishes
Date: Wed, 31 May 2006 14:17:17 -0400
Message-ID: <447DDDAD.3080804@gelm.net>
References: <200605300100.k4U10pbg003990@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200605300100.k4U10pbg003990@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: heisspf@skyinet.net
Cc: linux <linux-newbie@vger.kernel.org>

Peter wrote:

>Hi,
>
>Slackware 10.2 kernel 2.6.16
>
>Why is it that the symlink /dev/modem to /dev/ttyS0 is gone when machine is 
>halted and has to be made again after rebooting?
>
>I do not know when this started, definitely it did not happen before I got my 
>broadband connection a little over a year ago.
>
>Thanks & regards
>  
>
Hi, Peter:

...because it is removed during a boot?

Edit /etc/rc.d/rc.6 and put
 ls -l /dev/modem [> /home/modem.txt]
 ls -l /dev/ttyS0     [> /home/ttyS0.txt]
immediately in front of
 'reboot' and 'halt' to see if it is still there immediately before.
It is a few lines from the bottom on my Slackware 10.2 - 2.4.31

Boot from a 'live CD' and see of the link is there to see if it is being
removed during a boot.

-or-

put "ln -s /dev/modem /dev/ttyS0" at the bottom of your /etc/rc.d/rc.local.
(did ^                                         ^ I get that right?)

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
