From: "sandeep lahane" <sandeep.lahane@gmail.com>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 5 Apr 2007 15:35:53 +0530
Message-ID: <2d51cbf80704050305n60bec989wf3e1d1dd046a5d4d@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>
	 <ev0fpc$bc5$1@sea.gmane.org> <200704051236.29847.Tzahi.ML2@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=FhWW1OWKIJEJsgDkAX2e0Nq9/ete/hveX0ecRUv2DdKWwmflS0VMLX7Te9/bJRgFQjCuApXcRV9y/mQNKqbkB8op9pNfGyDTYuRuknKJBUVJK6bkh0MT2B5tDhBlcGbRqYtc6Ye75QiQAFErsMgY3Qp8q8p4ZEExEpd6tveMKNw=
In-Reply-To: <200704051236.29847.Tzahi.ML2@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Tzahi Fadida <Tzahi.ML2@gmail.com>
Cc: kernelnewbies@nl.linux.org, Daniel Cheng <gmane@sdiz.net>, linux-newbie@vger.kernel.org

On 4/5/07, Tzahi Fadida <Tzahi.ML2@gmail.com> wrote:
> On Wednesday 04 April 2007 18:21:16 Daniel Cheng wrote:
> > Rick Brown wrote:
> > > Yes, I'm aware that there are quite a lot of different patches /
> > > projects aimed at giving better RTOS behaviour ... but my question was
> > > aimed at vanilla kernel.
> >
> > An OS consider RealTime or not, does not depends on
> > how low the latency is. It depends on how predictable
> > the latency is.
>
> What is this i hear about PREEMT_RT from VirtualLogix:
> http://www.wirelessiq.com/content/newsfeed/9867.html
>
> Perhaps this is what the poster seeks...
>
>
>
> --
> Regards,
> Tzahi.
> --
> Tzahi Fadida
> Blog: http://tzahi.blogsite.org | Home Site: http://tzahi.webhop.info
> WARNING TO SPAMMERS: see at
> http://members.lycos.co.uk/my2nis/spamwarning.html
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

I think what virtuallogix is offering is a real time virtualization
software. They have a paravirtualization based approach using which
guest OSes like RTOS or other rich OSes can be run simultaneously on
an embedded platform. These guest OSes can communicate using inter OS
communication mechanisms. They are partitioning resources which can be
partitioned like system RAM and resources like CPU, MMU and interrupt
controller are virtualized since they can't be partitioned. So
basically, what they are doing is almost totally irrelevant with this
question, since they are not trying to make Linux a RTOS, rather they
are making Linux and other guest OSes co-exist with RTOSes
simultaneously. Please CMIIW.

-- 

Regards,
Sandeep.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
