From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: dear list
Date: Mon, 6 Sep 2010 12:57:57 +0800
Message-ID: <AANLkTi=XvHbNHGGM9H=ewGv-n+Jv+c8cBrVFK2tn_DyC@mail.gmail.com>
References: <4C81C017.7070104@qq.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=fdWgMSls3F0GkX9MLofoeCM+Q+HxOhYO2KmSEDmGUBk=;
        b=RRPax9KXrRxZnvLcBAO23D8r/OKb4qHQez089Ix7r4EyQlNWZShW17S3qEFmRN6ESo
         b07ciPu5jEHQnRZukixXwxjmHqsm1o7of+WXOtpX2x5ekTPz4FwAhT+x8pQ54/X2hhfY
         UQFD0eFBTzE1NlRIfBLPj/mqr1CpskTvrPqXw=
In-Reply-To: <4C81C017.7070104@qq.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: gaoqiang <834555262@qq.com>
Cc: linux-newbie@vger.kernel.org

On Sat, Sep 4, 2010 at 11:42 AM, gaoqiang <834555262@qq.com> wrote:
> Recently,I got some trouble reading the kernel source. =A0There are s=
o many
> macro def in the source tree and I don't know whether some one wad de=
fined
> or not.
>
> So,is there any way to just preprocessor to eliminate these macros ,
> similiar to gcc -E ???
>

pros and cons...."-E" will generate so much intermediate output that
you will be drowned in source codes.

alternatively....it is better to zoom down via learning how to use
ctags with "vi", and direct disassembly via "objdump" to see which
macro it matches to.

http://www.yolinux.com/TUTORIALS/LinuxTutorialAdvanced_vi.html

but first u must generate the tag file with "make tags" on the kernel
source first.

>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



--=20
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
