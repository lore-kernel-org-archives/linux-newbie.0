From: caszonyi@rdslink.ro
Subject: Re: mouse
Date: Thu, 8 Jan 2004 23:28:51 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401082327460.520@grinch.ro>
References: <1073595430.2141.5.camel@shostakovitsj.larsemann>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073595430.2141.5.camel@shostakovitsj.larsemann>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lars Bungum <lars@bungum.no>
Cc: linux-newbie@vger.kernel.org

On Thu, 8 Jan 2004, Lars Bungum wrote:

> When I boot 2.6.0 the mouse is extremely sensitive, and although I set
> the driver to accelerate at the slowest available pace it still feels
> too fast.
>
> As nothing is different in the setup of XFree86 itself, the only
> difference is wheter I boot 2.4.18 or 2.6.0 I suspect this to be the
> reason.  But I don't really know where to start looking, is there some
> option I can give to the kernel at boot-time or something?
>

yes
use the following option when booting 2.6
psmouse_noext

> Thanks,
> Lars
>

Calin


--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
