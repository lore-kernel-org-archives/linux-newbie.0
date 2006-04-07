From: Chris Largret <largret@gmail.com>
Subject: Re: chmod u+s confusion
Date: Fri, 07 Apr 2006 11:06:11 -0700
Message-ID: <1144433171.8482.21.camel@localhost>
References: <1144402873.8482.14.camel@localhost>
	 <200604070842.19837.david@fierbaugh.org>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200604070842.19837.david@fierbaugh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Fierbaugh <david@fierbaugh.org>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Fri, 2006-04-07 at 08:42 +0000, David Fierbaugh wrote:
> I'd have to actually do a little playing around to make sure, but I believe 
> that whoami is specifically written to NOT take SUID into account. It figures 
> out exactly who ran the process which called it.
> 
> This prevents faking out whoami into saying everyone is root.

I probably should have mentioned that this was just a PoC for what I was
trying to do. I'm actually trying to have the script create a file
someplace like /etc/cron.hourly. It has limited uses (and only my user
and root will be able to run it -- root group), but the script is
refusing to create the file.

> Why?
> Let's say you have a script that runs whoami to determine what 
> access/control/etc a user should be given. If an attacker could manage to 
> fake whoami into always saying the user was root by using suid, then they now 
> have administrative access to whatever that script does.
> 
> This would be a bad thing.
> 
> You might also want to take a look at /bin/id

/usr/bin/id (where my id program is placed) still returns my username.

Thanks for the reply, but I'm still stumped :)

> > $ echo -e '#!/bin/sh\n\nwhoami'>whoami.sh
> > # chown root:root whoami.sh
> > # chmod 4755 whoami.sh
> > $ ./whoami.sh
> > chris
> > # chmod u+s `which whoami`
> > $ whoami
> > root

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
