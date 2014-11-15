From: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Sat, 15 Nov 2014 04:44:40 +0000 (GMT)
Message-ID: <fbb3e8aa49d6.5466da38@langara.bc.ca>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
 <1415780201.24725.2.camel@linux-t7sj.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-disposition: inline
Content-language: en
In-reply-to: <1415780201.24725.2.camel@linux-t7sj.site>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Davidlohr Bueso <dave@stgolabs.net>
Cc: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

> What's the benefit here? Seems very risky at very little gain.
>
> The juice ain't worth the squeeze. NAK

Hello,

It is fair to argue that these changes are too tiny to be very
meaningful for performance but the other goal of this patch was also
to make the code look cleaner and easier for me and other people to
understand. I hope that is a reasonable desire.

It is not fair to argue that these changes are risky. If it is risky
for a person to add code then the code is too complicated to
understand and should be rewritten or tests or formal methods should
be used to verify correctness.

Are you suggesting that the mqueue subsystem is too complicated for
one to understand changes made to it and that it needs to be cleaned
up a bit? I am trying to make the code easier to understand with this
patch.

Or that you'd want some more testing of the mqueue subsystem or the
changes I made too it?

Or that you'd want some more formal methods to make the code easier to
verify? I suppose the area of code use a few extra sparse annotations.

Thank you,
Steven Stewart-Gallus
