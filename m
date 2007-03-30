From: Greg KH <greg@kroah.com>
Subject: Re: Query regarding alloc_chrdev_region()
Date: Thu, 29 Mar 2007 22:19:26 -0700
Message-ID: <20070330051926.GC26194@kroah.com>
References: <b115cb5f0703291020j32d15d97lc6ef7c1f3face23b@mail.gmail.com> <20070330021034.GA21152@kroah.com> <b115cb5f0703291936p2a46ceccx892c6b25bf07021b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0703291936p2a46ceccx892c6b25bf07021b@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Fri, Mar 30, 2007 at 08:06:23AM +0530, Rajat Jain wrote:
> Hi,
> 
> >> I was wondering that while using dynamic device numner allocation, can
> >> we ever have a scenario like following (using alloc_chrdev_region):
> >>
> >> 1) Char Driver A is hooked on Major num X, minor numbers 0-10
> >> 2) Char Driver B is hooked on (same) Major num X, minor numbers 11-20
> 
> So the above is actually possible?

Yes, once you have a major number, you can separate out the minor
numbers how ever you wish to.

> >> If yes, how will the userland get to know about the dynamically
> >> allocated range (needed to create device nodes), since /proc/devices
> >> only shows major numbers?
> >
> >Through the exporting of this information in sysfs by using the
> >device_create() call that you are required to do in order to have your
> >device show up properly there :)
> 
> Is that taken care by cdev_add() itself?

Nope, not at all.

thanks,

greg k-h
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
