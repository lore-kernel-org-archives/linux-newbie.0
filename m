From: whitnl73@juno.com
Subject: Re: distribution choice
Date: Fri, 28 Feb 2003 01:17:05 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030228.012503.8.0.whitnl73@juno.com>
References: <5.1.0.14.1.20030227152314.01f2e110@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030227152314.01f2e110@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

On Thu, 27 Feb 2003, Ray Olszewski wrote:

> Probably about as informative as RPMs are. That is to say, good but not
> great. Package names usually make sense, and searchig the package cache
> usually finds what you want. But sometimes your search terms are too vague
> to work ... you recall recently a question here about "rec", for example.
> Trying to search the package archive for "rec" matched 100+ packages ... a
> hopeless screening task. The real lack I find is my inability to query the
> database about what package contains a particular file ... there is a way
> to do this if the package is installed on the host, but not if you want the
> app and need to find out which package contains it. (In this respect, I was
> spoiled by Slackware, which always included a complete list, easily
> grep'able, of the complete contents of of every package.)
>
rpm keeps a database of rpm's it has installed, which can be queried by
rpm -qf <filename>
right, I guess you said the debian package manager has an equivalent;
you can make a database of all packages with something like

rpm -qlip /where/the/rpms/are/* >rpmlist

although this is not exactly grep'able, you are better off using
 less -ni
on it, so you can scan for the filename and then back up to the -i entry
for that package which has the package name.  I guess if somebody really
cares I could come up with a way to make a grep'able rpmlist.  I bet you
could do the same with the debian package manager.

You don't _have_ to use any distro, and you can drop packages from one
distro on top of another distro, as long as you are willing to keep
track of the dependencies yourself.  that is what
rpm --nodeps <package file name>
is for, FI.

Of course, if you get the source and compile/install the package
yourself, it isn't known to any package manager...

If you want to use Wine, you do better to get the source, uninstall any
packages of it you may have, and build it yourself.  Distros that carry
it put it in different places, and you may get version problems I don't
want to debug again otherwise.

Lawson
---oops---








________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
