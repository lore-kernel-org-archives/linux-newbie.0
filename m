From: whitnl73@juno.com
Subject: Re: How do I see all my partitions?
Date: Sun, 22 Dec 2002 22:11:45 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021222.222557.134684296.2.whitnl73@juno.com>
References: <5.1.0.14.0.20021222212347.00bb77e8@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20021222212347.00bb77e8@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: smarta55@comcast.net
Cc: linux-newbie@vger.kernel.org

On Sun, 22 Dec 2002, Chris wrote:

> OK...now that I can see all my partitions, how do I mount an NTFS
> partition?
> When I try, I receive the error "fs now supported by kernel."
> I'm running Red Hat 8.0 (sorry, no idea what the kernel version is - how
> do I find this info?).
>
> Can the kernel be patched to support NTFS?
>
> Thank you,
> Chris
>
Try /sbin/modprobe ntfs

a stock distro kernel may already have it.

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
