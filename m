From: Pei Lin <telent997@gmail.com>
Subject: Re: preempt_disable() as synchronization tool
Date: Mon, 12 Oct 2009 11:05:53 +0800
Message-ID: <41d311580910112005q462beb01q1f1d4d6f5017ead8@mail.gmail.com>
References: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=HOL1E7M5KX8dh2OQsZ5DCneU/tpCUmPglof9EIi387E=;
        b=gpeDbkkW1VEFQ6EBWf8eYpdVEjI2RaQFB40itIj+wdNHledV71XuAcwOqVsZep3D5O
         TEXtdGjFmZbvzaM7DOkkaSV3Eui4mav8Yyjb5B3gcVsDMfIaQuvkHi16AxLBR3KVLSGT
         xQyHkUtu3QMWDT9JWYEHkZNdEWfoDYfREy4cQ=
In-Reply-To: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

http://lxr.linux.no/#linux+v2.6.31/Documentation/preempt-locking.txt


2009/10/9 Daniel Rodrick <daniel.rodrick@gmail.com>:
> Hi List,
>
> I have few queries related to preempt_disable() and would appreciate
> any answers to it.
>
> Firstly, Does preempt_disable() disable the preemption on all the
> processors or on just the local processor?
>
> Secondly, a preempt_disable() a suffifient synchronization technique
> to guard a data that is shared only among process context code on a
> Uni-processor? And on SMP?
>
> Lastly, is it allowable to schedule / sleep immediately after a call
> to preempt_disable()?
>
> Thanks & Best Regards,
>
> Dan
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>



-- 
Best Regards
Lin
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
