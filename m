From: whitnl73@juno.com
Subject: Re: xsession
Date: Sat, 4 Jan 2003 14:58:12 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104.145905.134684296.0.whitnl73@juno.com>
References: <3E158854.50905@rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E158854.50905@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kurt.sys@rug.ac.be
Cc: linux-newbie@vger.kernel.org

On Fri, 3 Jan 2003, Kurt Sys wrote:

> Hello,
>
> I have a Debian X session question. I run kdm as display manager and
> blackbox as window manager. When I startup blackbox, I would like to
> execute a small script for the slit in blackbox (just putting some
> applications in the slit). I just don't manage to execute that script. I
> copied the Xsession-script (/etc/X11) to my own home directory and
> renamed it to '.xsession'. I added the line 'bbkeys -w &' to the
> beginning of the file (just to test if it would work), but bbkeys won't
> start and there's no slit. However, if I run this command from a console
> in blackbox, it works (as well as the complete script I wrote to
> configure the slit). So, I'm wuite sure the script '.xsession' in my
> home directory is not started. I though this script would be used when I
> start blackbox, but apparently it's not.
> Anyway, how can I start a script for blackbox whenever I startup
> blackbox? (I guess '.xsession' is not the most optimal solution, since
> it's not only for blackbox, but I was just trying... of course, if I can
> make my script to run only if a particular windowmanager, e.g. blackbox
> or windowmaker, is started, it would be better.)
>
> Kurt.
>
Excuse me?  Does kdm not offer a GUI login?  ~/.xsessin is the script
that runs when you log in to the display manager.  Typically, it runs a
window manager in the background and maybe an xterm in the
foreground.  How are you starting blackbox if not from ~/.xsession?
Oh, ho, it is up to Xsession to run ~/.xsession.

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
