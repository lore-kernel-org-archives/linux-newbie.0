From: "Mike Frysinger" <vapier.adi@gmail.com>
Subject: Re: query related to different architectures
Date: Tue, 20 Mar 2007 10:15:43 -0400
Message-ID: <8bd0f97a0703200715k3179750dy744a237bba9773b7@mail.gmail.com>
References: <7783925d0703200528l70b534b6r69abfcba32f3a41a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=OyVRqPmsRu6St4kTfO0lrkwuIa7xmFU2LaLKDGHn4SMBAa3rBTyiGpDkOVCKfAfNKNfEvnWCN7X+GPVPRniY8eLbFBcvDNcgjshcCWgCBPAjwjjcJWxeWvTycqiSuEUlwH+Z1FU/+uB+YUgn40kYITR4FRRyZv7RGzf0n0OF8+g=
In-Reply-To: <7783925d0703200528l70b534b6r69abfcba32f3a41a@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On 3/20/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> 1) i386 - I understand this is the most commonly used intel IA32
> architecture to which all the pentiums, xeons, and 386, 486 etc
> belong. It also covers the AMD (and other manufacturers') x86 based
> processors. Is this right?

yes

> 2) ia64 - This is for the intel 64 bit processors (Itanium).
> Additionaly, it also covers AMD and other manufacturers' 64 bit
> processors. Correct?

no ... this is the itanium only, this is not the AMD64/EM64T stuff

> 3) x86_64 - What is this?

amd64/em64t

> Secondly, when we talk of 32/64 bit processor, we are talking about
> the data bus width, right? The same holds when we talk about Operating
> systems, right? So the size of address bus does not matter?

it usually refers to the native size of the cpu ... 64bit processors
work normally on registers that are 64bits in size while 32bit
processors work normally on registers that are 32bits in size
-mike
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
