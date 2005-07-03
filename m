From: Ray Olszewski <ray@comarre.com>
Subject: Re: What happened to "From "????
Date: Sun, 03 Jul 2005 12:49:07 -0700
Message-ID: <42C84133.7030808@comarre.com>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050703172347.GA485@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
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

As far as I can tell, Hal, based on a fairly quick check, the "From " 
line still is being used in the way you (and I) are accustomed to. And 
the Debian packaging system's buglist doesn't show anything like what 
you see for its current version of fetchmail (6.2.5-13 in Sid/unstable) 
or getmail4 (4.3.10-1 in Sid/unstable). Debian doesn't seem to have 
getmail3 (at least not in Sid).

So ... unless you only want help from fellow Slackers, you should 
provide just a bit more information.

1. What are the actual versions you are using (not something.X)? Are 
they current?

2. In your Googling, did you find this to be a problem specific to 
Slackware or do other Linux distros also have users discussing this problem?

3. Most interesting ... in an actual, downloaded mail file, is the "From 
" line present or not? (Open it with vi or whatever text editor you 
like, and simply take a look.) If not, is there *any* line that looks 
like a message delimiter in there? If there is, please post a sample.

4. If you can, try sending a local message from one account to another 
(one that won't go through the SMTP server that fetchmail downloads from 
... assuming you have a setup that lets you do this). See if such a 
message has the same problem.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
