From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: how to assess occupied space
Date: Sun, 15 Sep 2002 14:51:45 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0209151447040.23713-100000@router.windsormachine.com>
References: <200209151843.g8FIhZPc006695@pegasus.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209151843.g8FIhZPc006695@pegasus.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

On 15 Sep 2002, Heimo Claasen wrote:

> Thanks for the hints; I didn't know some of the 'du' subtelties.
> (BTW, is 'du' for _disk_ or for _directory_ use ?)
>

Disk usage, according to the man pages.  But in a way, directory use is
accurate too.

> The question for "space occupied" is particularl important with the
> Zip-disks, and sometimes 'du' or 'df' didn't seem to give reliable
> answers.
> (And in any case to know how much space is left demands some mental gym.)

if it's ext2 format(default), there's typically 5% reserved to the
superuser.

So your disk space, minus your disk used, will be less than the available
space.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
