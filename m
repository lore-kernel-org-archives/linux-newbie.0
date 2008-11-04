From: Yeti <yeti@myhich.com>
Subject: Re: measuring boottime ?
Date: Tue, 4 Nov 2008 07:54:32 -0800
Message-ID: <6adb32bc0811040754n1cc09bb5l64dffd3b846daa16@mail.gmail.com>
References: <cf70f0210811040703j116a54dap576fbaaffd1be2b7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cf70f0210811040703j116a54dap576fbaaffd1be2b7@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Shivdas Gujare <shivdas.tech@gmail.com>, Newbie Mailing List <linux-newbie@vger.kernel.org>

> I created a custom initrd.img , while creating rootfs, I added
> following lines to /etc/init.d/rcS script,
> "cat /proc/uptime".

Calling /proc/uptime with /etc/init.d/rcS may not correctly deliver
your boot time. Some processes might still be starting after you cat
/proc/uptime
I also wonder why you have an idle time of 0.38 seconds. During boot
there should hardly be any idle time. You could write yourself an init
script and make sure it is the last one to be called by rc. Also note
that the uptime delivered by the kernel may not be accurate enough to
measure a system's boot time (e.g. pre-kernel hardware calls, etc.).

//A yeti
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
