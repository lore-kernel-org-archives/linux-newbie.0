From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Spamassassin is ignoring user_prefs
Date: Mon, 16 Jun 2003 10:47:28 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002e01c333a0$ddbf46b0$d700a8c0@iih.usyd.edu.au>
References: <3EECA70F.8030201@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Rose <offline@shaw.ca>, linux-newbie <linux-newbie@vger.kernel.org>

Chris Rose wrote:
> Or, it sure seems to be..  I don't know that this is the right place
> to ask this, but it seems appropriate.  I have spamassassin being

Actually try the spamassassin user mailing list:

http://www.spamassassin.org/lists.html

> called as part of my maildrop .mailfilter file, and it seems to
> completely ignore both the .spamassassin/user_prefs and
> .spamassassin/user_prefs.cf files, since i'm trying to blacklist an
> address. but no joy.

Try the /etc/mail/spamassassin/local.cf file.  SpamAssassin checks this
before anything else.

Regards

James Turnbull


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
