From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: preempt_disable() - disables preemption on all processors?
Date: Sat, 29 Sep 2007 00:21:30 +0700
Message-ID: <f284c33d0709281021x3edf2227r2ebbd5524785a7e8@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B06536E77@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=X8sINArq6uxp9PF+tkGNmvNRSxrYIwft2bwbwNBF+O0=;
        b=JwmRz3vPjmxCbPBAmr6FUX+xhoEZmtHOtHrok6Id4xjcbrNnu6aQmKQbHRhdKwNloctfsdDIMj2kv1RXsiSxThgncW1rUokAWaUxEeVdCNJ4CBCZw/LwmMVwXKUdZWo+6dL0OXCRDXBGjBgMqAd6N+Ow113cvCXL3uU7Ja/Ebx0=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B06536E77@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

HI...
> Does the preempt_disable() disable preemption on all the processors or just the current processor?

Fast check on schedule() code makes me believe it just disables the
preemption on current processor which call preempt_disable().

regards,

Mulyadi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
