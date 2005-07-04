From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "???
Date: Mon, 4 Jul 2005 13:23:31 -0400
Message-ID: <20050704172331.GA1151@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <42C84133.7030808@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <42C84133.7030808@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 07-03, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >Greetings: Going bonkers with this after many reliable years of eMail
> >with the so called Unix From_ line; the envelope address; first line
> >of every message. (Or it used to be)
> >
> >Trying to upgrade to Slack10.1, 2.4.29, for other reasons I like, but
> >can't get mail working using either the bundled getmail 4.X or
> >fetchmail 6.X /or/ getmail 3.X as a trial.. Once you get them to
> >fetch the mail I find each message is sans the From_ line so Mutt
> >says sth like "Not a mail directory." This must be common as Googling
> >reports many queries but no solutions.. The latest, I have, Mail
> >HOWTO's still speak about From_ and the /var/spool/mail/$LOGIN
> >file... All my books explain the same..
> >
> >This "change" is probably for security reasons, whatever, but it has
> >me stumped.. Is there a valid recent tutorial on the subject??
> >
> >A small operation I don't want to change to Qmail, Postmail or any
> >others just to start the learning curve again..
> >
> >Any comments or suggestions.. And, Ray, I know this isn't very
> >detailed because I have at least six pages of notes so far.. <grin>
> 
> As far as I can tell, Hal, based on a fairly quick check, the "From " 
> line still is being used in the way you (and I) are accustomed to. And 
> the Debian packaging system's buglist doesn't show anything like what 
> you see for its current version of fetchmail (6.2.5-13 in Sid/unstable) 
> or getmail4 (4.3.10-1 in Sid/unstable). Debian doesn't seem to have 
> getmail3 (at least not in Sid).

	Thanks for your reply Ray and I waited for Richard to
comment: Apparently, even though others running non-Slackware
distribs, as noted on the Web, is only a coincidence.. Since Richard
is running "out of the box" with fetchmail, there is something wrong
here, even though I've installed a vanilla Slack kernel, bare.i...
But what??

	Note my .signature; I'm using Slack10.1, 2.4.29, now BUT with
the older getmail-2.3.11 and sendmail-8.11.4; and it's working fine:
The messages are in /var/spool/mail/haltec and each and every one has
the first line "From_...." (I've not tried the old fetchmail because I
like to use getmail exclusively and was only trying fetchmail to
troubleshoot.. Fetchmail requires either sendmail or procmail to
deliver the messages anyway whereas getmail doesn't, of course.)

	With the bundled apps in Slack10.1;
getmail-4.2.5-noarch-1.tgz -- sendmail-8.13.3-i486.tgz --
fetchmail-6.2.5-i486-1.tgz and procmail-3.15.2-i386-1.tgz; all the
messages either using getmail /or/ fetchmail have the first line
From: (plus the regular ip address and time/date of course... When I
try to look at the /var/spool/mail/haltec file; Mutt says "not a
mailbox." MailX says, "no mail."




> So ... unless you only want help from fellow Slackers, you should 
> provide just a bit more information.
> 
> 1. What are the actual versions you are using (not something.X)? Are 
> they current?

	Hopefully answered above. <grin>




> 2. In your Googling, did you find this to be a problem specific to 
> Slackware or do other Linux distros also have users discussing this problem?

	I saw no mention of Slackware at all just some nasty flames
about the situation all from other distributions that may, or may
not, be derived from Slackware but were all GUI types AFAIK...




> 3. Most interesting ... in an actual, downloaded mail file, is the "From 
> " line present or not? (Open it with vi or whatever text editor you 
> like, and simply take a look.) If not, is there *any* line that looks 
> like a message delimiter in there? If there is, please post a sample.

	Cant post a sample because, in despiration <grin>, I purged
all the tests to start with a level playing field.. Can only mention
that as originally setup all the messages had: From: as the very
first word, whereas, when working "properly", now with the older
apps; the first word is From_.. Of course I mean; From(spc) that's as
old as Unix IIRC... I've seen it listed as "From_" many times so 
thought that proper...




> 4. If you can, try sending a local message from one account to another 
> (one that won't go through the SMTP server that fetchmail downloads from 
> .. assuming you have a setup that lets you do this). See if such a 
> message has the same problem.

	I can't try this right now, but local mail from one user to
another is not a problem with my present "old" lashup... That's a
good thought though: Perhaps the ISP, with the newer apps only, is
changing the INet's From_ to From: somewhere along the line.. I note
my ISP uses QMail, so that could be the problem because all this new
stuff about having each mail message as a separate file was derived
from QMail, IIRC... At any rate, whatever, I'm locked into what I'm
using until I can sort more of this out.. Meanwhile the learning
curve bounces around, eh??

	I would still like to find a tutorial about why the QMail
message method, etc and so forth.. Maybe it's worth getting involved,
eh?? I did find much mention of "mbox" "Maildir" and other things
guaranteed to confuse this tired old mind... The spammers have done
their homework well it seems. <grin>

	APPRECIATE!!
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
