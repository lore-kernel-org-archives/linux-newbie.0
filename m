From: ichi@ihug.co.nz
Subject: Re: XFree86 crash log
Date: Wed, 13 Nov 2002 16:28:46 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD27DBE.4BA48F55@ihug.co.nz>
References: <3DD5D41B@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: james miller <jamtat@mailandnews.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

james miller wrote:
> 
> Right now, I am trying to install a minimal Slackware (8.1) 
> The minimal install does not have X installed or configured, 
>
> Trio 64v+). When I try to run "startx," the X server crashes 
> with the following report dumped to /var/log/:
> ##############################################################
> _XSERVTransSocketOpen: socket() failed for tcp

Which kernel are you using?  The kernel used to install
Slackware 8.1 is the lowmem zimage, which (I think) does 
not support sockets.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
