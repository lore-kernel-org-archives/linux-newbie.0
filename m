From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: unmet dependencies
Date: Thu, 10 Apr 2003 17:51:38 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16021.37642.759002.142665@ksys.rug.ac.be>
References: <16021.9949.471022.230213@ksys.rug.ac.be>
	<5.1.0.14.1.20030410074839.01ea3048@celine>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030410074839.01ea3048@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I try to gather as much information as possible and I read/hear much
slightly different things, so I try to extract something that looks ok
with me. And now I remember... Quite a lot of people (using Debian)
state that the 'unstable' version (sarge) is actually still quite
stable. 'testing' (sid) is more stable and yeah... 'stable' (woody) is
really stable. In many cases, they add that they run testing, since it
is quite stable already. So I decided to do things somewhat more
secure and put 'testing' in my sources.list, and not 'unstable' (and
I've been told that it's also not good to mix sid and sarge).

So, mixing unstable and stable would probably give less problems? Or
am i wrong (again :-) )? It's just, I can imagine that some packages I
need are only in stable, but that there are more recent versions of
other packages, and sometimes I like the more recent onces...


Anyway, problem solved...


thanks a lot
Kurt.

PS: I run apt-get update/upgrade once a week.

--
Mail from Ray Olszewski
sent on Thursday April 10 2003 at 07:56 (GMT-0700):

> Kurt -- Are you certain that this is a properly-configured (in
> /etc/apt/sources.list) Woody system? Just looking at your initial
> failure with mysql-client ...
> 
> My Woody (Debian Stable) system lists the dependancy as
> "libmysqlclient6 (>= 3.22.30)".
> 
> My Sid (Debian Unstable) system lists the corresponding dependency
> as "libmysqlclient10". what you say your Woody system is telling you
> you need.
> 
> If you are in fact mixing Woody and Sid packages somehow, you are
> going to encounter these dependency problems quite a bit. Your first
> step should be to try to apt-get install the missing dependencies by
> hand ... if you run into trouble, you need to see if your
> sources.list file makes sense.
> 
> Also (the obvious question), are you remembering always to apt-get
> update before you apt-get install anything? That does not look like
> your immediate problem, but without knowing what is in your
> sources.list file, I cannot be sure.


-- 
Fashions have done more harm than revolutions.
		-- Victor Hugo
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
