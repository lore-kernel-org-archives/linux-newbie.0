From: ichi@ihug.co.nz
Subject: Re: hard drive head parking in linux
Date: Wed, 11 Dec 2002 08:53:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF6FD0F.677FEE3C@ihug.co.nz>
References: <200212101811.LAA18667@cu.imt.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

Jerry James Haumberger wrote:
> 
> is this already an automatic feature of the 
> later hard drives... 

Yes, AFAIK this is an automatic feature of all IDE drives.

> Or are you implying that the "stock kernel (xt.i)" 
> *does* support this hard drive head parking/"resting" 
> feature... for XTs and later hard drives?

Hmmm, I don't know.  xt.i contains support for the 
non-IDE HD block device, but I have no idea whether 
this includes parking.  My guess would be: probably not.

It's not a big issue (it will be a very rare bird that
runs Linux on an old XT HD).  If you want to protect the
HD, just reset to DOS and run the park utility before 
powering down.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
