From: Greg Kroah-Hartman <greg@kroah.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 13:17:53 -0800
Message-ID: <20151228211753.GB24118@kroah.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
 <20151228203121.GA19753@kroah.com>
 <CAA93t1oENvBNDUYBNk2FKjwUSt77y-amLgV9h-fu7TPpiPJ98A@mail.gmail.com>
 <20151228205833.GA20955@kroah.com>
 <CAA93t1o9We6EFgvJ+7dPndptcurp=ZTw=jfb0ek_hhmB21tRkA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=1Sag66l84F/vJcZVwjmfFCPfoxU=; b=oyQx5
	tnqKHG0BCICeWjfd20apC0DBPm480G2Eoq22ehqwtWC4Nz7uUxTCEV5th7YXglsR
	9WB5PQEtw8kjmYpNzixGA44pvgtPfP04ylBk1mTqWOiQFTDODqOYo94QA6q6EkXR
	Lrn6mH+rLCLggyANovvFWAZhTLxa14DzJ6bkzc=
Content-Disposition: inline
In-Reply-To: <CAA93t1o9We6EFgvJ+7dPndptcurp=ZTw=jfb0ek_hhmB21tRkA@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatxjain@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

On Mon, Dec 28, 2015 at 01:11:53PM -0800, Rajat Jain wrote:
> On Mon, Dec 28, 2015 at 12:58 PM, Greg Kroah-Hartman <greg@kroah.com> wrote:
> > On Mon, Dec 28, 2015 at 12:51:32PM -0800, Rajat Jain wrote:
> >> Thanks Greg and Al for the quick turnaround.
> >>
> >> Essentially I have a device that supports something called "contexts"
> >> that can be "created" and "destroyed" during the life of the device. I
> >> want to expose some debug files for the context when it is created,
> >> and destroy the files when the context is destroyed. However, I'm not
> >> sure how do I ensure that the user is not in the middle of reading /
> >> writing / mmaping to those files. Also how do I know that user is
> >> still not holding a reference to the file structure.
> >
> > You don't.
> >
> >> It seems like debugfs is currently not a good choice for this? Would
> >> you recommend me to any other fs or subsystem that I should use for
> >> this?
> >
> > What exactly do you need to export to userspace and for what purpose?
> > For debugging-only stuff, sure, use debugfs, but don't rely on it for
> > any "real" tools, only your own debugging.
> 
> I'm actually writing a driver that would expose a "dummy device" to a
> real driver. The dummy driver relies on user space to feed in the
> device attributes (no of supported contexts etc).

That sounds "odd".

Why not configfs?

> I am now thinking that a character device interface to user space may
> actually be a better choice.

Not really, you would now have to parse things in a character driver
write() callback, not very good or robust.

> Question: Does cdev_del() ensure that all references to the file are
> dropped before it returns?

No, but when the reference is dropped, everything cleans up properly.

thanks,

greg k-h
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
