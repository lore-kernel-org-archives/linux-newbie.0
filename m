From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: mozilla
Date: Fri, 12 Dec 2003 11:48:16 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312121142180.12505@ppg_penguin>
References: <20031211215110.67996.qmail@web40609.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031211215110.67996.qmail@web40609.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Thu, 11 Dec 2003, [iso-8859-1] szonyi calin wrote:

> Hi
> Sorry if this is off-topic.
> I need to change the fonts in mozilla's menus because they
> are too small. Any ideea how can i do this ?
> I'm not using gnome or kde (only fvwm2).
> Mozilla's version is 1.3:
> Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.3) Gecko/20030313
>
> Thanks
>
> Bye
> Calin
>
> P.S. Please cc any reply to me because i'm not subscribed to the
>
> list.
>

 Possibly, and assuming you are using 75dpi fonts in X, change your
XF86Config to put the 100dpi fonts before the 75dpi ones.  Not all
distros install 100dpi fonts by default.  The config file might be
XF86Config-4, or you may have more than one: if so, check in the
XFree log in /var/log to see which one is being used.

 Of course, if this does the business it will also make most other
fonts bigger on your desktop.

Ken
-- 
I'm as free as a bird now, and this bird you cannot chain.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
