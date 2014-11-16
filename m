From: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Sun, 16 Nov 2014 19:40:46 +0000 (GMT)
Message-ID: <fb59f9ad237f.5468fdbe@langara.bc.ca>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
 <1415780201.24725.2.camel@linux-t7sj.site>
 <fbb3e8aa49d6.5466da38@langara.bc.ca>
 <1416086539.12597.15.camel@linux-t7sj.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-disposition: inline
Content-language: en
In-reply-to: <1416086539.12597.15.camel@linux-t7sj.site>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Davidlohr Bueso <dave@stgolabs.net>
Cc: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

Hello,

My intent with my patch was to make things easier to understand
because it reduces the size of critical sections to more
understandable bite sized chunks. My patch would make the purposes of
the critical sections more obvious and understandable. In making this
patch I may have made a few mistakes which we can correct.

>  For instance, adding local variables from structures passed
to a function does *not* make things more clearer:

This is not generally indicative of most of the patch. Moreover, the
local variable was introduced into a TIGHTLY restricted scope which
brings me to the next point.

> Plus you add context specific regions within the function (code
> around { }), ugly and something we've been removing!

Small context specific regions are GOOD. This is why we have functions
instead of one big ball of mud. I wouldn't be opposed to moving the {
} regions into smaller sub-functions themselves as the indentation can
get slightly annoying though. Also, this would let me put sparse
locking annotations on them.

> > It is not fair to argue that these changes are risky. 

I still hold this position.

If these changes are risky for you then the code needs improvement or
you are incompetent. I am trying to make the code easier to understand
and REDUCE risks. Maybe my patch isn't as obvious and easily
understandable as it should be. In that case, would you agree that
even if my patch isn't the best way to improve the code that it still
needs improvement?

Finally, please don't ignore the rest of my message. Even if my patch
isn't that good there are lots of ways to compromise and improve it
such as adding tests, annotations and making it clearer.

Thank you,
Steven Stewart-Gallus
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
