From: lawson_whitney@juno.com
Subject: Re: Trying to get GUI'ed
Date: Wed, 30 Oct 2002 20:09:25 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021030.203356.134682184.1.lawson_whitney@juno.com>
References: <200210301840.g9UIeSL01894@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210301840.g9UIeSL01894@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: paul.furness@vil.ite.mee.com, linux-newbie@vger.kernel.org

On Wed, 30 Oct 2002, Haines Brown wrote:

> Lawson,
>
> At this point I'm only trying to back out of my abortive nVidia driver
> install and get back to the nv driver that came with my RedHat 7.3
> distribution.
>
> To do that, I recovered my old XF86Config-4 file. The rpm install for
> the driver commented out lib.GLcore.a and libglx.a, which I restored.
>
> Third, I wanted to uninstall the driver RPM. First, I used rpm -ql on
> NVIDIA_kernel to get the driver's name. The one return was
> /lib/modules/2.4.18-10/kernel/drivers/video/NVdriver. Then I ran: rpm -Uvh
> NVdriver. Unfortunately, "no such file." Apparently I can't run the x
> server without this uninstall, and apparently I'm not going about it in
> the right way.

Are you trying to uninstall that?  Not with -U you can't.  Mind I've
never tried to uninstall an rpm, but uninstall is spelled -e or
--uninstall
  -U is upgrade, essentially the same as install.

> Unfortunately, nVidia's support list works through a web page, and
> since I've lost my X server, it does me no good (I used to rely on
> lynx, and now I see that I've got it on Linux! I'll try to use it to
> reach nVidia). My gnus gets into a loop (no fun when it happens from a
> terminal), and so I can't pursue these issues on an appropriate
> newsgroup unless I can somehow telnet into the newsgroup (something
> I've never tried). Wow; all this takes me back to my DOS days!
>
> Haines Brown
>
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
