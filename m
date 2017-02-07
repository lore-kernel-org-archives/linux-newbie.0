From: Suraj Choudhari <surajschoudhari@gmail.com>
Subject: Re: Socket bind failing with error -98
Date: Tue, 7 Feb 2017 23:57:44 +0530
Message-ID: <CAGvB2rM50ubvbQs1ZC1CK5GBSLjQaz74O2uv7nL4Y3iq48gnQw@mail.gmail.com>
References: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=lzmNlij7Wafh+RGtiEMw3s1nKzjmUgZqA+nRz3ozpv4=;
        b=qZwrt6vzRCMKRgWMBy8w6IQVPodeSEQTW9TGihZDrtEW5CrDl2k0IsxkyhZMqoH2Fb
         7vUEvJbzRjvxTZkdZ3gOmoPmEm27JiaeEL/Vyi0XVSv34y5RNyXBR7V9BIE+qrlJK+tm
         KRkAXNUNqIViUuGuCMjfRswwAnKlIs23iIu9bjci3rBSW4h+upRtHykUMgcrX/gspsP/
         WG62pFe2DdUTaHGLfCszVmtjId9tLTsVzn3DKaCaS9VVUg48X5DVz2ULlLuCbDLH2ytl
         2ytfQJHbM9FbI6Hijw3pDb6sqLSCvCb/yYVaJ8tNa87HzcdzjZPwhpZVbbfH87NntGW2
         8QsQ==
In-Reply-To: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, lartc@vger.kernel.org

Please share your thoughts about the problem.

Thanks,
Suraj

On Tue, Feb 7, 2017 at 12:17 PM, Suraj Choudhari
<surajschoudhari@gmail.com> wrote:
> Hi experts,
>
> I am facing a problem while binding to TCP socket using bind()
> function,  the problem is see for kernel versions >= 4.4.
>
> The bind() function is failing with error code -98.
>
> Currently i am calling bind() through a kernel thread.
>
> I searched similar errors and tried with 'setsockopt' with
> 'SO_REUSEADDR' and 'SO_REUSEPORT ' flags.
>
> However, bind() still continues to fail with similar error.
>
> Can you please suggest if there are any other ways to fix it or any
> particular debugging we shall do to analyze it ?
>
>
> Thanks,
> Suraj
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
