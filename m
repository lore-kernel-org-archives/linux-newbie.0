From: qwms-avib@dea.spamcon.org
Subject: Re: Interpreting disk space and changing backup path
Date: Thu, 23 Dec 2004 09:37:48 +1300
Message-ID: <20041223093748.18a72dd6.qwms-avib@dea.spamcon.org>
References: <20040223225259.GA11316@sevoog.kriation.com>
	<006001c4e83c$46486d50$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <006001c4e83c$46486d50$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: b34m-qw7d@dea.spamcon.org
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

Eve Atley wrote:
>
> I ran the df command on Redhat Linux 9, and came up with 
> this...what exactly does it mean?  Which is my main drive?

You appear to have two drives:  a master HD on your
primary IDE cable:

> /dev/hda1       101089     29129     66741  31% /boot
> /dev/hda2     37334192   5058672  30379048  15% /

And a slave HD on your primary IDE cable:

> /dev/hdb1     57669728  38728096  16012184  71% /home

The master HD has two partitions mounted:  a 101mb boot
partition and a 37gb root partition.  The slave HD has 
one partition mounted:  a 57gb partition containing the
/home subdirectory.

> I'd like to change the path to instead backup to where 
> I may have space...

You have space (30gb) on your root partition (on master HD), 
so it would possible to use it for a compressed backup of 
/home (from slave HD).  That would put your backup on a 
different HD.  This is good.  However, it is not so good 
to have your only backup on the same machine.  A fire, power 
surge or other catastrophe could destroy both the original 
and the backup.  It is better for the backup to be on a 
different machine (or, better yet, at a different location).

Cheers,
Steven

____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
