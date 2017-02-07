From: Dmitriy Tochansky <tochansky@tochlab.net>
Subject: Re: Socket bind failing with error -98
Date: Tue, 07 Feb 2017 11:00:04 +0300
Message-ID: <d08a0657a7cda8cc4444d2b650f0723e@tochlab.net>
References: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi!

Suraj Choudhari писал 2017-02-07 09:47:

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
May be you can show some code to us?

-- 
D
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
