From: ichi@ihug.co.nz
Subject: Re: RAM and swap partition
Date: Tue, 10 Dec 2002 08:15:23 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF5A29B.37AFD2D7@ihug.co.nz>
References: <3DF4FBF0@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: james miller <jamtat@mailandnews.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

james miller wrote:
> 
> Let me pose the RAM question in another way to see if
> it can elicit a generic, "rule-of-thumb" response 

I'm happy to give you my personal "rule-of-thumb", 
but that's all it is.  It's not an absolute truth.

Every system gets at least 16mb of total memory.
So, a system with 4mb RAM gets 12mb swap.

Light X installations with slim wm (*not* KDE or Gnome) 
get at least 32mb total memory.  So, a system with 12mb RAM 
gets 24mb swap.

Heavy X installations need RAM.  Lots of RAM.  Swap is
less relevant on such systems.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
