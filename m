From: Santosh <ilpacx@gmail.com>
Subject: Re: Module init for compiled in vs loaded modules
Date: Tue, 19 Aug 2008 11:32:49 +0530
Message-ID: <48AA6209.5010307@gmail.com>
References: <609891.43692.qm@web63401.mail.re1.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=cWfqMoCXgUq8PValiR5qRWz+oSI6m/5SRzvBl9WCJ3U=;
        b=FWrrmE2TRfK9TeCN0HMO4fmK0ZNKZxIR3lEFC7VZyahmBUNIIWIk2CA2CmASr2i30z
         mvkH+zM5xCDrH4bKu1+9RidPILmvU5BfQi93yGq5EEueT63LpCLBOhx5xx+xaFVouPe8
         fHT1TlxJZjukrMMH4+pqkAqSuow9b1MlH+BwY=
In-Reply-To: <609891.43692.qm@web63401.mail.re1.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: fundu_1999@yahoo.com
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Fundu wrote:
> Hi,
> 
> For kernel modules can be loaded by explicitly do insmod etc for ones that are not compiled into the kernel.
> 
> 1) But where do i look to find how the kernel loads(ie. calls the fn exported by module_init(XXXX)) for modules compiled into the kernel.
> 
> 2) Does the kernel call some kind of probe to load them ? say i have 2 module compiled into the kernel for 2 diff type of ether cards. Would the kernel call init on both.
> 
> thanks !
> 

Please do not hijack the thread, it messes up the thread in our mail 
boxes and also the archive which will be used by others in the future.

--
Santosh S
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
