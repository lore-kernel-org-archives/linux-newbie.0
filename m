From: Chris <smarta55@comcast.net>
Subject: Re: Where does installed software go?
Date: Mon, 23 Dec 2002 20:47:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20021223204655.00bb5920@mail.comcast.net>
References: <5.1.0.14.0.20021222212622.00bb8d08@mail.comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20021222.222557.134684296.1.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: whitnl73@juno.com
Cc: linux-newbie@vger.kernel.org

Thank you,
I'll give it a shot ...once I reboot my PC to linux, that is.

Chris

At 10:07 PM Sunday 12/22/2002, whitnl73@juno.com wrote:
>On Sun, 22 Dec 2002, Chris wrote:
>
> > How do I know where software goes when I install it?
> > For instance, I just installed Opera on Red Hat 8.0, and
> > had to dig around to find it.
> >  From the root I ran "ls -al -R | grep opera"
> > This produced about 16,000 items!  Through trial and error I was
> > able to find the executable, and create a "launcher" on my desktop
> > to it.
> >
> > Next I installed Wine.  I still have no idea where the executable is, but I
> > know it's not in my path.  Running "ls -al -R | grep wine" produces even
> > more results than when I looked for Opera.
> >
> > Is there a default location for software installations via RPMs?
> >
> > Thank you,
> > Chris
>
>It is up to the rpm packager.
>
>rpm -ql opera | less
>rpm -ql wine
>
>to restrict the output to executables, I guess something like this would
>do:
>
>rpm -ql <package name> | grep '/bin/'
>
>Lawson
>
>--
>---oops---
>
>
>
>
>________________________________________________________________
>Sign Up for Juno Platinum Internet Access Today
>Only $9.95 per month!
>Visit www.juno.com
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
