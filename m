From: G Anna <drguruolai@eth.net>
Subject: Re: Kernel error
Date: 27 May 2002 10:05:41 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3n0um5hsy.fsf@wobble.eth.net>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Shaun Bryant <sbryant@ThePit.org>
Cc: linux-newbie@vger.kernel.org


> Date: Sun, 26 May 2002 07:57:59 -0700
> From: Shaun Bryant <sbryant@ThePit.org>
> Subj: RE: Kernel error

(snip)

> depmod: *** Unresolved symbols in
> /lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
> depmod: *** Unresolved symbols in

(snipped depmod error listing)

I am just guessing.  While compiling the kernel did you do

$ make mrproper

before anything else?  I had a similar problem and it was because of
not making the above mentioned target.

Of any help?

anna

-- 

(14) The  hero is not entitled to a last kiss, a last cigarette, or any
     other form of last request. - Peter Anspach in "The Top 100 Things
     I'd Do If I Ever Became An Evil Overlord"

                                            http://www.eviloverlord.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
