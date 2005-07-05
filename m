From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "???
Date: Tue, 5 Jul 2005 09:32:11 -0400
Message-ID: <20050705133211.GA1165@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <42C84133.7030808@comarre.com> <20050704172331.GA1151@lnx2.w8mch.ampr.org> <42C9A4DE.8000601@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <42C9A4DE.8000601@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org


On 07-04, Ray Olszewski wrote:
> Hal MacArgle wrote:
> [...]
> >>3. Most interesting ... in an actual, downloaded mail file, is the "From 
> >>" line present or not? (Open it with vi or whatever text editor you 
> >>like, and simply take a look.) If not, is there *any* line that looks 
> >>like a message delimiter in there? If there is, please post a sample.
> >
> >
> >	Cant post a sample because, in despiration <grin>, I purged
> >all the tests to start with a level playing field.. Can only mention
> >that as originally setup all the messages had: From: as the very
> >first word, whereas, when working "properly", now with the older
> >apps; the first word is From_.. Of course I mean; From(spc) that's as
> >old as Unix IIRC... I've seen it listed as "From_" many times so 
> >thought that proper...


> 
> When you refer to the fist line, do you mean a line that resembles the 
> following (taken from a raw mail file here):
> 
> 	From REI@email.rei.com Mon Jul 04 09:46:34 2005

	Yes; typically, your msg was:

From linux-newbie-owner@vger.kernel.org Tue Jul  5 12:13:49 2005

	During the "problem" time that first string would have been:
From: thence the rest as above... Both Mutt and MailX balked at
that.. And Peter Heiss says that his incoming mail has From: as the
first string., but didn't mention the mailer used.. I've asked him..
And, apparently, your Debian lashup uses the "older" and "normal"
way to separate messages.. Maybe Sid different than Woody??


> Or do you mean that a different sort of line, but one beginning with 
> "From:", is the first line now?

	Yes, the normal From_ was viewed as From:




> I'm guessing you mean the first of these, and if so, the culprit is most 
> likely a bad sendmail-style rewriting rule somewhere in a config file 
> for something ... whether fetchmail, getmail, sendmail, or something 
> else (do you use procmail or an equivalent with this setup, for 
> instance?) I cannot say.

	The "problem" run did not have sendmail installed at all
because getmail doesn't require it for local mail delivery..
Fetchmail requires either sendmail or procmail for delivery so I just
let it use procmail for the tests..




> Check the various apps' config files for any rules that involve the word 
> "From" and see if you hit the jackpot.

	I grepped From_ and From: till blue in the face and probably
got so confused that that added to my confusion.. <grin> I did find
one possible problem along those lines though; in that the newer
version of Mutt's .muttrc file has some added parameters that are not
in the older .muttrc file I was using for convenience.. One; set
envelope_from=no (the default) may or may not have a bearing.. I plan
on trying that soon.. To add to the confusion I can't use the newest
Sendmail because it doesn't support masquerades, probably for
security, which I feel I need... It never ends, eh??




> Beyond that ... are you *certain* that both apps are giving you the 
> problem? Did you start with a clean inbox each time you tested, or might 
> (say) existing messages with the getmail problem have still been present 
> during the fetchmail test?

	This was a clean fresh install in a newly setup partition..
When you say clean "inbox" do you mean; /var/spool/mail/haltec?? If
so yes, because Slackware's install does not do this automatically..
When Mutt is invoked for the first time it reminds you to do this on
your own... I've asked Peter what his lashup looks like since he's
using the same Slack distrib for eMail.. I note that QMail type
mailboxes use the designation "Maildir" and that directory contains
at least 3 subdirectories, names sth like "cur" and two others.. Very
confusing, that's why I'm looking for a down to earth tutorial..
Hashing around in the dark isn't very productive..




> And the last thing I can think of is to run tcpdump, or something 
> similar, to capture the packets your ISP actually sends, to see if the 
> "From: is in them, rather then being rewritten locally.

	That's an excellent suggestion.. I'm learning. <grin> The
normal report, in my case, for incoming mail is from Getmail and is,
for all practical purposes, the same with either the getmail2 or
getmail3/4 series.. The only diff, of course, is that getmail2 stores
the mail with From_ and getmail3 or 4 with From:... I, maybe, should
talk to the ISP except they're so busy and only one or two there know
Unix, even though they run SunSPARC..

	At any rate I have a basis now for more intelligent hacking
to see what cooks.. I suspect; a lot of it is ME.... Ugh.. What was
it that someone said, "A little knowledge is a dangerous thing?"
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
