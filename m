From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: repairing unstable mouse behavior
Date: Thu, 15 May 2003 10:58:01 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305151458.h4FEw1TP025467@hartford-hwp.com>
References: <200305131334.h4DDYvjs017212@hartford-hwp.com>
	 <1052833600.6654.2.camel@goldfinger.orbdesigns.com>
	 <200305150241.h4F2fNoq020922@hartford-hwp.com> <1052968056.8900.5.camel@goldfinger.orbdesigns.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1052968056.8900.5.camel@goldfinger.orbdesigns.com>
	(bilbrey@orbdesigns.com)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: bilbrey@orbdesigns.com
Cc: linux-newbie@vger.kernel.org

> On Wed, 2003-05-14 at 22:41, Haines Brown wrote: > When I log out,
> the erratic behavior subsides. It comes and goes in > severity. I
> have backups and would use them simply to overwrite files > if I
> knew what to overwrite.

> The other possibility that springs to mind is that the mouse driver
> spec is wrong. The file that controls how X operates is
> /etc/X11/XF86Config-4 (or in RH, omit the -4). If you have a
> known-good backup of that file, then checkpoint the system version,
> and copy yours in - see what happens.

Brian,

Thanks. I ran diff on /etc/X11/XF86Config file and an old backup, and
no diff.

The problem arose when I was playing with xkbset, and that caused X to
crash. After that, xkbset would not write configuration changes to
disk. So I replaced it with a back up, and it now works.

I may have sat on the driver. Do you know where it is located? Or is
it a kernel module? I guess not: lsmod says mousedev is in use.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
