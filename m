From: Jake Seevers <pacha@gmx.at>
Subject: Re: info needed on atomic operations
Date: Sun, 4 Jan 2004 17:57:08 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401041757.08438.pacha@gmx.at>
References: <20040104122444.98101.qmail@web21208.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040104122444.98101.qmail@web21208.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: Srinivas Chinta <chintasrinivas_tech@yahoo.com>

Srinivas,

On Sunday 04 January 2004 13:24, Srinivas Chinta wrote:
> Hi all,
>
> I need some information on atomic operations.
> Please provide me some information on how do I do the
> following operations atomically(for iX86):
> (1) set a charecter ( dst = src),
> (2) compare and then set a charecter ( if (dst==X)
> dst = src;)

What exactly are trying to do? Are you working in user- or in kernelspace? 
What kernel? What programming language?

Cheers

Jake
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
