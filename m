From: Peter Edstrom <peter.p3@home.se>
Subject: Re: (F)A "subject" rule for procmail
Date: Mon, 15 Sep 2003 13:25:21 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030915112521.GA2169@linux>
References: <20030914094953.GA571@archibold.chu.cam.ac.uk> <XFMail.20030914215635.ik5bcu@tin.it>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <XFMail.20030914215635.ik5bcu@tin.it>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: sos22@cam.ac.uk

> With this I want to reply both to you,to Peter Edstrom and to dashielljt.
> Well first of all many thanks to all of you for interesting answers,however I
> think I solved a lot of problems by upgrading my SpamAssassin from 2.20 to 2.55
> which includes bayesan filter and a DNS-RBL check against possible spam sources.
> I am testing it at present and I cannot yet say "it works perfectly" but at
> least I can affirm that it works much better respect the older version.
> I'd like to read and learn more about the RBL feature and run some tests on
> this to see if it really works.
> 
> Many thanks again and best Regards.
> 
> Marco

In case you want to learn more about spam in general, there are great
articles on the subject at www.paulgraham.com. "A Plan For Spam"
(http://www.paulgraham.com/spam.html) covers the Bayesian approach. For
information on blacklist, including RBL, you can read the "Filters vs.
Blacklists" article (http://www.paulgraham.com/falsepositives.html).
There are also lots of interesting links at the bottom of these pages -
time is the only thing that stops you for learning all there is to know.
:-)

Just FYI, I've heard many people having problem with SpamAssassin but
are more than satisfied with bmf. Bmf is more lightweight than SA and
known for being easy to configure and so. But the choice if yours, and I
won't propagate for bmf... (ehum..) :-)

Happy spam-hunting!

Best regards,
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
