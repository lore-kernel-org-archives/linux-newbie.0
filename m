From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Volatile
Date: Tue, 6 Feb 2007 17:34:00 +0530
Message-ID: <b115cb5f0702060404y2ad51d1fp3b033c6d0e39705@mail.gmail.com>
References: <439896.82429.qm@web35414.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <439896.82429.qm@web35414.mail.mud.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

On 2/6/07, Ankit Jain <ankitjain1580@yahoo.com> wrote:
> Hi ppl
>
> Can any body here make this "volatile" more clear in
> terms of C language with some practical example i.e
> why we need it? or for what it can be used for ?
>

Volatile provides a hint to the compiler not to act oversmart by
performing optimizations on the variable ;-). This is because the the
value of the variable may be modified from elsewhere (for e.g.
interrupts etc) which the compiler is not aware of. Hence it should
not cache it anywhere, and should always generate load instructions to
read the "fresh" copy.

Regards,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
