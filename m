From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: kernel stack problem
Date: Wed, 4 Apr 2007 06:20:15 +0530
Message-ID: <b115cb5f0704031750g52b68cc6ncdecd6f3f94afbdf@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=ZSNhYB5/HRXgX4jCjWyJLuu/trazAiPq1A6NR2mKOsMIHntXA8bBwipFrHc6YFxItUeUTBlpfPJfoIw9NvR2G2UCgt+ww9A1oij0kYZnkSLa/crpFpxrQgbdg0iJPPQosssWHaPA+5MRjQ/6hvPR24OK5vl/iTlwC9gRHPDR8PU=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi List,

Recently I got into the problem that I think relates to the small size
of kernel stack. I had a function of the following form:

void func()
{
     ...
     //Block1
    {
         struct huge_var x;
         ....
         ....
     }
     ....
     //Block2
    {
         struct huge_var y;
         ....
         ....
     }
     ....
}

The above code resulted in stack overflow. I had an understanding that
since the scope of variables x & y are limited to their blocks only,
the space for them will be allocated and released when the block is
entered and exited respectively. And hence the kernel stack will not
overflow since both x and y will not occupy memory simultaneously (one
instance of the variable can easily fit in the kernel stack).

I solved this problem by having a single instance of struct huge_var
declared immediately at function begining and reusing it in both
blocks. But my question is when (and where) are the block scope
variable allocated? In my previous case, were the two variables
occupying two sperate memory areas simultaneously?

Ah, I understand that I should use kernel stack sparingly ... and will do so.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
