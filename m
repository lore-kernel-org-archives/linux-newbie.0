From: SVisor <svisor@lycos.com>
Subject: Re: Create files with specific sizes?
Date: Thu, 16 Dec 2004 10:47:51 +0100
Message-ID: <cprlk8$gpo$1@sea.gmane.org>
References: <41BEA9C4.4050700@lol.ba> <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org> <cpmcg0$3e1$1@sea.gmane.org> <41BF3700.9040909@ieee.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41BF3700.9040909@ieee.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

...
>> I wanted a file of garbage, not zeroes.
>> So I tried: dd if=/dev/random of=file bs=1k count=1024
...
>   That's exactly what it is supposed to do.  Perhaps you tought 
> /dev/random could generate random numbers much faster.  So when it's 
> entropy pool was exhausted after 4KB, you tought it stopped working.

Nope I did not abort it, I just moved the mouse to generate more random 
numbers (with dd running in X terminal). What dd says is:

0+1024 records in
0+1024 records out

But the file still is just ~4k. Maybe a bug?

// Jarmo

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
