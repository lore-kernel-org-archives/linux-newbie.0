From: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Sat, 15 Nov 2014 13:22:19 -0800
Message-ID: <1416086539.12597.15.camel@linux-t7sj.site>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
	 <1415780201.24725.2.camel@linux-t7sj.site>
	 <fbb3e8aa49d6.5466da38@langara.bc.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fbb3e8aa49d6.5466da38@langara.bc.ca>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Cc: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

On Sat, 2014-11-15 at 04:44 +0000, Steven Stewart-Gallus wrote:
> > What's the benefit here? Seems very risky at very little gain.
> >
> > The juice ain't worth the squeeze. NAK
> 
> Hello,
> 
> It is fair to argue that these changes are too tiny to be very
> meaningful for performance but the other goal of this patch was also
> to make the code look cleaner and easier for me and other people to
> understand. I hope that is a reasonable desire.

I don't see how on earth you consider your patch makes things easier to
understand. For instance, adding local variables from structures passed
to a function does *not* make things more clearer:

+                       bool too_many_open_files;
+                       long msgqueue_lim;
+                       unsigned long u_bytes;
+
+                       msgqueue_lim = rlimit(RLIMIT_MSGQUEUE);
+
+                       spin_lock(&mq_lock);
+
+                       u_bytes = u->mq_bytes;
+                       too_many_open_files = u_bytes + mq_bytes < u_bytes ||
+                               u_bytes + mq_bytes > msgqueue_lim;
+                       if (!too_many_open_files)

Plus you add context specific regions within the function (code around
{ }), ugly and something we've been removing!

In fact it makes it *harder* to read: Now you have to keep in mind where
each variable came from, ie: u_bytes.

> It is not fair to argue that these changes are risky. 

Oh no? Andrew already found issues with the patch. But you claim there
is no risk. But hey, not getting the patch right the first time is fine,
except that the patch (i) has no tangible effects on performance, (ii)
as a cleanup, it does not make it any easier to read, (iii) can
potentially introduce bugs (yes, extra risk in subtleties when changing
critical regions and goto statements... we have had similar regressions
in ipc in the past).

Thanks,
Davidlohr
