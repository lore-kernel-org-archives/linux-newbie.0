From: Staci <spiritlover666@yahoo.com>
Subject: Re: File-system Ext2 or Ext3??
Date: Sun, 12 May 2002 08:25:19 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020512152519.38384.qmail@web12808.mail.yahoo.com>
References: <20020512150909.GA596@cam.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020512150909.GA596@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

--- Steven Smith <sos22@cam.ac.uk> wrote:
> > still get forced fscks at startup,
> How many? ext3 should be fscked every 20 or so times
> it gets mounted,
> to find any errors which crept in from somewhere.

20 boots at about average a week per boot, I shouldn't
be seeing a fsck for 5 months. :(
Instead I'm getting them more like every third bootup.

> If it's more than that, check you've got a recent
> fsck. ext3 support
> was added in (I think) 1.19.

Got 1.22...nothing of mine is REALLY old cuz it came
from Slack8 cd.

> ``Linux native'' isn't terribly well defined, 
YES! I'd noticed that before...how unhelpful is THAT,
of course it's Linux Native, duh it's /, it HAS to be
Linux Native to be mounted at startup!

with> ext, ext2, ext3,
> reiser, and several other having a claim. fdisk
> assumes ext2 is the One
> True Linux Filesystem, so gives the wrong answer if
> something else is used.
> It should probably just say Linux.

Yes...in a nutshell that sounds like I thought it
might be, oversimplication of fs.

There's so many apps that need to be upgraded and
rewritten....

Thanks...
sl

PS for me at least, please just reply to the list
only, I get unnecessary doubles when you reply to both
the list and me!



=====
**************************
In cyberspace nobody can hear you scream.

__________________________________________________
Do You Yahoo!?
LAUNCH - Your Yahoo! Music Experience
http://launch.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
