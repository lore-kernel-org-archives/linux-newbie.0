From: Christos Gkekas <chris.gekas@gmail.com>
Subject: Re: How to find bugs to fix
Date: Sat, 3 Feb 2018 10:15:21 +0000
Message-ID: <20180203101303.GA6747@inspiron>
References: <20180201002258.GA6807@u.boisestate.edu>
 <CANpvso6T+SNqq1Aem0c05QZVoFHGNtmJ1sysxEBD-GRxnC-hBA@mail.gmail.com>
 <20180202185521.GA18791@u.boisestate.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9tSjPKs/M3wFg6/WyQQ6CUINwaLpZoHGmhEXQURKodM=;
        b=d3GfkaXbmoHmCEyRlvO+icmS8hm7oFoNt8ButiImjFWct+DVJoHtODmnmeU2RQbveW
         5ZGf9e7MA1Tb3UABEM4svvneO5bCbCcUi1ZqG0ZFy8cgr8BAuRFYkGnYwZLfI3oib0Sj
         B/3ik/66WCGIIgM7D1mX6GDCAww04lJKYx2flaKjCfaulc5FxWoxfN+dPUSp25KorMBr
         OgWIGdQPBG4zMCvasytiCwpYtRvqQuTPK+N06mYes84EeHX1Oo06VUMwhemJh4yTP2xz
         eGIgMhF20E2HETDfgCwxtnWFC3QGgQ8NnqbkdOyTvAfzeW+u0op+lXmU8xSZdMvjcw65
         3emQ==
Content-Disposition: inline
In-Reply-To: <20180202185521.GA18791@u.boisestate.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joshua Chamberlain <chamberlain.dev@gmail.com>
Cc: Eric Curtin <ericcurtin17@gmail.com>, linux-newbie@vger.kernel.org

On 02/02/18 11:55:22 -0700, Joshua Chamberlain wrote:
> Thanks for the input. I was hoping to fix bugs that were affecting many
> people, not just me. 
> 
> I just tried all my USB devices I had lying around,
> but could not find any bugs. I didn't think to check the buttons on my
> laptop, so thanks for that!
> 
> The bugs that I tend to see on laptops seem to not be a part of the OS
> itself. For instance, when I resume my laptop from hibernation, the
> networking interface doesn't work, which I think is an issue somehwere
> in Ubuntu. I can't believe I'm complaining about this, but LINUX IS TOO
> STABLE!
> 
> Thanks though...
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Hi Josh,

I would highly recommend browsing the Kernel newbies site here:
https://kernelnewbies.org/

It contains a lot of information to get you started, including how to
navigate through the Linux code, how the development process works, how
to locate bugs, submit patches and so on. I think it is important to
read through this material if you have not already done so.

Additionally you can compile the kernel and have a look at the warnings
that gcc generates during compilation. The majority of them will be red
herrings, but some of them can point to genuine issues with the code and
actual bugs. I think that is a good way to get started.

Regards,
Christos

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
