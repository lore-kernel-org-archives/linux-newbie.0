From: James Miller <jamtat@mailandnews.com>
Subject: further debian questions
Date: Tue, 24 Dec 2002 11:06:11 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0212241039030.233-100000@vector>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Well, I decided on what appeared to be the most user-friendly of the
commercial Debian variants to go on my machine - Libranet. So far, I'm not
as happy with it as I was with Knoppix. For one thing, it seems that
apt-getting is a restricted process under Libranet. They have an app
called "Aptitude" that, I've discovered, one should by all means use for
installing new packages. Here's the way I learned this: I noted that there
were some dependency problems with WINE (more on that later), so I decided
to apt-get it using Aptitude. I was not having much success, so I said to
myself: "why I am I screwing around with this Aptitude prophylactic when I
can just open a console and apt-get the thing?" So, that's what I did.
Well, for the first time in my breif apt-getting career, I got a message
saying there were dependency problems, and a list of the missing
dependencies. So, I says to myself: "heck, I better get those dependencies
so's I can install my prog." So, I went first after one called "libarts."
Big mistake. Installing libarts caused major portions of KDE to be
deleted: apparently what happend is that I got libarts from stable Debian,
which, as I understand it, is part of KDE and KDE in stable Debian is 2.x
while I had KDE 3.x on my Libranet system. To make a long story short, the
most expedient way of restoring KDE proved to be reinstalling Libranet.
So, I decided I may only apt-get at my own risk on this system, most of
the time being constrained by Aptitude and its peculiarities.

Here's another problem I've had. I tried to get Lyx using Aptitude, but
have again encountered dependency problems. My question regarding this is
whether dependency problems are endemic to apt-get as they are to the
package installing methods of other well-known distros? I never ran into
any dependency problems on the Knoppix test system I had when trying to
apt-get. Was I simply lucky? Are the dependecy problems I'm having
traceable to shortcomings in Aptitude, or are they part of life using
apt-get from a console as well?

Finally, does it seem to you, as it does to me, that my initial problems
with WINE are a reflection of deficiencies in the distro I'm using? I can
see no reason why I should have dependecy problems on a freshly installed
system. I was never asked during the install process whether I wanted to
leave out any libraries or anything. Rather, I selected pretty much the
default install option, adding a couple of additional package groups from
the list with which I was presented. That indicates to me that either they
have poorly constructed this distribution, leaving out key elements of an
important package, or else their Aptitude program is buggy and is wrongly
reporting dependency problems. If either of these are true, I question
whether I should go through with payment on this distro, since it seems
still to be at the beta stage.

Feedback from the more knowledgeable on this list will be appreciated.

James

PS I have not succeeded in running any program under WINE, though I have
not spent a great deal of time trying. Whether problems lie with the
dependency issues Aptitude reports, or just WINE's inherent buginess,
I cannot say for sure at this point.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
