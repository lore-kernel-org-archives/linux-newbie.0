From: James Miller <jamtat@mailsnare.net>
Subject: Re: Mandrake 9.1 internet connection
Date: Sun, 1 Jun 2003 16:51:44 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306011633390.1059@homenet>
References: <3EDA4378.6070007@att.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EDA4378.6070007@att.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Gee, an engineer that knows less about Linux (or at least certain aspects
of it) than me.  Welcome aboard!  Prepare for frustration . . .

First, let me interject on Ray's behalf that you have not given us enough
information to help you with your problem (hey, I think I'm getting the
hang of this!).  But, seriously: what dialer program are you using and/or
what graphical frontend?  I know of a couple of different dialing programs
for Linux, but I can't remember the name of either at the moment :(.
Maybe information about that would be helpful to those here who could
offer some constructive advice.

Anyway, what I would point out on a perhaps more fundamental level is that
I understand you to have 2 basic tasks in your request.  Maybe you're not
separating them conceptually, but I see you as needing to: 1) set up
something like dial-on-demand; which has a related problem that you've run
into - 2) dialing program permissions.  I think most Linuces come with
their dialing programs belonging to root only.  As I understand this, the
ways to deal with the inconvenience of having to su every time you want to
dial the 'net are: 1) set up a "dialers" or "ppp" group into which you
place users who are allowed to dial the 'net on your system; 2) change the
permissions on the dialing program.  I used option 2.  I accomplished
this by su'ing and issuing the command "chmod 4745 /usr/bin/kppp".  As you
may note, I'm running the graphical frontend Kppp (part of the KDE desktop
environment) as my dialing program.  This allows most users to invoke the
dialer on my system (I'm virtually the only user).  I suppose in
situations where more people use a particular computer, it might be wiser
to use method 1 to give those users dialer/'net access.  I'll have to let
others describe how to best do that, since I'm still a bit vague on user
administration under Linux.

As for making the dialer dial when outside packets are requested, I'll
have to leave that to others to address.  I'd like to get that working on
my system as well, but have just not had the time to tackle it yet.  I'd
have to do some studying to say anything meaningful on that topic.  Ah,
the things we used to do so simply under M$Win!  But those days are
forever behind us now . . . ?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
