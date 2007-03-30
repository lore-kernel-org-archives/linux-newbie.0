From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Query regarding alloc_chrdev_region()
Date: Fri, 30 Mar 2007 08:06:23 +0530
Message-ID: <b115cb5f0703291936p2a46ceccx892c6b25bf07021b@mail.gmail.com>
References: <b115cb5f0703291020j32d15d97lc6ef7c1f3face23b@mail.gmail.com>
	 <20070330021034.GA21152@kroah.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=FfshPaw4JFs6V5MSxuf58BHX21yYK9WFSBStro3GN5Ei1r6G2dLzleKYxzFaZygWaKRodvX4Ck9DGFtPVbxeSRho2/ld1MB/OhMz5aHPJq8dCvqQ5WHMOOcAASQF40LNhnHgtZaDShvQV5IXvNHeE/wOASgJMEyUhXgSEruOrJk=
In-Reply-To: <20070330021034.GA21152@kroah.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>
Cc: newbie <linux-newbie@vger.kernel.org>

Hi,

> > I was wondering that while using dynamic device numner allocation, can
> > we ever have a scenario like following (using alloc_chrdev_region):
> >
> > 1) Char Driver A is hooked on Major num X, minor numbers 0-10
> > 2) Char Driver B is hooked on (same) Major num X, minor numbers 11-20

So the above is actually possible?

> >
> > If yes, how will the userland get to know about the dynamically
> > allocated range (needed to create device nodes), since /proc/devices
> > only shows major numbers?
>
> Through the exporting of this information in sysfs by using the
> device_create() call that you are required to do in order to have your
> device show up properly there :)

Is that taken care by cdev_add() itself?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
