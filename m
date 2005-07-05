From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "???
Date: Tue, 5 Jul 2005 11:35:52 -0400
Message-ID: <20050705153552.GA1623@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <42C84133.7030808@comarre.com> <20050704172331.GA1151@lnx2.w8mch.ampr.org> <42C9A4DE.8000601@comarre.com> <20050705133211.GA1165@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20050705133211.GA1165@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: ray@comarre.com, heisspf@meridian.ph, pa3gcu@zeelandnet.nl

Hold the phone; I found a fix or, at least, a work around..

Apparently default getmail-4.2.5 wants a QMail type Maildir to work
with. The thread will show that I tried all kinds of ways to make
getmail NOT change the From_  to From: -- to no avail up till now..

Re-reading the getmail docs, more carefully this time, I discovered
another parameter "MultiDestination" that I, previously, bypassed
because I didn't need more than one destination..

However, if I use that parameter with the following entry:
destination=("/var/spool/mail/haltec", )
all falls into place.. Of course I have a different
~/.getmail/getmailrc file for each user... Getmail now fetches the
mail with the "proper", to me, <grin> From_ line....

Getmail reports one parse error in the above but does work well
anyway.. Maybe if I, actually, add another destination it wont?

On to the next problem?? APPRECIATE..

	BTW Peter, my first mail to your address bounced?? "No such
	user."



    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
