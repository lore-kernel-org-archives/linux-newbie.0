From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I install my own service
Date: Tue, 02 Dec 2003 22:07:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031202220453.01f01870@celine>
References: <1070306845.2760.4.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1070306845.2760.4.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:43 PM 12/2/2003 -0500, Ramzez wrote:
>HI friends...
>
>   please, how can I install my own service (i'm using RH9.0).
>
>   I make my script in /etc/rc.d/init.d ... something like this:
>-------------------------- killMyTemp -----------------------
>         #!/bin/sh
>         rm -rf /home/FamilyGroup/tmp/*
>--------------------------
>   then I make a soft-link in /etc/rc.d/rc5.d ...
>   again, something like: ln -s ../init.d/killMyTemp K99killMyTemp ...
>
>   But when I turn-off my PC, this script didn't run; why?


Assuming that by "turn-off" you mean run the "shutdown" or "halt" command 
... it does not run because shutdown is runlevel 6, not runlevel 5 (or at 
least it is on every Linux system I've ever used ... I haven't used RH in a 
very long time, though). If you look in (probably - I don't know RH's 
organization) /etc/rc.d/rc6.d/, you will see the symlinks for the init 
scripts that run as part of shutdown.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
