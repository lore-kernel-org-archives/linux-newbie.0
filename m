From: "Whitnl73@juno.com" <fido@tcob1.net>
Subject: Re: Network card and kernel module problems
Date: Wednesday, 05 Feb 2003 15:24:00 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_030205_152400__15795e4b@racenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All

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


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
