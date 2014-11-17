From: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Mon, 17 Nov 2014 12:52:10 -0800
Message-ID: <1416257530.4494.0.camel@localhost>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
	 <1415780201.24725.2.camel@linux-t7sj.site>
	 <fbb3e8aa49d6.5466da38@langara.bc.ca>
	 <1416086539.12597.15.camel@linux-t7sj.site>
	 <fb59f9ad237f.5468fdbe@langara.bc.ca> <546A47C6.4030309@colorfullife.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <546A47C6.4030309@colorfullife.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manfred Spraul <manfred@colorfullife.com>
Cc: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>, linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

On Mon, 2014-11-17 at 20:08 +0100, Manfred Spraul wrote:
> Hi Steven,
> 
> On 11/16/2014 08:40 PM, Steven Stewart-Gallus wrote:
> > Finally, please don't ignore the rest of my message. Even if my patch
> > isn't that good there are lots of ways to compromise and improve it
> > such as adding tests, annotations and making it clearer.
> 
> I think you were already given ideas how to improve the patch:
> 
> a) split the patch.
> 
> b) create test cases so that you are able to check that the code still 
> behaves as it did before

Adding/improving ipc kselftests would also be very welcome.

Thanks,
Davidlohr

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
