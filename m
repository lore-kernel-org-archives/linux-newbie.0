From: ichi@aggies.org
Subject: Re: cloning a system
Date: Sat, 12 Apr 2003 08:54:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E97D42C.5C9325B@aggies.org>
References: <5.1.0.14.1.20030411094900.01ea5030@celine> <5.1.0.14.1.20030411121238.0207ae40@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: prg5-1gc1@dea.spamcon.org
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> What is the easiest way under Linux to make an EXACT 
> duplicate of a hard disk (not a partition)? 
>
> is there a way, under Linux, to clone the complete 
> drive -AND- have it be bootable out of the box?  
> Does that method depend on the two drives being
> physically identical?

It seems strange telling Ray Olszewski (the Answer Man)
how to do something, but here goes:
--------------------------------
dd if=/dev/hdb of=/dev/hdc bs=2M
--------------------------------
That will clone the slave HD on the primary IDE interface
to the master HD on the secondary IDE interface.  Set bs
close to the size of the HD buffer.

The two HD do not have to be the same size.  The destination
drive can be larger, but then there will be space left-over
(which, I think, can be allocated with fdisk).

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
