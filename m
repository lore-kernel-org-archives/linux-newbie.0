From: SVisor <svisor@lycos.com>
Subject: Re: Create files with specific sizes?
Date: Tue, 14 Dec 2004 10:41:19 +0100
Message-ID: <cpmcg0$3e1$1@sea.gmane.org>
References: <41BEA9C4.4050700@lol.ba> <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
Reply-To: svisor@lycos.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I have a follow up question.

...
>>is there any way (some command) that will allow me to 
>>create blank files with specific sizes, eg 1MB, 5MB, 10MB etc.
...
> dd if=/dev/zero of=file1 bs=1k count=1024

I wanted a file of garbage, not zeroes.
So I tried: dd if=/dev/random of=file bs=1k count=1024

But to my suprise I got only a ~4k file. I know that dev/random may run 
out of values. But should dd not wait until there are enought of data?

// Jarmo

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
