From: ichi@ihug.co.nz
Subject: Re: more X problems
Date: Thu, 14 Nov 2002 12:22:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD39583.7CEF55E3@ihug.co.nz>
References: <Pine.LNX.4.44.0211131533100.21708-100000@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailandnews.com>
Cc: Linux <linux-newbie@vger.kernel.org>

James Miller wrote:
> 
> I'm beginning to think I may have overlooked something 
> in installing X. I'll look and think that over a bit 
> before posting further.

Which X server are you using?  The default X server in
Slackware 8.1 is designed for VESA cards -- but not the
old VESA cards.  There is a cut-off point, but I don't
remember what it is.  1.2 ?   2.0 ?

You say you have an S3 Trio 64V+ video card.  I believe 
this card is VESA 1.2.  That VESA may be too old to work
with the default X server.  If so, try the S3 X server 
from the /pasture directory of Slackware 8.1.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
