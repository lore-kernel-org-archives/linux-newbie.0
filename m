From: Peter Edstrom <peter.p3@home.se>
Subject: Re: A "subject" rule for procmail
Date: Sun, 14 Sep 2003 18:02:47 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030914160247.GA1074@linux>
References: <XFMail.20030913224135.ik5bcu@tin.it> <20030914094137.GA442@linux> <Pine.LNX.4.58.0309140609200.1280@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0309140609200.1280@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> With bmf, does it search a spam folder and learn from what you put into
> it?  The thing is I delete good e-mail after I've finished reading it if
> there's no further use for it but just because I deleted that e-mail
> doesn't make it properly spam.

This is kinda how it works:

When your mail is sent to procmail, procmail pipes it to the bmf program
to filter it. Bmf is looking at the headers as well as the message, and
compares it with keywords given in a database. If the mail is spam, a
new header 'X-Spam-Status' is set to 'Yes', and then the mail is
returned to procmail. Now you can make procmail check the X-Spam-Status,
and if spam it can either put the mail in a specific spam mailbox
(recommended), or to /dev/null.

If bmf misses a spam mail, you can mark the mail as spam which updates
the badlist-database. (This is very easy to do with eg. mutt, where you
can bind for instance F12 to do this). Similarly, if bmf happen to
filter a mail which isn't spam, you can remove it from the database (in
eg. mutt you can do this with for instance F11).

If you just delete a mail, it will not be marked as spam.

If there's something you don't understand, please let me know. I'm in a
little hurry now - I'm supposed to cook potatoes. ;-)

Hope this helps!
/Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
