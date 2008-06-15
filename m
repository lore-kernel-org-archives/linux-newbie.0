From: Ben Nizette <bn@niasdigital.com>
Subject: Re: how to find when a symbol introduced into the kernel
Date: Sun, 15 Jun 2008 18:08:04 +1000
Message-ID: <1213517284.3596.5.camel@moss.renham>
References: <000b01c8ce6b$a7bfda50$f73f8ef0$@edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000b01c8ce6b$a7bfda50$f73f8ef0$@edu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Zhaohui Wang <zwange@gmu.edu>
Cc: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org


On Sat, 2008-06-14 at 18:11 -0400, Zhaohui Wang wrote:
> 
> Hi all
> 
> To write multiple kernel version compatible programs, I need to know when a specific symbol (a struct or a function)were introduced in to the kernel tree
> 
> Binary search against multiple kernel sources is a way,but is still slow.Is there any fast way to use modern git technology to make my life easier?
> 

You can see the last time a line in a file was touched with git-blame;
that might help.

	--Ben.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
