From: Chris Largret <largret@gmail.com>
Subject: Re: recovering a partition
Date: Sat, 10 Dec 2005 10:49:41 -0800
Message-ID: <1134240581.6589.6.camel@shogun.daga.dyndns.org>
References: <dnee1r$pdp$1@sea.gmane.org>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dnee1r$pdp$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nagy Viktor <viktor.nagy@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 2005-12-10 at 12:27 +0100, Nagy Viktor wrote:

> I wanted to change the filesystem of my ex-windows partition (I just wanted
> to finish the migration from win 2 Linux) from vfat to ext3, but when I made
> its backup I copied only one file instead of the whole partition. I would
> like to restore it if possible.
> 
> The partition was vfat, now is ext3, and I already made a dd of it. (When it
> was ext3.)
> 
> Is there a way to save my data? How can I do it?

Since you already formatted the drive as another file system, it will be
difficult to retrieve files. It is still possible to find some as long
as you didn't do bad-block testing or use some other method that wrote
data to the partition before formatting.

'grep' and 'dd' will be your most common commands.

For somewhat more high-level tools, take a look at the man page for
magicrescue:

http://jbj.rapanden.dk/magicrescue/manpage.html

Good luck!

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
