From: Rajat Jain <rajatxjain@gmail.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 12:51:32 -0800
Message-ID: <CAA93t1oENvBNDUYBNk2FKjwUSt77y-amLgV9h-fu7TPpiPJ98A@mail.gmail.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
	<20151228203121.GA19753@kroah.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=PYp043cN5Q+sz5/7zugh1RSwnW0u5GRBhZJE6zxE+Pg=;
        b=lV/N494m09egGkPpN8e4p5rjJCwcYu+8NkZ/Q9gWht3YdTmGX4JqHND77U5jiiIx/e
         mZA17glbgyYrdx4hB0XjN3Sz9P7xq8y9+LH//BUyBKs78pyL/pBT2QJX6SYOXV4OhQi5
         MxhjfIvBsyPxDoDKSMWM/RosPta4k+qVEXvZyMZVG8sw8gMMzxzz1EEaIbL97jY63nbF
         G8cvuWEwBEAOHxzyk0Ewe3APXmc6ifih2qwzbdvgETMO5NxfBULOCRGFkcOEtwh7cw6b
         DYACrQ9YF69neIWjieYkhmCuA7NLeozGCvBdo1GI3vhUbuLPCpzO7LRyU0XzNOCwt6Ol
         HG1A==
In-Reply-To: <20151228203121.GA19753@kroah.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg Kroah-Hartman <greg@kroah.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

Thanks Greg and Al for the quick turnaround.

Essentially I have a device that supports something called "contexts"
that can be "created" and "destroyed" during the life of the device. I
want to expose some debug files for the context when it is created,
and destroy the files when the context is destroyed. However, I'm not
sure how do I ensure that the user is not in the middle of reading /
writing / mmaping to those files. Also how do I know that user is
still not holding a reference to the file structure.

It seems like debugfs is currently not a good choice for this? Would
you recommend me to any other fs or subsystem that I should use for
this?

Would hanging those files under the sysfs node for the device sound
any better (by representing each "context" using an embedded kobject)?

Thanks,

Rajat


On Mon, Dec 28, 2015 at 12:31 PM, Greg Kroah-Hartman <greg@kroah.com> wrote:
> On Mon, Dec 28, 2015 at 12:27:22PM -0800, Rajat Jain wrote:
>> Hi,
>>
>> I wanted to understand the behavior taken when a module calls
>> debugfs_remove_recursive() on a directory, while files under that
>> directory may still be in use by the userspace (for instance an
>> ongoing read / write operation).
>
> Bad things :(
>
>> Does the function wait
>>
>> (1) until all the currently executing file operation methods
>> (read/write/map etc) have returned?
>
> Nope.
>
>> OR
>> (2) until the user has given up all references (descriptors) to the
>> files under the directory (i.e. until release() method has been
>> called)?
>
> Nope.
>
> There are some patches on the mailing list that I need to review that
> hopefully should resolve this problem, as it's been known for a very
> long time.
>
> In short, just don't remove debugfs files unless your module is
> unloading, and all should be good as modules are never auto-unloaded.
> If you remove debugfs files when a device is removed, be careful.
>
> thanks,
>
> greg k-h
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
