From: Rick Brown <rick.brown.3@gmail.com>
Subject: Where is MMU enabled?
Date: Mon, 9 Nov 2009 23:32:50 +0530
Message-ID: <7783925d0911091002r7ca75de8ia292eaba81e748fe@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=iu9wnZh4dhSmSvjeEQ88Qzb9YZtJ+R5Qksd7ciUlaIw=;
        b=wzigNmnCJ4yvyFyMRADawEt+RbYZlWwwEKfg8Ve4qejwxjy2k1YHyzBtWN5L1DLqCu
         c8WS197GP5qQygGMCqLqTOQiA20hU/b9ZQVhpPmPp8yE/U0jN2Jyap6NIh0p6ElJ7v+h
         GAVqUKqzJwZnLt8RXqezg4T0oy3FvaqXiIoXI=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi List,

I am curious to know where is the MMU turned on in a Linux PPC system
- is it the u-boot or the linux kernel? Since enabling of MMU shall be
the point from where the CPU will have to generate virtual addresses -
I think it should be somewhere in the kernel. The reason is that all
the addresses that we give on the u-boot command line are physical
addresses and not virtual, right (Thus implying MMU is not turned
on?)?

Or is it that kernel always gets the control with MMU on on PPC systems?

How about other architectures?

Thanks,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
