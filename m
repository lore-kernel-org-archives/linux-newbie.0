From: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Sat, 15 Nov 2014 04:42:34 +0000 (GMT)
Message-ID: <fb7fa4d76314.5466d9ba@langara.bc.ca>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
 <20141111162146.6e72c3fb0858df4945096c47@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-disposition: inline
Content-language: en
In-reply-to: <20141111162146.6e72c3fb0858df4945096c47@linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Davidlohr Bueso <davidlohr@hp.com>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

Hello, thank you for the criticism.

> It's probably better to do this as three or four separate patches.

Really? Alright if you insist I'll do the next version as multiple
patches.

> Well yes, that's what EMFILE means but "too_many_open_files" doesn't
> make sense in this context!

Fair enough, I'll rename it in the next version.

> Thatsabug.  It only requires CAP_SYS_RESOURCE if we're trying with
> queues_count >= queues_max.

Right, that was dumb of me.

> This test isn't really needed.

I don't follow. If the queue creation is not rejected then the
resource user has to be accounted for right? And we can't add the
resource to accounting if it is not created right?

Thank you,
Steven Stewart-Gallus
