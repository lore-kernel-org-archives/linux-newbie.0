From: James Miller <jamtat@mailsnare.net>
Subject: Re: tune2fs configuration
Date: Fri, 11 Jul 2003 16:20:46 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307111615520.1107@homenet>
References: <20030711.150300.188.0.beolach@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030711.150300.188.0.beolach@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: beolach@juno.com
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Fri, 11 Jul 2003 beolach@juno.com wrote:

> I think you have mostly got the command correct.  If the command
> you are using is "tune2fs -c 5", then the only thing you left off
> is specifying which filesystem/partition you want this option to
> apply to.  For example, on my system my root filesystem is on the
> partition /dev/hdc1, so if I wanted it to be fscked every 5 mounts,
> I would issue the command "tune2fs -c 5 /dev/hdc1".
>
> Hope that helps,

Yes, that seems to be it.  Thanks so much for the pointer.  A simple
example in the manpage would probably have preempted this newbie's
confusion.  In hindsight, it seems perfectly logical that the filesystem
should be speicifed, but hindsight is always 20/20, as they say.

Sincerely, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
