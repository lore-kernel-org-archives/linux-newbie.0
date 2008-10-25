From: Joe Damato <ice799@gmail.com>
Subject: [PATCH 00/12] x86: Cleanup idt, gdt/ldt/tss structs
Date: Fri, 24 Oct 2008 20:15:20 -0700
Message-ID: <1224904532-9586-1-git-send-email-ice799@gmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:from:to:cc:subject
         :date:message-id:x-mailer:in-reply-to:references;
        bh=q5jg9GbvKiBF3t1l9YISKfZb4t3FYKgWdq8mDbqAlZY=;
        b=ODfdPvhL8Up99rKks6HHFxKWlMqM0uB6sb3nQcC+XfX21y7SUq117mF1ME02VWnMAv
         itcPRZR2ePj4iGVPus+L8Bh2qWIh1omC8gjM/+hNkT3lGNUBYwdDuvCqk9paesHb+9Bu
         0cNWhLZIT9lX3lUvEv8kyyjofFn4aHZ+w+TJQ=
In-Reply-To: <>
References: <>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Joe Damato <ice799@gmail.com>

Hi -

This is my first submission to the kernel, so (beware!) please let me know if I can make any improvements on these patches.

I attempted to clean up the x86 structs for 32bit cpus that store IDT/LDT/GDT data by removing the fields labeled "a" and "b" in favor of more descriptive field names. I added some macros and went through the kernel cleaning up the various places where "a" and "b" were used.

I tried building my kernel with my .config and then also did a make allyesconfig build to help ensure I found everything that was using the old structure names. I also tried a few grep patterns. Hopefully I got everyone out.


Thanks,
Joe Damato
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
