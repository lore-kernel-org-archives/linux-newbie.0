From: whitnl73@juno.com
Subject: Re: Renumbering Primary Partitions?
Date: Sat, 11 Jan 2003 12:35:07 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030111.123603.134688608.0.whitnl73@juno.com>
References: <200301111657.53780.Adam@luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301111657.53780.Adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam@Luchjenbroers.com
Cc: linux-newbie@vger.kernel.org

On Sat, 11 Jan 2003, Adam Luchjenbroers wrote:

> My current partition table has the following partitions
>
> 1) FAT32
> 2) FAT32
> 3) Extended
>
> Is it possible for me to make partitions 1 and 2 one partition and get it to
> renumber 3 as 2 (the first bit is easy, but how would I make the latter part
> happen)
>
>
Why do you care?  Logical partitions within the extended partition are
still going to be numbered starting with 5, whether the extended
partition is 2 or 3.

Always make sure you have a good rescue floppy or bootable install cd
(these usually have a rescue capability) before you follow my advice.

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
