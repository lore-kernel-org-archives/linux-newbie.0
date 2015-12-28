From: Greg Kroah-Hartman <greg@kroah.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 12:31:21 -0800
Message-ID: <20151228203121.GA19753@kroah.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=LP9uUzZD8nPAtOLULIWalso5diQ=; b=DUPox
	IaftrrKUb9od1wk7vjDiN9K2LwqncGWbV0Hx+LatbjxLM0FCKhYxkVNXk0nHpk6M
	4cTesysPGfxnJXgmPxVOXl/+ymlGztDrmlmTzqnK0QtwQD59XFtEgaH+F45QH4Xd
	YuHSI4Z9b7gmgdq+tM+Kt9eo/tYplF/ZROhIbg=
Content-Disposition: inline
In-Reply-To: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatxjain@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

On Mon, Dec 28, 2015 at 12:27:22PM -0800, Rajat Jain wrote:
> Hi,
> 
> I wanted to understand the behavior taken when a module calls
> debugfs_remove_recursive() on a directory, while files under that
> directory may still be in use by the userspace (for instance an
> ongoing read / write operation).

Bad things :(

> Does the function wait
> 
> (1) until all the currently executing file operation methods
> (read/write/map etc) have returned?

Nope.

> OR
> (2) until the user has given up all references (descriptors) to the
> files under the directory (i.e. until release() method has been
> called)?

Nope.

There are some patches on the mailing list that I need to review that
hopefully should resolve this problem, as it's been known for a very
long time.

In short, just don't remove debugfs files unless your module is
unloading, and all should be good as modules are never auto-unloaded.
If you remove debugfs files when a device is removed, be careful.

thanks,

greg k-h
