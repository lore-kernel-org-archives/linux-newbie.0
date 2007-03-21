From: Vivek <vivekutal@gmail.com>
Subject: Re: need for 3G/1G split
Date: Wed, 21 Mar 2007 16:08:21 +0530
Message-ID: <1174473501.9500.12.camel@localhost>
References: <7783925d0703202115j11dbf254nc916252e4cd98e8a@mail.gmail.com>
Reply-To: vivekutal@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:subject:from:reply-to:to:cc:in-reply-to:references:content-type:organization:date:message-id:mime-version:x-mailer:content-transfer-encoding;
        b=jKt/TZ6wGfuvQg4eQ7OzjfSi+sfsLUs6Y2k30/q4WaMiCgWu4g4kC4SzUyuQrJMQ0yx7HqUTTqdm1zmEQYax2cmNyWCfxgM8QvopBJ503HnxDr+8XSAz4fszP6EVVuzufn8Wl662jK9903vxzBuUw95Oe8TDJW4DILRl+bxGs3I=
In-Reply-To: <7783925d0703202115j11dbf254nc916252e4cd98e8a@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

> Why is kernel restricted to use virtual addresses of only 1 GB? Or
> what is the need to split up the virtual address space into user
> addresses and kernel addresses?

We can have 4GB for kernel and 4GB for userspace but this has a overhead
of flushing of tlb for every syscall.
You can also make the split 2/2GB but this has a problem of having less
user address space.
3/1 is a better choice.

--
Vivek Kutal


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
