From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Subject: Re: How do i detect a USB device from the Linux Box
Date: Fri, 19 Aug 2005 14:47:32 +0300
Message-ID: <4a618d0805081904477a3a0827@mail.gmail.com>
References: <3AEC1E10243A314391FE9C01CD65429B3912@mail.esn.co.in>
	 <3ed7d0be050819042979cfc2f5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3ed7d0be050819042979cfc2f5@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: osk <linuxkarthi@gmail.com>
Cc: "Mukund JB`." <mukundjb@esntechnologies.co.in>, linux-newbie@vger.kernel.org

> the drivers are build with kernel as modules, those drivers will
> dnamically load into the memory when it's needed.
> 
> regards
> osk

I also think that lot's of device are very generic, I mean there is
tons of USB flash drives, and for most of them there is one driver
that "emulates" scsi interface (i think i'm wrong by saying
emulating...). The same goes to most of printers and so on, of course
there are specific drivers, but not much... Look in linux sources,
directory "/drivers/usb/" and you'll see that it is not that big...

Arturas M.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
