From: Al Viro <viro@ZenIV.linux.org.uk>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 20:30:31 +0000
Message-ID: <20151228203031.GI20997@ZenIV.linux.org.uk>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatxjain@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org, Greg Kroah-Hartman <greg@kroah.com>

On Mon, Dec 28, 2015 at 12:27:22PM -0800, Rajat Jain wrote:
> Hi,
> 
> I wanted to understand the behavior taken when a module calls
> debugfs_remove_recursive() on a directory, while files under that
> directory may still be in use by the userspace (for instance an
> ongoing read / write operation).
> 
> Does the function wait
> 
> (1) until all the currently executing file operation methods
> (read/write/map etc) have returned?

No

> OR
> (2) until the user has given up all references (descriptors) to the
> files under the directory (i.e. until release() method has been
> called)?

... and no.  Don't use debugfs for objects that might have a finite
lifetime, or you'll get trouble.  And don't use debugfs outside of
well-isolated testing systems.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
