From: Ray Olszewski <ray@comarre.com>
Subject: Re: Networking issue
Date: Thu, 02 Jan 2003 23:09:32 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030102230450.0211b230@celine>
References: <200301031457.35741.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301031457.35741.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:57 PM 1/3/03 +0930, Adam Luchjenbroers wrote:
[...]
> > 4. When gtelnet "then fails", does it display any sort of error message? If
> > you are interpreting no response as a failure, how long are you waiting?
>
>I wait until the status display goes from displaying "connected" until it
>  goes to "not connected"
>
>tried to connect using the ssh command, got this error
>
>ssh_exchange_identification: Connection closed by remote host

This (combined with other details of your reply, omitted here) suggests 
that the problem is authentication. How do you have sshd set to expect 
connections to authenticate? (The choices are in sshd's config file, 
probably /etc/ssh/sshd_conf .) How do you have gtelnet set to attempt to 
authenticate (I'm not familiar with this client so can't tell you how to 
check this)?

[...]
>On another note, I corrected the system clock on tthe server (it thought it
>was 1998) now one of my user accounts has expired, how do I reactiveate it.

Accounts don't normally expire, so either I am misunderstanding your 
description or you are using something peculiar to Mandrake 9.0. In either 
case, I need to leave it to someone else to help with this one.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
