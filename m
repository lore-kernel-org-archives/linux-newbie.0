From: Wang Baisheng <baisheng.wang.cn@gmail.com>
Subject: why mapping beyond end "MAPPING_BEYOND_END"?
Date: Fri, 21 Dec 2012 14:50:57 +0800
Message-ID: <CABymN7aq6zs47MKVuijcvRg5yggNkg_jUT_UJfOguUg2xv2f5A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=r38BGOJQkg7j0+XLdQfUZShzuULGlUzUinO5xDZ3AtY=;
        b=H+NMDs80CCAyPQbEkbrgDzB3i85LNPRL5ql5vRUYFV5oKeAhx+yqanq9l6GU5+QJ4D
         Jgsqx8IMBdwqwJYiunU8bP4J0cuvjPNggOg9f/wAVfwUF0dZph4LDa0phn1QG1PYyo+n
         FlxsNgZ78JcouJKD3igVmlq73NGcXoWhfMMC4lkJewgwtP0TePBK66Ztl/2imN0iFYDt
         X6S6/+p9dXH+3HmYIeUkNDKt8UkxC5Rq/1l8tjcEaHGLILKnE6mxO9qT/y6CPm0ahkMw
         CtlPyNc7Iswy8c8o4BJXQOgGagW3BaRixKd7K9mWUCtx2wt4RkvBUBwFLFO1BXWl/tRG
         2mtQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi All,

For x86, in arch/x86/kernel/head_32.S, for Initializing page tables,
why mapping beyond end by "MAPPING_BEYOND_END":

    /*
     * End condition: we must map up to the end + MAPPING_BEYOND_END.
     */
    movl $pa(_end) + MAPPING_BEYOND_END + PTE_IDENT_ATTR, %ebp
    cmpl %ebp,%eax
    jb 10b

According vmlinux.lds.S, the paging table is between __brk_base and
_end. So why map MAPPING_BEYOND_END after _end ?

Regards,
Jacky
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
