From: Ray Olszewski <ray@comarre.com>
Subject: Re: safety/permissions
Date: Mon, 17 Mar 2003 07:38:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030317070035.01e74608@celine>
References: <1047900712.3e75b228b4b8b@mail.rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1047900712.3e75b228b4b8b@mail.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kurt Sys <Kurt.Sys@rug.ac.be>, linux-newbie@vger.kernel.org

Kurt -- Your problem is fundamental and based on bad advice (or a bad 
interpretation of good advice) about how to secure your system.

You write "it is recommended here and there to make nothing world-wide 
readable, and also writable and/or executable". This is simply nonsense.

Every standard program used by ordinary (non-root) users needs to be 
"world-wide ... executable".

Every script used by ordinary users also needs to be "workd-wide readable".

Some data files (typically in /etc) need to be "world-wide readable" to let 
user-level programs work proprely.

Some programs run by ordinary users (for example, MTAs such as qmail) need 
to run with some root-level permissions ("run suid" is the jargon for this; 
"man chmod" will probably explain that) to run properly.

I imagine there are even some files that need to be "world-wide ... 
writable" (the pseudo-files /dev/tty* are obvious examples, as is the /tmp 
directory; offhand. I can't think of a real file this morning).

A system that follows the advice you think you found "here and there" 
simply will not work, as you have been finding out.

As to your specific problem with mail ... if you changed permissions on 
unspecified things on your system, no doubt one of those changes introduced 
this problem. Did you make qmail not suid? DId you change permissions on 
the mail-spool directory in a way that causes problems? Did you do 
something to crond or anacron? Who knows? Trying to **guess** which of many 
undescribed changes ("I changed (a lot of) permissions")  is the culprit is 
all but impossible.

Now part of the behavior you see -- queueing the mail prior to sending it 
-- is (or can be, depending on undescribed details) normal MTA behavior. So 
your problem is most likely that qmail is unable to run the queue, not that 
the messages are being queued in the first place. The questions I posed 
above will tell you where to start looking for the specific change that 
introduced the problem, if you choose to go that route.

But the best way to solve this problem is to run a system that uses 
standard permissions. Debian Woody is pretty good in balancing security and 
functionality, and its setup scripts give you sensible (rather than 
wholesale) options about tweaking permissions in ways that tighten security 
without causing general problems (for example, not making users' home 
directories world-readable).

If you must run with tighter, non-standard permissions, then I suggest 
three courses of action.

1. Look in your logs to see what qmail (or maybe crond or anacron, 
depending on setup details you haven't reported here) is logging about 
attempts to run the queue.

2. Try running qmail in run-the-queue mode (probably "qmail -q" ... but 
check the man page, since I'm just guessing based on analogies to sendmail 
and exim) and see what happens.

3. Look "here and there" for a better explanation of the suggestions you 
are trying to implement, to see how those sources suggest handling the mail 
problem in the modified-permissions world they are steering you to. If you 
want help with that part, you need to refer us to the places where you are 
finding this advice, so we can see what they are really saying.

At 12:31 PM 3/17/2003 +0100, Kurt Sys wrote:
>Hello all,
>
>I have a quite serious problem (I guess) and I know, I can only blame myself.
>Anyway, I want to solve it in a 'nice', non-drastic way.
>
>I wanted to make my system somewhat safer, so I started, as it is recommended,
>changing the permissions and groups. This seemed to work and I thought my 
>system
>was safe. But now, going online again, it seems as if I cannot mail... OK, 
>this
>is contraditionary, since I'm mailing, but now, I'm using webmail, but may
>qmail-fetchmail won't work anymore.
>
>So, I have installed qmail and fetchmail on a Debian system (Woody). 
>Things were
>ok before I changed (a lot of) permissions, since it is recommended here and
>there to make nothing world-wide readable, and also writable and/or 
>executable.
>Initially, I had some problems other programs not working (due to wrong
>permissions and/or groups), but most of them, I could solve, except this 
>mailing
>things.
>
>If I run:
> > echo "To: kurt.sys@rug.ac.be" | qmail-inject
>I don't get an error or warning message. I can find all the messages I send
>somewhere in /var/qmail/queue/mess/?? (?? to be replaced by a number), so they
>are queued, but not sent.
> > cat 155788 #This is a message I found in /var/qmail/queue/mess/9
>Received: (qmail 18953 invoked by uid 1000); 17 Mar 2003 11:30:59 -0000
>Date: 17 Mar 2003 11:30:59 -0000
>Message-ID: <20030317113059.18953.qmail@ksys.rug.ac.be>
>From: kurt@ksys.rug.ac.be
>To: kurt.sys@rug.ac.be
>
>
>I can't receive or send any mail. Anyone any idea how to solve this?




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
