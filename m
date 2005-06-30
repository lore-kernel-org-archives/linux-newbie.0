From: Ulrich =?ISO-8859-15?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Re: preserving logins
Date: Thu, 30 Jun 2005 23:40:00 +0200
Message-ID: <20050630234000.24f2c38c@localhost>
References: <Pine.LNX.4.44.0506301339570.5397-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0506301339570.5397-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG> wrote: 

> I want to retain the same logins/uids/gids for all the
> users from the Redhat installation.   How can I do this?

I don't know RH so I don't know which uid/gid the users/groups have.
For Debian the user IDs normaly begin with 1000. 

You could add new users in Debian with: 
# adduser --uid $UID_FROM_RH $USER
without problems. You can take every UID that isn't in use by the system
already. (Didn't test it with uid lower than one hundred).

There's another limit at 100. AFAIK below 100 the system groups and
above groups from programs such as exim, spamassassin an so on.
Sorry, can't find the exact rule for that at the moment.


Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
