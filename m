From: cr <cr@orcon.net.nz>
Subject: Re: disabling X display Manager
Date: Thu, 19 Jun 2003 19:05:42 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306190800.h5J80d0k002585@dbmail-mx3.orcon.co.nz>
References: <5.1.0.14.1.20030617061959.0201dcd0@celine> <5.1.0.14.1.20030618072219.02f42c60@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030618072219.02f42c60@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 19 June 2003 02:24, Ray Olszewski wrote:
> At 11:29 PM 6/18/2003 +1200, cr wrote:
> [...]
>
> > >          1:2345:respawn:/sbin/getty 38400 tty1
> >
> >Yep, they're there.    Would the '2345' be runlevels?
>
> Yes.
> [...]
>
> > > The other thing to do is to check that when you do start X via gdm, the
> > > consoles are present. From the gdm display, you should be able to
> > > access them by pressing CTRL-ALT-F1 through CTRL-ALT-F6.
> >
> >Yes, they do.    But then I didn't know how to get the gdm back :)
> >Never mind, I just rebooted it.
>
> CTRL-ALT-F7 (typically - technically, it is the first VT not occupied by a
> console, and that is typically F7).
> [...]
>

I did wonder, later on, looking at that list.   I'd already tried F1 to F6 as 
suggested, it just never occurred to me at the time to try F7.    

Thanks!

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
