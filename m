From: "James Miller (office)" <jamtat@mailsnare.net>
Subject: Re: disabling X display Manager
Date: Wed, 18 Jun 2003 10:01:59 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306180950440.312@veclin.office>
References: <5.1.0.14.1.20030617061959.0201dcd0@celine>
 <5.1.0.14.1.20030611133014.01f97628@celine> <5.1.0.14.1.20030617061959.0201dcd0@celine>
 <5.1.0.14.1.20030618072219.02f42c60@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030618072219.02f42c60@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Wed, 18 Jun 2003, Ray Olszewski wrote:
> [...]
> > > The other thing to do is to check that when you do start X via gdm, the
> > > consoles are present. From the gdm display, you should be able to access
> > > them by pressing CTRL-ALT-F1 through CTRL-ALT-F6.
> >
> >Yes, they do.    But then I didn't know how to get the gdm back :)
> >Never mind, I just rebooted it.
>
> CTRL-ALT-F7 (typically - technically, it is the first VT not occupied by a
> console, and that is typically F7).
> [...]
>
Just a clarification on the ctrl-alt-F7 bit.  I have understood, and have
proven in practice, that only alt-F7 is necessary to get back to whatever
x session is running in whichever virtual console.  In other words, I can
do ctrl-alt-F3 and log in.  Providing no other x session is running in any
other console, I can type "startx" and have Xwindows open up in that
console.  Should I switch to another virtual console by, say, pressing
ctrl-alt-F1, the way I get back to the console where X is running is to
press alt-F7 (wihtout using the ctrl key) - no matter on which virtual
console I've started it.  I'm rehearsing this from memory, but I'm pretty
sure that's the way I handle virtual consoles and Xwindows.  Of course
ctrl-alt-F7 does also get you back to that running x session but,
according to my experience, the ctrl key has no role in effecting this.
Anyway, I'm not trying to be nit-pickey here, just curious about the way
this works and whether I'm doing and understanding things correctly.  Can
you comment further on this ctrl key aspect, Ray?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
