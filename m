From: "Mike Frysinger" <vapier.adi@gmail.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 06:08:04 -0400
Message-ID: <8bd0f97a0704240308g6428f153n3bf4a2ae5518398a@mail.gmail.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BkmGUBaSHDn3xMqvR+EKimgt0NEMj3o3Rotr1RxdCr4yaDO83UyGGOjLTF0F8Upov7vk0MGw+QrcJVmtglkhQHM9QhwMyvqLQ5cwY5c9n0rfD2e+ioN02A+jmtTwZx2fK82DZWGFFzB52AnDO8F0aDJIC3iR+qeyWKQxTvB7uZM=
In-Reply-To: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 4/24/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> So as long as relevant system calls do not change, it should be
> possible to run any threading library on any kernel?

this statement is correct ... not that i see the point of it

> NPTL on 2.4?

this can be done only if you backport the features from 2.6 that were
added in order to make NPTL possible ... redhat has done this, but
really it's just a waste of time ... 2.4 is dead :P

> pthreads on 2.6?

i really have no idea what you mean by this ... "pthreads" is short
for "POSIX threads" and there's no such thing as "pthreads" with
respect to a specific code base.  NPTL is one implementation of the
POSIX threads specification while LinuxThreads is another.
-mike
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
