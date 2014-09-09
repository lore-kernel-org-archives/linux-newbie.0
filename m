From: Rajat Jain <rajatjain@juniper.net>
Subject: EPROBE_DEFER and how it is supposed to work
Date: Tue, 9 Sep 2014 18:26:27 +0000
Message-ID: <fdb8424613e9495987c7103006c460e9@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: kernelnewbies <kernelnewbies@kernelnewbies.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi,

I'm not a newbie, but I am trying to understand the semantics of deferred probing.

My question is generic, but for an example:

Let's say I have a platform driver "A" for a device "a", that requires device "b" (controlled by driver "B") to be operational first. Both A &B can be built as part of kernel, or as modules independently.  As far as I could tell, there is no way to specify the ORDER in which the drivers' probe routines should be called. I took a look at modprobe / depmod, but it seems to be of relevance for modules only that are loaded from user space. My questions:

1) Is there a way to specify that "Kernel should call A's probe routine only after B's probe routine"?

2) How I currently do this: In A's probe routine, I currently check if the device "b" is available. If not, I return -EPROBE_DEFER. This mostly works ok. However, I'm curious about the case where the driver B is not built as part of the kernel but A is. After getting an _EPROB_DEFER from a B's probe routine, when will the kernel try again? And for how long would it keep on trying? I verified that if I load the driver B manually from user space, the A's probe routine does not get called (if it gets called now - it would have returned success!).

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
