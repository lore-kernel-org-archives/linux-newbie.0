From: whitnl73@juno.com
Subject: Re: Auto logoff feature enabled? (Debian Woody)
Date: Tue, 28 Jan 2003 22:29:55 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030129.113817.134688608.2.whitnl73@juno.com>
References: <1043731820.567.4.camel@dink>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1043731820.567.4.camel@dink>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jasonj@satx.rr.com
Cc: linux-newbie@vger.kernel.org

On 27 Jan 2003, [ Jason J ] wrote:

> Hi Everyone,
>
> I've just installed Debain Woody; base-install
> an a dell inspiron 8100. The install went fine but I have
> one question. When I step away from the machine
> to take a break, I return to find that I've been
> logged-out automatically. I'm running KDE as my Window
> Manager, using the Gnome display manager (gdm)
>
> I ran the utility 'gdmconfig' but didn't see an
> option for disabling this feature, I also
> digged around the /etc/X11 directory. Next, I checked the
> conf file "/etc/gdm/gdm.conf" and I don't see an option for
> auto Logoff; however there is a AutoLogin feature that is
> disabled.
>
> Thanks in advance for the help
> Jason
>
If your shell is bash, this may apply:

File: bashref.info,  Node: Bash Variables,  Prev: Bourne Shell Variables,  Up: S
...
`TMOUT'
     If set to a value greater than zero, the value is interpreted as
     the number of seconds to wait for input after issuing the primary
     prompt when the shell is interactive.  Bash terminates after that
     number of seconds if input does not arrive.

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
