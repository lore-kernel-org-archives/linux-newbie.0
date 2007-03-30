From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Query regarding alloc_chrdev_region()
Date: Fri, 30 Mar 2007 11:56:28 +0530
Message-ID: <b115cb5f0703292326g62614492m98f09222c869996c@mail.gmail.com>
References: <b115cb5f0703291020j32d15d97lc6ef7c1f3face23b@mail.gmail.com>
	 <20070330021034.GA21152@kroah.com>
	 <b115cb5f0703291936p2a46ceccx892c6b25bf07021b@mail.gmail.com>
	 <20070330051926.GC26194@kroah.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=LAXqOKs6ZrPMj+TDzuA8fahPY6bZKWI0JG0PBZAhdx1zr7ODZUZ2VqRePJIP086RHH1yetjYLP7K/NV1ILdIObjrigigqwORQwOQ8mR1lFf4S9gHcFJ4EedcimkLGQTgb7xkj6mPx5i2k1y1mMBVsp7gfcEhE//gma7xwUWVelY=
In-Reply-To: <20070330051926.GC26194@kroah.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Greg KH <greg@kroah.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

> > >> I was wondering that while using dynamic device numner allocation, can
> > >> we ever have a scenario like following (using alloc_chrdev_region):
> > >>
> > >> 1) Char Driver A is hooked on Major num X, minor numbers 0-10
> > >> 2) Char Driver B is hooked on (same) Major num X, minor numbers 11-20
> >
> > So the above is actually possible?
>
> Yes, once you have a major number, you can separate out the minor
> numbers how ever you wish to.

Hi Greg,

Ok, I understand that we can get a major number from the kernel and
split it into a range of minor numbers.

But does alloc_chrdev_region() reuse the major numbers in such a way?

In other words, is the following scenario possible:

Driver 1
======
alloc_chrdev_region(10 minor nos required)
-> receives major 150 (minor 0-9)

Driver 2
======
alloc_chrdev_region(20 minor nos required)
-> receives major 150 (minor 10-29)

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
