From: Marcus Furlong <furlongm@hotmail.com>
Subject: Re: Some users locked out of ssh and sftp?
Date: Sat, 12 Mar 2005 03:06:07 +0200
Message-ID: <d0tf8p$8b3$1@sea.gmane.org>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine> <20050301162252.34857.qmail@web53710.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Eve Emshoff wrote:

> Thus far, I've run across 1 user who can't sftp OR
> SSH. He's entirely locked out, despite having the
> correct username and password. He appears to be set up
> the same as well the others.
> 
> Is there a file or some such I should edit and/or
> check to ensure he can get access? Anything to point
> me to in terms of what I can check in that he may
> *not* be set up the same as everyone else?

Check if there is something like 

. ~/.bashrc

or

source .bashrc

in his .bash_profile, and if there is, then comment it out.

If that doesn't work, try temporarily renaming or deleting .bashrc
and .bash_profile, and then try to ssh again.

Marcus.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
