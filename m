From: Greg KH <greg@kroah.com>
Subject: Re: Proc structure standards.
Date: Mon, 29 Nov 2004 16:45:02 -0800
Message-ID: <20041130004502.GB2136@kroah.com>
References: <652016d304112623595d8f6e76@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <652016d304112623595d8f6e76@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Manish Regmi <regmi.manish@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Sat, Nov 27, 2004 at 01:44:26PM +0545, Manish Regmi wrote:
> Hi all,
>  Is there any standard to the proc interface?

Only standard is don't add any more new proc files :)

Use sysfs instead.

thanks,

greg k-h
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
