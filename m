From: Hubert Chaumette <hubert.chaumette@kolabnow.com>
Subject: Re: what happened if kernel version is different from module build
Date: Sun, 15 Oct 2017 22:04:46 +0200
Message-ID: <f7f927182241fd7f8a23aad18adfacdd@kolabnow.com>
References: <3665C4BC-EACC-4527-85AA-2D8D6F107499@mails.ucas.ac.cn>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
        message-id:references:in-reply-to:subject:subject:from:from:date
        :date:content-transfer-encoding:content-type:content-type
        :mime-version:received:received:received; s=dkim20160331; t=
        1508097887; x=1508097909; bh=7wKbeukRGBcw0TPgH8FBM/3nTxTZKwgKJpx
        W39JXBHg=; b=3bSqIoI4ic+gHKf6zPsQaw2UIjlTSsd6TtN3T/cj8DjfNu/esKL
        yju05U2As0ieplkJF7tR4Tvfm+5+TfrcFzQfqh71iAAZWuHlyajy3QaxUQrooIWd
        ZdK7EKkBm3lp0GM9duKx5IGadfkGNZGj8TNc7oL1NGwWXRFsoR+9j35mVVUoXzaI
        RDCwhWVqvBfjpwGFp8Re5tw6+dgsBCD8euUCBb97CU3l8F/yBm+C9VW51iaMzkmF
        4TAOK9RyNUSVpXjqodyrfzRvAqBmH4OGJCG+MfX/OzuyaoU+4PFFuUMGp5376sXa
        6wcXW6GdNiYs+e+HW4iMJ49931aI3rw2SXJjSvbVl1ccR1FxlPub4kfBSCRJO5ux
        BYI4GruNPMVyk0JqJ7IficuvmXoLo0O34Z631lgDpNV+jgTBBwsy/j4S9vZMuGP5
        un3rrPrUaH7j3TxBdQymbqTik6b 
In-Reply-To: <3665C4BC-EACC-4527-85AA-2D8D6F107499@mails.ucas.ac.cn>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: wuzhouhui <wuzhouhui14@mails.ucas.ac.cn>
Cc: linux-newbie@vger.kernel.org, linux-newbie-owner@vger.kernel.org

Le 15/10/2017 16:00, wuzhouhui a =C3=A9crit :

> Suppose I compile a kernel module in kernel 2.6.32-431.el6.x86_64, but=20
> I load it
> successfully in kernel 2.6.32-432.el6.x86_64. Can this module works=20
> properly? Or
> whether it is harm to system?

In your case both kernels are 2.6.32, I there is probably only bugfixes=20
between
these two kernels (the core kernel code shouldn't have changed), so I=20
think it
*can* work properly, provided your module didn't rely on a bug fixed in=20
the new
kernel.

Regards,

Hubert Chaumette
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
