From: Real Name <enjoymindful@gmail.com>
Subject: Re: EPROBE_DEFER and how it is supposed to work
Date: Wed, 10 Sep 2014 11:08:45 +0800
Message-ID: <20140910030845.GA9846@name.redhat.com>
References: <fdb8424613e9495987c7103006c460e9@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zl9+x1Kq/hhlcfxs2Fkjk75Xk+bw6G63vBhRF95g+hc=;
        b=Lq6LUyPIn10Dbr6P227xvYVY/fpJwa7f4+gNXqncEbUszgpUgY/oQBN60oJVoKujyN
         7BOSrwC8V19Z05zqpbmyqaxGUVGfguMfJRayEjfj/6JrbBsPGoZ/HDjDUUWuf8sQDmu+
         k3lkUSnaIw/OMQW2iWeseQBmANKy5wdxR9NXMcYP6fTGLdrTFE4nok67QIAK/g2KlCG2
         55F3bL9n/Y2oI3/865q4Dg+75yeFK1A7dHR3yvhP3hCLJ71hbbC8RY9EVVUi58ISqzVd
         sTV2xXN1ir3DK5QC0AbTzyCUBpjMzfxkieOKIm0kvlVVvVExHy1QE9+7c7+OJdhzouDq
         G7Sw==
Content-Disposition: inline
In-Reply-To: <fdb8424613e9495987c7103006c460e9@DM2PR05MB671.namprd05.prod.outlook.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatjain@juniper.net>
Cc: kernelnewbies <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

On Tue, Sep 09, 2014 at 06:26:27PM +0000, Rajat Jain wrote:
> Hi,
> 
> I'm not a newbie, but I am trying to understand the semantics of deferred probing.
> 
> My question is generic, but for an example:
> 
> Let's say I have a platform driver "A" for a device "a", that requires device "b" (controlled by driver "B") to be operational first. Both A &B can be built as part of kernel, or as modules independently.  As far as I could tell, there is no way to specify the ORDER in which the drivers' probe routines should be called. I took a look at modprobe / depmod, but it seems to be of relevance for modules only that are loaded from user space. My questions:
> 
> 1) Is there a way to specify that "Kernel should call A's probe routine only after B's probe routine"?

You can ask module A to load the required module B.

For example, lib/textsearch.c:textsearch_prepare -> lookup_ts_algo

lookup_ts_algo will load ts_bm.ko/ts_fsm.ko/ts_kmp.ko as required.

> 
> 2) How I currently do this: In A's probe routine, I currently check if the device "b" is available. If not, I return -EPROBE_DEFER. This mostly works ok. However, I'm curious about the case where the driver B is not built as part of the kernel but A is. After getting an _EPROB_DEFER from a B's probe routine, when will the kernel try again? And for how long would it keep on trying? I verified that if I load the driver B manually from user space, the A's probe routine does not get called (if it gets called now - it would have returned success!).
> 
> Thanks,
> 
> Rajat
> 
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
