From: James Miller <jamtat@mailsnare.net>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 15:24:51 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0304111514010.1064@homenet>
References: <5.1.0.14.1.20030411110849.01ea73e8@celine>
 <5.1.0.14.1.20030411094900.01ea5030@celine> <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411110849.01ea73e8@celine> <5.1.0.14.1.20030411125405.01fbde78@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030411125405.01fbde78@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Ray:

Thanks so much for your help on this.  Taking a bit of initiative based on
your second to last post, it seems I have determined the nature of the
problem.  It seems the module I'm trying to use is buggy.  Here's why I
think so.

I created a dir on the root called /module.  In that dir, I placed the
eepro.o module from the Slack 8.0 CD (2.2.19 kernel).  I edited
/etc/rc.d/rc.S to reflect the location of that module (insmod
/module/eepro.o io=0x300).  When I booted next I got, of course, a
complaint that this module was compiled for the 2.2.19 kernel (whereas I
am using 2.2.16).  So, I edited /etc/rc.d/rcS again to force the module to
load (insmod -f /module/eepro.o 0x300).  Next boot, I got an ominous
looking complaint, stating that this module would "taint" the kernel.
Undaunted, I tried the network.  No lockups.  It now works normally.  I
used it for about 5 minutes, surfing with Links and telnetting to the
gateway.  Hasn't locked up yet.  This is already much longer than I could
ever use the connection before without it dieing.  Sounds like a buggy
module I was using previously, no?

Questions, of course, remain.  What exactly does "tainting" the kernel
entail?  What risks am I taking by using this module?  Have I gone about
loading the new module correctly (putting it in that dir and loading it
with a comment including the -f switch in rc.S)?  What are other ways?

Further pointers would be appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
