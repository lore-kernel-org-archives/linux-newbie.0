From: Ray Olszewski <ray@comarre.com>
Subject: RE: boot sequence
Date: Tue, 10 Dec 2002 23:56:05 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021210232351.020b94a0@celine>
References: <5.1.0.14.1.20021210230856.020c62a0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001601c2a0e5$ae8c7230$972a3a41@joe>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Joseph D. Wagner" <wagnerjd@prodigy.net>, dave@dpomeroy.com
Cc: 'linux-newbie' <linux-newbie@vger.kernel.org>

Dave -- a try at answering your original question is at the end of this 
message. In between is some reaction to Joseph's thoughts about what is and 
is not appropriate for this list.

At 01:19 AM 12/11/02 -0600, Joseph D. Wagner wrote:
> > Joseph -- I think you may have gotten this list
> > mixed up with some other list that you subscribe
> > to. This list (linux-newbie) is a list for Linux
> > beginners to ask general questions on, NOT a list
> > for Linux kernel questions (at least, not exclusively).
>
>Yeah, but Dave CC'ed that list too.

How did you determine this? The copy of Dave's message that I received 
here, the one that came through this list, does not show any Cc's. If he 
posted to some kernel list separately, why drag linux-newbie into it at all 
by cc'ing your reply to *that* message here?

> > While I don't know Mandrake so cannot myself answer
> > Dave's original question, it is hardly inappropriate
> > for a beginner's list.
>
>That's just my point.  His question is about a specific distribution of
>Linux -- Mandrake.  That's too specific for this list.  I'm not saying it's
>inappropriate; I'm just saying he'd get a better response from a list
>specifically designed for Mandrake Linux, rather than posting to a general
>Linux list.

How long have you subscribed to linux-newbie? I regularly see here 
questions that are specific to Red Hat, Slackware, and Debian ... probably 
SuSE and Mandrake too, though I can't recall any specifically. Also 
BasicLinux ... its creator even steers his users to this list by name. This 
all seems very reasonable to me. When you are a beginner, in a sense *all* 
your questions are specific to the distro you have installed ... at least 
you don't know enough to know which are distro-specific, which are not ... 
in fact, I have a bigger problem with the occasional poster who asks a 
question but does not mention which distro he or she is using.

And the distro-specific lists are (in my, admittedly limited, experience) 
sometimes populated by people with little patience for beginner-level 
questions, folks who think "RTFM" is a helpful (or at least an appropriate) 
reply to a beginner. This list has a fairly long tradition of treating 
beginners a bit more graciously than I've seen elsewhere.

In fact, I suspect that Dave will learn that his initialization problems 
are not specific to Mandrake. In that spirit, perhaps a general answer will 
help him, so ...

... after the kernel is loaded, it starts the "init" process. That process 
refers to the file /etc/inittab to determine (a) what runlevel to use and 
(b) what init scripts to run. Typical inittab files have init first start 
up in single-user mode and run a script listed on the "si" line (Debian 
example: "si::sysinit:/etc/init.d/rcS"), then switch to the default 
runlevel and run a script listed on the line for that runlevel (Debian 
example: "l2:2:wait:/etc/init.d/rc 2" for runlevel 2).

Commonly, each of these scripts is a "wrapper" script that in turn runs a 
collection of scripts identified by symlinks in a directory specific to 
that runlevel; in Debian, for example, the single-user script runs all 
scripts with symlinks having names that begin with "S" in /etc/rcS.d/, then 
the runlevel-2 script runs all scripts with symlinks having names that 
begin with "S" in /etc/rc2.d . The details (particularly the directory 
names) will differ with Mandrake, but it, like every major distro (except 
maybe Slackware and its derivatives), follows this general procedure 
closely enough that you (Dave) can probably trace the init sequence by 
starting at /etc/inittab and seeing what scripts it tells init to run when 
the system starts up.

Hope this helps. If not, please do post more specific follow-up questions.


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
