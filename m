From: Ralph Gesler <rgesler@pacificnet.net>
Subject: Re: hard drive head parking in linux
Date: Tue, 10 Dec 2002 20:52:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF6C48A.B1F2279B@pacificnet.net>
References: <200212092132.OAA04397@cu.imt.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

Jerry James Haumberger wrote:
> 
> Hi, folks --
> 
> Does Linux automatically lift the heads of a hard drive off
> of the disk after some time of non-activity?
> 
<snip>

AFAIK the heads _never_ touch the surface, even in the "park" position,
while the disk is spinning. If this event should occur, good by HD. They
are only allowed to rest on the surface when the disk has come to
complete stop.

Ralph
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
