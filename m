From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: uint8_t mean8[8] __attribute__ ((aligned (32))), *mp;
Date: Sat, 27 Nov 2004 13:24:09 +0545
Message-ID: <652016d304112623391e36a202@mail.gmail.com>
References: <20041126184015.11326.qmail@web52906.mail.yahoo.com>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041126184015.11326.qmail@web52906.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 26 Nov 2004 18:40:15 +0000 (GMT), Ankit Jain
<ankitjain1580@yahoo.com> wrote:
> if somebody can tell me what this __attribute__ is
> doing
> 
> what kind of alignement is this
> 
> uint8_t  mean8[8] __attribute__ ((aligned (32))),
> *mp;
> 
> thanks
> 
> ankit jain
> 

__attribute__ and aligned()  are a gcc builtin.

aligned(32) generates 32 byte aligned address. so that data is stored
on 32 byte aligned address.

This is done for performance reasons. 

see gcc manual for more details.

regards manish

-- 
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
