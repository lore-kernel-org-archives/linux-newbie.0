From: Mike Ricketts <mike@earth.li>
Subject: Re: Is there a way to "test" a serial
Date: Mon, 14 Oct 2002 16:49:33 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.10.10210141648480.675-100000@oakley.chf>
References: <CPIMSSMTPU05i9yzu230000013a@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU05i9yzu230000013a@cpimssmtpu05.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>
Cc: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

On Mon, 14 Oct 2002, Alan Womack wrote:

> What I'd like is a console app that would pick up any gibberesh the
> mouse would generate while I scroll it 's test wheel.
> 
minicom, maybe?
Or possibly a simple cat /dev/ttyS0 might work?


-- 
Mike Ricketts <mike@earth.li>                      http://www.earth.li/~mike/

Yes, but which self do you want to be?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
