From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: user can't read mail (rmail) in text mode (fwd)
Date: Thu, 31 Oct 2002 06:27:41 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210311127.g9VBRfs05138@hartford-hwp.com>
References: <20021030.203356.134682184.0.lawson_whitney@juno.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20021030.203356.134682184.0.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: lawson_whitney@juno.com
Cc: linux-newbie@vger.kernel.org

Lawson, thanks!

> > I'm in a real jam: can't run X server, and so trying to run rmail
> > out of emacs in text mode from a command prompt. But I'm having
> > trouble with rmail in this situation.
>  
> It shouldn't happen, but bash will read different startup files
> depending on how it was started.  You might have the environment
> variable MAIL set wrong in one.  A console shell reads
> ~/.bash_profile, while an xterm reads ~/.bashrc.

Yes. I found out by accident that things go OK if I "su -" to user
instead of "su" or if I log into user in the first place.

> There is nothing magic about a mail file.  It is just a file, and
> you can read it with any mail user agent, or - for a long time, I
> read mail with "less -ni" and comosed mail with joe.

Thanks. This is good to know in emergency situations. With a hugh
file, it is tough to work with, but if one has to (mail reader not
working), one can plough through it and delete unwanted sections
without fear of deleting control characters of some kind.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
