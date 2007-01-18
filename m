From: Greg KH <greg@kroah.com>
Subject: Re: after effects of a kernel API change
Date: Wed, 17 Jan 2007 21:04:24 -0800
Message-ID: <20070118050424.GB17408@kroah.com>
References: <292693080701172015n736a269fl6945ba4fe19d8174@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080701172015n736a269fl6945ba4fe19d8174@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>, linux-kernel@vger.kernel.org

On Thu, Jan 18, 2007 at 09:45:04AM +0530, Daniel Rodrick wrote:
> Hi list,
> 
> Whenever there is a change in the kernel API (or a new API is
> introduced), all of the drivers that use the older API need to be
> changed (or recommended to be changed). I believe it is the
> responsibility of the person changing the kernel API, to change all
> the drivers that have found their way into the kernel code?

Yes, that is the case.

> How does this happen? Because the person who brought the change in the
> API might not know the internals of all the drivers?

But they know why they made the change, so it's usually pretty obvious.
If not, they merely ask for help from the original author / maintainer
of the code, but that doesn't happen very often.

> Is there any way volunteers like me can help in this exercise?

Sure, go through the kernel building all of the different arches and all
of the modules and report what breaks due to api changes.  The -mm tree
is the best place to test this stuff out, as that is where the changes
usually occur first.

good luck,

greg k-h
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
