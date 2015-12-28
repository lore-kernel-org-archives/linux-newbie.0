From: Greg Kroah-Hartman <greg@kroah.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 12:58:33 -0800
Message-ID: <20151228205833.GA20955@kroah.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
 <20151228203121.GA19753@kroah.com>
 <CAA93t1oENvBNDUYBNk2FKjwUSt77y-amLgV9h-fu7TPpiPJ98A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=Fge84d1mSNTO4F8FsEHojuEkcfw=; b=NgAg3
	eH+V6cEB/kTbN3mgjN3vOIDqu7SzJsNU0cSTh4SGmvi6uP83CPFftvTuq9T5m5BO
	PW7nZdWdSeYnlgFSuf6DJXhWlwoZ/njYLymbevz1bVS5oPTLX7WkdG9s1O3ORdoU
	cI/QZdwQzqDm3fiDwQtfG0pj6SqmeWYweehGWE=
Content-Disposition: inline
In-Reply-To: <CAA93t1oENvBNDUYBNk2FKjwUSt77y-amLgV9h-fu7TPpiPJ98A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatxjain@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

On Mon, Dec 28, 2015 at 12:51:32PM -0800, Rajat Jain wrote:
> Thanks Greg and Al for the quick turnaround.
> 
> Essentially I have a device that supports something called "contexts"
> that can be "created" and "destroyed" during the life of the device. I
> want to expose some debug files for the context when it is created,
> and destroy the files when the context is destroyed. However, I'm not
> sure how do I ensure that the user is not in the middle of reading /
> writing / mmaping to those files. Also how do I know that user is
> still not holding a reference to the file structure.

You don't.

> It seems like debugfs is currently not a good choice for this? Would
> you recommend me to any other fs or subsystem that I should use for
> this?

What exactly do you need to export to userspace and for what purpose?
For debugging-only stuff, sure, use debugfs, but don't rely on it for
any "real" tools, only your own debugging.

> Would hanging those files under the sysfs node for the device sound
> any better (by representing each "context" using an embedded kobject)?

That would ensure that things work properly.  But you don't need a whole
kobject, just use a named group and a subdir will be created properly
for you.

good luck,

greg k-h
