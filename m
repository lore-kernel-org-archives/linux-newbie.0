From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: writing disk image to file
Date: Tue, 10 Jun 2003 15:57:37 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0306101550370.5736-100000@router.windsormachine.com>
References: <3EE63421.7060601@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE63421.7060601@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 10 Jun 2003, Stephen Samuel wrote:

> The main purpose of the BS parameters was to take care of I/O devices for
> which the write size made a difference. tape drives with variable block
> sizes or streaming come to mind. Depending on the tape drive, you could
> sometimes end up with very different performance and even effective tape
> capacities depending on how big your write block sizes were.

Think this would explain why I only get about 16.5-17 gig out of a DDS-4
tape drive using the default block options (in other words, i didn't
specify) on tar?

I know some of it is marketting, that they don't _ever_ get 20 gig out of
them for various reasons.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
