From: Chris Rose <offline@shaw.ca>
Subject: Spamassassin is ignoring user_prefs
Date: Sun, 15 Jun 2003 11:04:15 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EECA70F.8030201@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

Or, it sure seems to be..  I don't know that this is the right place to 
ask this, but it seems appropriate.  I have spamassassin being called as 
part of my maildrop .mailfilter file, and it seems to completely ignore 
both the .spamassassin/user_prefs and .spamassassin/user_prefs.cf files, 
since i'm trying to blacklist an address. but no joy.

I tried the automated --add-addr-to-blacklist= option as well, in case i 
was putting it in the wrong place, but all that option does is *create* 
the .spamassassin/user_prefs file, but it doesn't place anything on a 
blacklist therein.

Is there an option to unset somewhere that is causing spamassassin to 
ignore my user prefs?

-- 
Chris R.
======
Listening to the sound of silence
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
