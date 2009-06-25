From: sandeep lahane <sandeep.lahane@gmail.com>
Subject: Re: Accessing CPU performance counters from user space
Date: Thu, 25 Jun 2009 16:30:52 +0530
Message-ID: <2d51cbf80906250400y21ddfb93g1d3f6f36c7fc507d@mail.gmail.com>
References: <2d51cbf80906250358x2342c823j1433afcdd548ca87@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=fZWQX2j7fQ5jLMh8BYGpymzW+sseu4u0/02PJrSANEE=;
        b=drKyXXzhRkk8zuhKcOIE2JxpkqTx4zvlKmDo6FyUUarKMb1fWmP8/wU5wzfwbw30BQ
         iao/FYUbfo/O9gMuIx4z3nEcaigzXMZg3aZRXMgnEWMKvrnPX540CBc266xoIIuQcbFo
         Aw0BSXdDf2Y2OIaYQolnVES5soeyjz4Bkpp/c=
In-Reply-To: <2d51cbf80906250358x2342c823j1433afcdd548ca87@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

On Thu, Jun 25, 2009 at 4:28 PM, sandeep lahane<sandeep.lahane@gmail.com> wrote:
> Hi All,
>
> Is it possible to access cpu performance counters from user space?
> AFAIK, it is not possible.
> I am aware of various attempts like perfmon and perfctr patch set.
> Looks like a kernel module is
> mandatory to access these registers. My objective is to measure
> various parameters like number
> instructions retired, number of cache misses, number of brach mis
> predictions etc.
>
> I know of an alternative way to count the number of instructions by
> using ptrace but I think this approach
> is very slow.
>
> Regards,
> Sandeep.
>

I meant Perfsuite and perfctr, not perfmon.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
