From: whitnl73@juno.com
Subject: Re: Network card and kernel module problems
Date: Wed, 5 Feb 2003 15:24:54 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030205.160000.8.0.whitnl73@juno.com>
References: <000001c2ccd7$bcfb0e80$eb6510ac@citechbd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c2ccd7$bcfb0e80$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: raihan@citech-bd.com
Cc: linux-newbie@vger.kernel.org

On Wed, 5 Feb 2003, Amin wrote:

> Hi people,
>
> First --- sorry about not including specific error messages earlier.  The
> attached file is a (snipped) list of bootup messages, and contains the
> messages I'm concerned with.
>
> I've decided to reinstall, perhaps try a different distro, and see if that
> will do the trick.  And thanks
> to Lawson for pointing out the EXTRAVERSION point.  Just want to make sure
> about something --- you're talking about
> /usr/src/linux-2.4.18-14/Makefile, right?

Well, the README says not to put it in /usr/src/linux, that belongs to
glibc for its <linux/xxxx.h>, so I have mine in /oof/linux-2.4.13, but
yes, the top level Makefile for the kernel source tree you are working
with.
>
> Yawar Amin
>
> P.S.  Is it a good sign or a bad sign that I've got my kernel version
> memorized?
>
>

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
