From: Ray Olszewski <ray@comarre.com>
Subject: Re: test mail
Date: Sat, 18 May 2002 11:00:10 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020518180010.03a2c73c@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: mlmiller@charter.net, linux-newbie@vger.kernel.org

At 12:41 PM 5/18/02 -0500, Mike Miller wrote:
>It seems that majordomo doesn't like lurkers. I find that I have 
>to re-subscribe several times a year.

Mike--

I doubt your problem with this list derives from being a lurker. It is more
likely that your e-mail address suffers, as many do, from short periods of
being unreachable.

Although normal SMTP practice is to queue and retry when e-mail is
undeliverable, mailing lists have special problems in this area. People all
too commonly forget to unsubscribe from mailing lists when their e-mail
addresses change (or they have no opportunity to, for example if they are
laid off). A majordomo or Mailman list can get dozens of bounces each day
from a single bad address.

As a consequence, many list-management setups automatically unsubscribe
unreachable addresses *very* quickly, so that a service interruption of an
hour or two (hardly a rare thing) can knock you off the list. It's tough on
subscribers, but not doing something like this is murderously tough on list
managers. (I don't manage this list, but I have managed other lists in the
past, and I know the problems from experience.)

In your case, I did check and your mail is at risk of interruption. Your ISP
appears to provide a backup server in case its main mail server goes down,
but in reality both FQNs resolve to the same IP address ... so they don't
have a real backup if there is a service interruption. Here are the details:

collier:~$ host -t MX charter.net
charter.net             MX      5 mx01.charter.net
charter.net             MX      10 mail.charter.net
collier:~$ host mx01.charter.net
mx01.charter.net        A       209.225.8.223
collier:~$ host mail.charter.net
mail.charter.net        A       209.225.8.223
collier:~$


While I can't be certain of this -- onlt this list's manager really knows --
I'd guess that when people are unsubscribed unintentionally here, a
transient interruption in e-mail service at their end is the most likely cause.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
