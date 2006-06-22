From: "Jesper Juhl" <jesper.juhl@gmail.com>
Subject: Re: Embedded Linux?
Date: Thu, 22 Jun 2006 13:29:46 +0200
Message-ID: <9a8748490606220429x47cd9aaav181b2b756149941b@mail.gmail.com>
References: <292693080606212337q61c62cb1s56307a8f00847f8a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080606212337q61c62cb1s56307a8f00847f8a@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 22/06/06, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> Hi list,
>
> I'm a newbie, true to its every sense, and hence this question.
>
> I have come across the term "Embedded Linux" a lot of times. Is
> embedded linux a different branch of kernel all together? Or is it

Some embedded uses of Linux use the vanilla kernel, some use highly
modified kernels custom, some use vendor kernels. What makes a Linux
kernel embedded is simply that it is used as such.

> that the vanila stock kernel (downloaded from kernel.org) becomes
> "Embedded Linux" when compiled for an embedded processor like ARM /
> PPC etc?

Embedded boards can be found with almost any CPU available under the
sun. You can get embedded boards with arm/ppc/pentium/opteron/c3/sparc
and many more. The type of CPU does not determine if something is
embedded or not. Also, many CPU's that are often used for embedded
projects are also used elsewhere.

Simply put; if you use Linux (in whatever form with whatever hardware)
in an embedded application/project, then it becomes "Embedded Linux" -
simple as that.


--
Jesper Juhl <jesper.juhl@gmail.com>
Don't top-post  http://www.catb.org/~esr/jargon/html/T/top-post.html
Plain text mails only, please      http://www.expita.com/nomime.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
