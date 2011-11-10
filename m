From: Prashant Batra <prashant0100@gmail.com>
Subject: Getting the transport header in rawv6_sendmsg
Date: Thu, 10 Nov 2011 19:17:41 +0530
Message-ID: <CAG+XuE7UU75YK2betJpFOD5e0RA9=Kxfg-zoZUtzZW1dQz2ZFg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=ko5yTUenbdaRgRVLiLQJcofetrNvxf+rk9U85LbO9bc=;
        b=pE+BQ+9KEY3Fhbcn/UVImuOYkI7JkkhRfeS+F1ssGaTQskiSqPFF4NQRTooYZhQbNc
         NnFgNrkVJjR1626gybJ5uoHmNigr2rgV1pGu+0xw2I19WWQH6aaAN9XITvBBxwEVF0o6
         N+bettQS8raZqbY/bK0DOaGjccFs0K1oiaiL4=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-newbie@vger.kernel.org

Hi,

I wanted to get transport header in function -
static int rawv6_sendmsg(struct kiocb *iocb, struct sock *sk,
           struct msghdr *msg, size_t len)

The function is defined in =93/net/ipv6/raw.c=94

In the function,  flow, =93fl=94 is getting filled using the =93sk=94
structure, but as this is raw socket send, it only cares about the IP
addresses.
I need to do access the ports filled in by the user-space application.

Can some help me here?

Thanks,
Prashant
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
