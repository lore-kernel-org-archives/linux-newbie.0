From: lawson_whitney@juno.com
Subject: Re: Trying to get GUI'ed
Date: Fri, 25 Oct 2002 12:58:07 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021025.133927.134682184.2.lawson_whitney@juno.com>
References: <5.1.0.14.1.20021024230507.0215c7e0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021024230507.0215c7e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: hammer@revobild.net, linux-newbie@vger.kernel.org

On Thu, 24 Oct 2002, Ray Olszewski wrote:

> In principle, you could run X with no Window Manager, just starting a
> single xterm when the X server starts. I've never done this myself (I have
> read about the procedure, in a *very* old book), but perhaps when he sees
> this message, Lawson will sketch out the details of how he did it.

[whit@giftie whit]$ cat .xinitrc
xsetroot -solid SteelBlue
icewm &
xterm
[whit@giftie whit]$ cat .xsession
#!/bin/sh
icewm &
xterm

You only use .xsession for GUI login.  Get rid of icewm if you want your
xterm bare and immovable, or remove the entire file and xinit will start
a single xterm.

Lawson
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
