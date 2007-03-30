From: Greg KH <greg@kroah.com>
Subject: Re: Query regarding alloc_chrdev_region()
Date: Thu, 29 Mar 2007 23:34:03 -0700
Message-ID: <20070330063403.GA4745@kroah.com>
References: <b115cb5f0703291020j32d15d97lc6ef7c1f3face23b@mail.gmail.com> <20070330021034.GA21152@kroah.com> <b115cb5f0703291936p2a46ceccx892c6b25bf07021b@mail.gmail.com> <20070330051926.GC26194@kroah.com> <b115cb5f0703292326g62614492m98f09222c869996c@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0703292326g62614492m98f09222c869996c@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Fri, Mar 30, 2007 at 11:56:28AM +0530, Rajat Jain wrote:
> >> >> I was wondering that while using dynamic device numner allocation, can
> >> >> we ever have a scenario like following (using alloc_chrdev_region):
> >> >>
> >> >> 1) Char Driver A is hooked on Major num X, minor numbers 0-10
> >> >> 2) Char Driver B is hooked on (same) Major num X, minor numbers 11-20
> >>
> >> So the above is actually possible?
> >
> >Yes, once you have a major number, you can separate out the minor
> >numbers how ever you wish to.
> 
> Hi Greg,
> 
> Ok, I understand that we can get a major number from the kernel and
> split it into a range of minor numbers.
> 
> But does alloc_chrdev_region() reuse the major numbers in such a way?
> 
> In other words, is the following scenario possible:
> 
> Driver 1
> ======
> alloc_chrdev_region(10 minor nos required)
> -> receives major 150 (minor 0-9)
> 
> Driver 2
> ======
> alloc_chrdev_region(20 minor nos required)
> -> receives major 150 (minor 10-29)

If you look at the code in fs/char_dev.c, this can not happen right now,
however, that could change in the future if we start to see a lot of
different drivers all want dynamic numbers.

In short, don't count on the fact that you will always get a different
major number, it is not guaranteed, and in fact, your driver should
never care about such a thing.

And also userspace doesn't care either, udev handles all of that logic
for you automatically.

Hope this helps,

greg k-h
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
