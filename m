From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: RAM and swap partition
Date: Mon, 16 Dec 2002 16:33:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DFE46A6.C36FC25A@gelm.net>
References: <200212160834.gBG8Yuq14788@ev6.be.wanadoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org



Heimo Claasen wrote:
> 
> Chuck - that swapfile: has it to be created anew just before any
> prog/app is run ? Or could I just leave it "on" ?

 A swap file, once created, can be left.
However, you will need to restart swap upon each boot.
Perhaps a rc.local script command will do.


> Well, and then - can I conclude from this that a swap _partition_ is
> basically used like a file ?

 Well, maybe a swap file is used more like a partition.  :-|

> (Or else: would programs which need swap create their _specific_ files
> in a swap partition ?)

 A swap file and a swap partition behave as virtual memory,
not as a file.  So let us not try to assign file attributes
to virtual memory (swap) or file attributes to virtual
memory (ramdisk).  User applications do not create swap
or ramdisk.  User applications request memory or create
scratch pad files.  ;-)

 I think.

HTH, Chuck

> 
> -heimo
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
