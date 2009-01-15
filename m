From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: Does cr3 register change when a new process is scheduled ?
Date: Thu, 15 Jan 2009 10:43:51 +0800
Message-ID: <804dabb00901141843k1ef231f7t11fe8d6f8befdf01@mail.gmail.com>
References: <5f695cd0901141833i61be35eemc906f1c70ff9822b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=542hKDSL4AgKt9UDiKgkyvSJBOLiGFz4czUx3H5faJY=;
        b=Gut8ItL00A0KrHy7lZ4Yn97drlvgtBsstDbKfPpy/XLVdsb9Pd/HsLH+gf0KfbuYcC
         KeYPlxeLFvm5VW4kXnWp6Uxxv+82GvXQrakA+irTbP2SjTQAh9uriKW1OvInanWhQR0+
         hCesprNZlSm19Y0U9mVBvA3KTrXcxxh3KwRro=
In-Reply-To: <5f695cd0901141833i61be35eemc906f1c70ff9822b@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: George Kumar <grgkumar4@gmail.com>
Cc: linux-newbie@vger.kernel.org

yes, every process running will have a different CR3 value....easily
seen when u printk() the value from different kernel module....and the
kernel module is running in the same process context as the "insmod"
that started the kernel module....so u can see the process name is
"insmod" if u printk() the value of the process name.   ie, user +
kernel mode all shared the same CR3 value, but different process will
have different value.

On Thu, Jan 15, 2009 at 10:33 AM, George Kumar <grgkumar4@gmail.com> wrote:
> Let us suppose we are talking about a uni processor system. Do we
> change cr3 page directory control register when a new process is
> scheduled to run on the CPU.
>
> thanks.
> George
> --

-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
