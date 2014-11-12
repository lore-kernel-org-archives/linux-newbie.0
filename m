From: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Wed, 12 Nov 2014 00:16:41 -0800
Message-ID: <1415780201.24725.2.camel@linux-t7sj.site>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fae396b9bc15.545c5b55@langara.bc.ca>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Cc: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

On Fri, 2014-11-07 at 05:40 +0000, Steven Stewart-Gallus wrote:
> This shouldn't be too controversial. I simply looked for where there
> was a tiny bit of waste in the message queue code.

What's the benefit here? Seems very risky at very little gain.

The juice ain't worth the squeeze. NAK
