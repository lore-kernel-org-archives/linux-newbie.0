From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: IRQ Tracing Problem in Linux 2.6.28 Kernel
Date: Wed, 15 Apr 2009 03:06:49 +0000
Message-ID: <804dabb00904142006l101fc13ai3fd38b4e30b4081a@mail.gmail.com>
References: <CB2DD11991B27C4F99935E6229450D32042AAA74@STORK.scenix.com>
	 <CB2DD11991B27C4F99935E6229450D32042AAB29@STORK.scenix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=DeNSqQocSfaDh79yblKeju3L0/xmmKASy011pLxqXx4=;
        b=sV69zLRcQWW/q2RDDWZh7GOi2zEmYMqo3+xNA0JUbyj1Uquptgvb9kcozLU90zyceh
         OQ+Zb8u4byVwaFUbTeFP95zdbkNmQhDuYf6mUpAGUgzsqHEs1ckr3sIzK+Td50vpSc5y
         VfZoafcxaqfTyCbew8Dud28LYDpXhAIkRVh3Y=
In-Reply-To: <CB2DD11991B27C4F99935E6229450D32042AAB29@STORK.scenix.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sol Kavy <skavy@ubicom.com>
Cc: linux-newbie@vger.kernel.org

Just my guess......

On Tue, Apr 14, 2009 at 10:58 PM, Sol Kavy <skavy@ubicom.com> wrote:
>
> I have discovered why other architectures do not have the same problem.   The back trace indicates a real defect (i.e. deadlock) in the generic code.
>
> Most architectures override sched_clock() with their own version.  Kernel/sched_clock.c:38 is a weak alias that will be overridden if an arch directory supplies its own.
>
> Most of the arch directories provide an implementation that directly access the jiffies_64 variable "without" acquiring the xtime_lock.
>
> Some of the implementations provide a "poor" implementation in that the value of the jiffies_64 during a 32 rollover is not taken into account.  If sched_clock() is to be called while holding xtime_lock, the core implementation should be modified not to call get_jiffies_64() (which requires the xlock) but to use something like the following:
>
> unsigned long long sched_clock(void)
> {
>        unsigned long long my_jiffies;
>        unsigned long jiffies_top;
>        unsigned long jiffies_bottom;
>
>        do {
>                jiffies_top = jiffies_64 >> 32;
>                jiffies_bottom = jiffies_64 & 0xffffffff;

in general this type of operation is only done when u are in 32bit
mode.   In 64bit mode, u can do it in ONE atomic assembly
instruction.....so no locking needed.

>        } while(unlikely(jiffies_top != (unsigned long)(jiffies_64 >> 32)));
>
>        my_jiffies = ((unsigned long long)jiffies_top << 32) | (jiffies_bottom);
>        return (my_jiffies - INITIAL_JIFFIES) * (NSEC_PER_SEC / HZ);
> }

-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
