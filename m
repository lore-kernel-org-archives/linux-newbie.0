From: James Miller <jamtat@mailandnews.com>
Subject: Re: Suggestions on Backups
Date: Thu, 3 Oct 2002 11:48:38 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210031143170.1285-100000@localhost.localdomain>
References: <001501c26ad9$11865920$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001501c26ad9$11865920$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux <linux-newbie@vger.kernel.org>



On 3 Oct 2002, Paul Kraus wrote:

> ownerships. I am not sure about the space on the UNIX machine. It is
> given in blocks and I don't really understand how blocks translate into
> MB's if someone could explain I would be most appreciative. 
> 
Does df -h work on Unix, too? That will show you a drive's size and 
useage in MB's, along with a percentage of used space (just df, without 
the -h argument, will give the same info in blocks). I don't know Unix 
at all, apart from those commonalities it has with Linux, so I just can't 
say if this command works under Unix. But it might.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
