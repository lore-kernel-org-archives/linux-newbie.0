From: Carl <carl@anexia.co.uk>
Subject: Re: Running fetchmail in daemon mode?
Date: Thu, 24 Apr 2003 17:06:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030424155520.00b1eda0@interzone.anexia.co.uk>
References: <000801c30a6e$68d73340$4b01a8c0@t9397.tjem.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c30a6e$68d73340$4b01a8c0@t9397.tjem.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

At 08:33 24/04/2003 -0600, Chris Rose wrote:
> 
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>How do i get fetchmail to run in daemon mode?  Is it run on a per-user basis, or is it a system service that then checks all $HOME directories and performs the relevant fetchmalrc commands?
>
>Chris R.
>=======

To start fetchmail in daemon mode you use the -d switch with an argument greater then 0

i've only used fetchmail in daemon mode when doing multi-drop. i don't know whether you could use multiple
poll statements in the fetchmailrc, each one for a different user and/or mail server when in daemon mode.

I tend not to use daemon mode at all now but run it in cron job. I have had problems when you get
an authentication failure in daemon mode and it gets bunged up until you execute fetchmail again which
wakes it back up. Having a cronjob run every 10 minutes or so will do just as good a job as daemon mode.

I have setup a system on a site that had individual remote mailboxes for each user and maintained a list of usernames
that i would get mail for. I parsed over the list and tweaked my standard fetchmailrc with command line options
(username, password, server etc). This is not too friendly on a big site though.

Reading the fetchmail faq will give you some of the pro's and con's of the different setup types.

Regards
Carl
--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
