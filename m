From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling X display Manager
Date: Wed, 18 Jun 2003 07:24:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030618072219.02f42c60@celine>
References: <5.1.0.14.1.20030617061959.0201dcd0@celine>
 <5.1.0.14.1.20030611133014.01f97628@celine>
 <5.1.0.14.1.20030617061959.0201dcd0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306181212.h5ICC4gu019704@dbmail-mx1.orcon.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:29 PM 6/18/2003 +1200, cr wrote:
[...]
> >          1:2345:respawn:/sbin/getty 38400 tty1
>Yep, they're there.    Would the '2345' be runlevels?

Yes.
[...]
> > The other thing to do is to check that when you do start X via gdm, the
> > consoles are present. From the gdm display, you should be able to access
> > them by pressing CTRL-ALT-F1 through CTRL-ALT-F6.
>
>Yes, they do.    But then I didn't know how to get the gdm back :)
>Never mind, I just rebooted it.

CTRL-ALT-F7 (typically - technically, it is the first VT not occupied by a 
console, and that is typically F7).
[...]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
