From: Rajat Jain <rajatxjain@gmail.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 13:11:53 -0800
Message-ID: <CAA93t1o9We6EFgvJ+7dPndptcurp=ZTw=jfb0ek_hhmB21tRkA@mail.gmail.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
	<20151228203121.GA19753@kroah.com>
	<CAA93t1oENvBNDUYBNk2FKjwUSt77y-amLgV9h-fu7TPpiPJ98A@mail.gmail.com>
	<20151228205833.GA20955@kroah.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=oQ3NJsz/YplD7kmgXaf0kzVUTOo5kq5fdy+Z99C7XFc=;
        b=tCqocHS8pcEPTOieIX7zDvNcy/37TL/FSzh2S/USs3DgAld7qZ8HH+elnlUS3+WQn7
         Rid3ETQBQhnSAYYWyRV+PSLPt9Jp7mFGjxrHyyLGnPeMdpzgRuE9Yd55yrcUEEpowhUM
         LwrFTXWCER4j5VPOsvizq34CB/LkGyUMS5Sl1ag30YIv04q9uyLVxQtmLgBt+OvkCRNI
         y0Q4+O+eOxKqfLNJl92zgxvZWKuKMPyl4ZeWdfri76ZlZ/7n2QRnp7uDbB7y6JaVBCKn
         ltERaeK9LnBF1LFx1fXfC886+Sm2k4C+qJ+b1uKWiO2OpBiWLhzSRugZEOg85njUdZrT
         B0mw==
In-Reply-To: <20151228205833.GA20955@kroah.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg Kroah-Hartman <greg@kroah.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

On Mon, Dec 28, 2015 at 12:58 PM, Greg Kroah-Hartman <greg@kroah.com> wrote:
> On Mon, Dec 28, 2015 at 12:51:32PM -0800, Rajat Jain wrote:
>> Thanks Greg and Al for the quick turnaround.
>>
>> Essentially I have a device that supports something called "contexts"
>> that can be "created" and "destroyed" during the life of the device. I
>> want to expose some debug files for the context when it is created,
>> and destroy the files when the context is destroyed. However, I'm not
>> sure how do I ensure that the user is not in the middle of reading /
>> writing / mmaping to those files. Also how do I know that user is
>> still not holding a reference to the file structure.
>
> You don't.
>
>> It seems like debugfs is currently not a good choice for this? Would
>> you recommend me to any other fs or subsystem that I should use for
>> this?
>
> What exactly do you need to export to userspace and for what purpose?
> For debugging-only stuff, sure, use debugfs, but don't rely on it for
> any "real" tools, only your own debugging.

I'm actually writing a driver that would expose a "dummy device" to a
real driver. The dummy driver relies on user space to feed in the
device attributes (no of supported contexts etc). I am now thinking
that a character device interface to user space may actually be a
better choice. Question: Does cdev_del() ensure that all references to
the file are dropped before it returns?

Thanks,

Rajat

>
>> Would hanging those files under the sysfs node for the device sound
>> any better (by representing each "context" using an embedded kobject)?
>
> That would ensure that things work properly.  But you don't need a whole
> kobject, just use a named group and a subdir will be created properly
> for you.
>
> good luck,
>
> greg k-h
