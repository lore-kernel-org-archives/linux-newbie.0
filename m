From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: About PID...???!!!
Date: Wed, 10 Sep 2003 11:21:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001601c377af$2fedc680$ccc252c6@hume>
References: <20030910142344.8594.qmail@web20008.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

They are assigned linearly, however once a pid is used, it is never reused
until the machine reboots.

A pid of 413 means that when that process was fork()'ed there had been 412
other processes already created. But remember every time you type ls, you've
run a process.

413 isn't a large pid at all. My linux box which I very rarely reboot is at
PIDs that start at 20000

I'm surprised that any program you start after the boot process is as low as
412.



----- Original Message -----
From: "Silambu Chelvan" <silambu_mdu@yahoo.com>
To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, September 10, 2003 10:23 AM
Subject: About PID...???!!!


> Hi All,
>
> I have been using linux for quite some time. I wonder
> how the PID is assigned by the kernel. Is there
> anything like range of PID for each user? In my
> machine I could see PIDs of 256, 389, 413 etc. Does
> this mean that there are almost 413 processes running?
>
> Please explain.....
>
> with regards,
> M. SilambuChelvan
>
> __________________________________
> Do you Yahoo!?
> Yahoo! SiteBuilder - Free, easy-to-use web site design software
> http://sitebuilder.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
