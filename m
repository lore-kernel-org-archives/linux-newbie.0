From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: permission for alias file
Date: Mon, 6 Jan 2003 13:07:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301061807.h06I7iK6000863@hartford-hwp.com>
References: <5.1.0.14.1.20030106090035.021e3860@celine>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030106090035.021e3860@celine> (message from Ray
	Olszewski on Mon, 06 Jan 2003 09:09:23 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> check to produce, but you might want to check the possibility anyway. Try 
> mode 644, instead of the 777 you say you are using, and see if that helps.

Unfortuntely, it didn't help (test.aliases is now rw_r__r__, which is
about what I started out with).
 
> It is also possible that you have your MTA configued to disallow pointing 
> aliases to files. I believe some MTAs can do that, as a security option. 
> The details would depend, of course, on which MTA you are using.

I'm using sendmail, but had to reconfigure it before I could send any
mail from RedHat 8.0. I just got it to work this morning. I was
generating a localhost.com destination address because of, apparently, a
sendmail bug.

> PS -- Your system is sending that garbled 
> "To:  linux-newbie@hartford-hwp.com" header again.

Argh!! I'm assuming this is another sendmail configuration issue. I'll
be pursuing both problems avidly in the appropriate forum.

But to do that, I'd appreciate a little more info about my
header. This message goes to you personally and to the list. Does the
erroneous To: line appear in both? I must assume it appears in
addition to the proper address, for how would the message get arrive
at all with the garbage address?

Ray, would you send me personally a copy of the entire header. That
would be a big help.

Haines

> At 11:52 AM 1/6/03 -0500, Haines Brown wrote:
> >When I use /etc/aliases for single address, it works ok (as I'm now
> >doing), but if there is a pointer to a file of addresses, it fails
> >because of permisions.
> >
> >For example, in /etc/aliases, I have a pointer to
> >
> >     test: :include:/home/brownh/aliases/test.aliases
> >
> >But when I use it (after upgrading to RH 8.0), I get:
> >
> >      ----- The following addresses had permanent fatal errors -----
> >   :include:/home/brownh/aliases/test.aliases
> >     (expanded from: <test@hartford-hwp.com>)
> >
> >      ----- Transcript of session follows -----
> >   550 5.2.4 :include:/home/brownh/aliases/test.aliases... Cannot open
> >     /home/brownh/aliases/test.aliases: Permission denied
> >
> >Bothe the aliases directory and the test.aliases file are rwxrwxrwx
> >(wide open for test purposes).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
