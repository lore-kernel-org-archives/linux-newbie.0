From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Trying to get GUI'ed
Date: Thu, 31 Oct 2002 06:58:36 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210311158.g9VBwa605937@hartford-hwp.com>
References: <20021030.203356.134682184.1.lawson_whitney@juno.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20021030.203356.134682184.1.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: lawson_whitney@juno.com
Cc: paul.furness@vil.ite.mee.com, linux-newbie@vger.kernel.org

> > Third, I wanted to uninstall the driver RPM. First, I used rpm -ql on
> > NVIDIA_kernel to get the driver's name. The one return was
> > /lib/modules/2.4.18-10/kernel/drivers/video/NVdriver. Then I ran: rpm -Uvh
> > NVdriver. Unfortunately, "no such file." Apparently I can't run the x
> > server without this uninstall, and apparently I'm not going about it in
> > the right way.
> 
> Are you trying to uninstall that?  Not with -U you can't. 

Sorry about the typo. I meant rpm -e. The problem was that I was
trying to uninstall the driver rpm, not the driver package rpm, and
had to uninstall the GLX package first. I had sucess when I figured
out the right target. By the way, it was nice how rpm -e automatically
recovered the old files it had put aside in the form xxx....RPMSAVE.

Thanks.

Haines
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
