From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: strange freeze
Date: Tue, 13 May 2003 13:06:17 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0305131300000.1525-100000@router.windsormachine.com>
References: <200305131134.12197.eric@cisu.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305131134.12197.eric@cisu.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 13 May 2003, Eric wrote:

> How can you exclude the power supply just becuase no-one else in the office
> has the same problem? Unless I mis-understood you the power supply should
> still be held in suspect. If you can get away with it, swap out the PS with
> someone elses in the office or bring one from home. Is it a terribly
> low-wattage supply 150-200? Try unpluging one of the disks when botting to
> the other OS, its not much of a power drai, but its still something.

Indeed, I've got a system at the office running W2k that would freeze, p4
2.4.

I even brought over Linux on a spare hard drive, and booted off that,
still locked up.(ruling out software)

Replaced all the hardware with spares, and tried again.  Machine still
locked up same as before.

Turns out that it looks like the battery backup is likely defective,
causing voltage spikes/drops that are locking up the system.

Next time I grab the Fluke and leave that plugged into the output of
the UPS overnight!

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
