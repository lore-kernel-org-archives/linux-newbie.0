From: David Fierbaugh <david@fierbaugh.org>
Subject: Re: chmod u+s confusion
Date: Fri, 7 Apr 2006 08:42:19 +0000
Message-ID: <200604070842.19837.david@fierbaugh.org>
References: <1144402873.8482.14.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1144402873.8482.14.camel@localhost>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

I'd have to actually do a little playing around to make sure, but I believe 
that whoami is specifically written to NOT take SUID into account. It figures 
out exactly who ran the process which called it.

This prevents faking out whoami into saying everyone is root.

Why?
Let's say you have a script that runs whoami to determine what 
access/control/etc a user should be given. If an attacker could manage to 
fake whoami into always saying the user was root by using suid, then they now 
have administrative access to whatever that script does.

This would be a bad thing.

You might also want to take a look at /bin/id

--David

On Friday 07 April 2006 09:41, Chris Largret wrote:
> Hey,
>
> I've used chmod to set suid for a file before and thought I had a good
> grasp of how it worked. Recently I've found myself trying to set it for
> a script. Here's what I see ($ denotes user account, # is root):
>
> $ echo -e '#!/bin/sh\n\nwhoami'>whoami.sh
> # chown root:root whoami.sh
> # chmod 4755 whoami.sh
> $ ./whoami.sh
> chris
> # chmod u+s `which whoami`
> $ whoami
> root
>
> [Note: u+s is equivalent to 4xxx, sorry for the change-up]
>
> So... why doesn't this make whoami.sh run the 'whoami' program as root?
> It's worked for the programs whoami, and is a common mode set on
> cdrecord.
>
> Thanks for your help (and enlightenment).
>
> --
> Chris Largret <http://daga.dyndns.org>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
