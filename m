From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: What happened to "From "????
Date: Mon, 4 Jul 2005 04:48:26 +0200
Message-ID: <200507040448.26223.pa3gcu@zeelandnet.nl>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050703172347.GA485@lnx2.w8mch.ampr.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Sunday 03 July 2005 19:23, Hal MacArgle wrote:
> Greetings: Going bonkers with this after many reliable years of eMail
> with the so called Unix From_ line; the envelope address; first line
> of every message. (Or it used to be)
>
> Trying to upgrade to Slack10.1, 2.4.29, for other reasons I like, but
> can't get mail working using either the bundled getmail 4.X or
> fetchmail 6.X /or/ getmail 3.X as a trial.. Once you get them to
> fetch the mail I find each message is sans the From_ line so Mutt
> says sth like "Not a mail directory." This must be common as Googling
> reports many queries but no solutions.. The latest, I have, Mail
> HOWTO's still speak about From_ and the /var/spool/mail/$LOGIN
> file... All my books explain the same..
>
> This "change" is probably for security reasons, whatever, but it has
> me stumped.. Is there a valid recent tutorial on the subject??
>
> A small operation I don't want to change to Qmail, Postmail or any
> others just to start the learning curve again..
>
> Any comments or suggestions.. And, Ray, I know this isn't very
> detailed because I have at least six pages of notes so far.. <grin>


Fetchmail seems to work ok here on a slack-10.1 machine, i did as Ray 
suggested sent a mail to myself via my provider and retrived it with 
fetchmail and i get a from header.

I have not configured fetchmail so there is no .fetchmailrc, could it be there 
is a misconfiguration in your fetchmailrc file, possably a change from one 
fetchmail version to another is causing the problem.??

Other than that i have no idea why you should get such a problem.

--
Regards Richard.


> TIA and Cheers,
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
