From: Ray Olszewski <ray@comarre.com>
Subject: Re: 1024x768 SVGA Shell - won't work
Date: Wed, 05 Jun 2002 07:10:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020605070535.020abe00@celine>
References: <20020604080752Z316530-22651+74203@vger.kernel.org>
 <20020604080752Z316530-22651+74203@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020605103118Z314422-22651+75434@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

See below.

At 08:03 PM 6/5/02 +0930, Adam Luchjenbroers wrote:
>OK, I've done some research (suddenly noticed there was a massive folder in
>my kernel source tree called 'Documentation' - wish I'd seen it sooner).
>
>The mode I was using is one of the VESAfb modes (1024x768x24, apparently).
>
>These modes require the frame-buffer drivers to be compiled. The frame-buffer
>drivers are greyed out.

"greyed out"? Are you using "make xconfig", perhaps?

>I can find nothing telling me what else I need to enable to be able to enable
>the frame-buffer drivers.

In the "make menuconfig" version of kernel make, framebuffer support is 
labeled as experimental. This mean you need to enable support for 
experimental drivers (the first menu choice in "make menuconfig" ... not 
sure where it is in "make xconfig") to have it available.

>Does anybody know what options I must enable, or even better, have a
>dependancy map of the kernel?

Not sure what you have in mind by the second half of this. I too would like 
better documentation of interdependencies among config options, but I don't 
know where to find such a reference.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
