From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "????
Date: Mon, 4 Jul 2005 13:36:47 -0400
Message-ID: <20050704173647.GA1158@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <200507040448.26223.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200507040448.26223.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

On 07-04, Richard Adams wrote:
> On Sunday 03 July 2005 19:23, Hal MacArgle wrote:
> > Greetings: Going bonkers with this after many reliable years of eMail
> > with the so called Unix From_ line; the envelope address; first line
> > of every message. (Or it used to be)
> >
> > Trying to upgrade to Slack10.1, 2.4.29, for other reasons I like, but
> > can't get mail working using either the bundled getmail 4.X or
> > fetchmail 6.X /or/ getmail 3.X as a trial.. Once you get them to
> > fetch the mail I find each message is sans the From_ line so Mutt
> > says sth like "Not a mail directory." This must be common as Googling
> > reports many queries but no solutions.. The latest, I have, Mail
> > HOWTO's still speak about From_ and the /var/spool/mail/$LOGIN
> > file... All my books explain the same..
> >
> > This "change" is probably for security reasons, whatever, but it has
> > me stumped.. Is there a valid recent tutorial on the subject??
> >
> > A small operation I don't want to change to Qmail, Postmail or any
> > others just to start the learning curve again..
> >
> > Any comments or suggestions.. And, Ray, I know this isn't very
> > detailed because I have at least six pages of notes so far.. <grin>


> 
> 
> Fetchmail seems to work ok here on a slack-10.1 machine, i did as Ray 
> suggested sent a mail to myself via my provider and retrived it with 
> fetchmail and i get a from header.
> 
> I have not configured fetchmail so there is no .fetchmailrc, could it be there 
> is a misconfiguration in your fetchmailrc file, possably a change from one 
> fetchmail version to another is causing the problem.??
> 

Greetings and thanks Richard.. Both fetchmail and getmail do the
same.. Please take a peek at my reply to Ray.. And; I tried fetchmail
with command line only entries and the messages still arrived with
the From: line instead of From_....

	Can I presume you are using the vanilla bare.i kernel and a
vanilla Slackware 10.1 setup?? Presuming the packages in that distrib
are being used and working fine really throws me a curve so I've got
to suspect my ISP is doing something to the incoming mail but ONLY
with Slack10.1's apps, NOT with the older apps I'm now using to keep
the eMail flowing... I'm going to setup yet another machine with
10.1, vanilla and see what I can learn.. If it IS the ISP's
shenanigans I'm stuck with my work around as I sure don't want to
change them as they're the best ISP we've ever had running SunSPARC,
but using QMail of course...




> Other than that i have no idea why you should get such a problem.

	We'll find out or drown in the process. <grin> Never a dull
moment anyway, eh?? I really like 10.1 so far and suspect you do
too..

APPRECIATE!!
---

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
