From: Ray Olszewski <ray@comarre.com>
Subject: Re: Recovery help (Maybe OT)
Date: Thu, 27 Jun 2002 18:52:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020627184318.022718d0@celine>
References: <20020627070631.96452.qmail@web13103.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020627070631.96452.qmail@web13103.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: szonyi calin <caszonyi@yahoo.com>, linux-newbie@vger.kernel.org

Your description is a bit sketchy, but I wonder if the problem is that your 
(partial, I assume interrupted) "rm -rf /" debacle caused /bin/sh to be 
deleted. Since rc.S and rc.M are (almost surely) shell scripts (the first 
line of each is all but certainly "#!/bin/sh"), they need the /bin/sh 
interpreter to execute . Since it is apparently missing, based on your 
reported "init=/bin/sh" failure, init is correct in telling you that these 
init scripts "cannot execute".

The fix is to reinstall bash and symlink it to /bin/sh .

That said, the suggestion someone else made, that you do a complete 
reinstall, is probably the better way to go. There are probably other 
"gotchas" waiting to be found on your partly-deleted system. Were I to have 
the problem, I'd do this sort of patching only to get the system to the 
point where I could get any unique, local content off it to another server.

BTW, this is hardly off topic. In fact, it seems a prime candidate for a 
beginner's list, since it is very much a rookie error.

At 09:06 AM 6/27/02 +0200, szonyi calin wrote:
>Hi
>I'm new to the list.
>If this is OT please tell me and i won't bother
>you again.
>
>I'm not a newbie but I need help.
>I managed to do a rm -rf /
>It erased my /bin /boot /dev
>and something from /mnt
>
>I recovered from backup but can't
>boot.
>
>I boot the default kernel, it boots fine.
>... boot messages here
>Mounting root ext2 fs read-only
>Freeing unused kernel memory
>Mounted devices in /dev
>Init version 2.83 booting
>INIT: cannot execute /etc/rc.d/rc.S
>INIT: cannot execute /etc/rc.d/rc.M
>INIT: cannot execute /sbin/agetty
>INIT: respawning too fast, disabled for five minutes
>
>Those files _are_ there and _are_ executable.
>(I verified by booting from the slackware 8.0
>install-cd and mounting the partitioin and ls -l)
>
>If I try to boot with init=/bin/sh
>
>No init found -- kerne panic :-)
>
> From my experience this seems to be a /dev/ problem





--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
