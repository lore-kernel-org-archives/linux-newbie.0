From: "Robin Doer" <robin@robind.de>
Subject: RE: Mutual Exclusion in Kernel
Date: Wed, 06 Oct 2004 10:43:20 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041006.Yzh.28379000@192.168.0.6>
References: <20041006055017.42480.qmail@web52903.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006055017.42480.qmail@web52903.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newbie <linux-newbie@vger.kernel.org>

Good morning!

Ankit Jain (ankitjain1580@yahoo.com) schrieb:
>
> hi
>
> what is spin lock?

http://en.wikipedia.org/wiki/Spin_lock

aka "busy waiting". A thread is polling <something> until <something> says
"ok" and the thread continues working.

>
> thanks
>
> ankit

Have fun,
Robin

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
