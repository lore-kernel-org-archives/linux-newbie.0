From: Ray Olszewski <ray@comarre.com>
Subject: Re: Xinetd compared to /etc/rc.d/init.d
Date: Wed, 18 Sep 2002 11:26:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020918111503.024d0260@celine>
References: <008d01c25f3b$793e9950$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <008d01c25f3b$793e9950$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 01:47 PM 9/18/02 -0400, Paul Kraus wrote:
>What is xinetd used for. I thought it was used to start services but
>have read on some newsgroups to avoid it. Does it work with the startup
>files in /etc/rc.d/init.d/ folder, is it actually a step up from those
>scripts and a possible replacement. How do the two work in relation to
>each other.

inetd (not a typo. keep reading) is itself a sort of service; it listens on 
many ports, and when a connection is made to a port it is listening to, it 
passes that connection on to the actual service for that port (as specified 
in /etc/inetd.conf). It's usually called the "superserver". This concise 
description leaves out some details; reading the man page for inetd will 
fill in the details.

xinetd is an alternate implementation of roughly the same functionality. It 
has some additional features, and I've read some problems. Since I 've 
never tried it myself, I can't intelligently discuss its merits relative to 
regular inetd.

inetd and xinetd have nothing (well, almost nothing) to do with the 
boot/init scripts. Those scripts do need to start services, so one of them 
will start inetd or xinetd for you, but other than that, they are quite 
separate.

>On a side not what is up with all the filename.d's.

That's a pretty vague question, Paul.

If you mean the various /etc/something_or_other.d listings, they are 
usually directories, not files (well, in Unix/Linux, there is a sense in 
which *everything* is a file, including the keyboard and the screen, but 
let's put that aside for now). The modern convention is for programs to 
create /etc/myname.d directories and put any systemwide config files they 
need in there (user-specific config files go in users' home directories).

If you mean something else, please try asking again, a bit less 
elliptically this time.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
