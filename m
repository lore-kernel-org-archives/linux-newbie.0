From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: No Sound with Kernel 2.6.7
Date: Fri, 5 Nov 2004 06:11:55 +0100
Message-ID: <200411050611.55894.pa3gcu@zeelandnet.nl>
References: <20041104165934.28971dba@Knoppix>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041104165934.28971dba@Knoppix>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Thursday 04 November 2004 22:59, Peter wrote:
> Hi,
>
> Slackware10
>
> When I installed the kernel 2.6.7 my sound was lost, the error message
> claiming it can not find module via82cxxx_audio.c. Checking
> /lib/modules/2.6.7/kernel/drivers there was no /sound folder.

Kernel 2.6 structure is different to 2.4 for modules, sound modules reside in
kernel/sound and not kernel/drivers/sound.

> I then copied ../2.4.26/../sound into ../2.6.7../drivers/ it did not change
> it still claimed it could not find my sound module after rebooting.

Not a good thing to do, 2.6 kernels are "very different" to 2.4.

> I then switched back to 2.4.26 and sound was back.
>
> Could that be resolved and how?

You will need to check your /usr/src/linux/.config file to see what you have 
defined for sound.

Go here;
http://www.codemonkey.org.uk/docs/post-halloween-2.6.txt
For good info on compiling 2.6 kernels.

>
> A side benefit of the whole exercise was that all of a sudden starting kde
> programs such as kppp takes now only half the time than before I tried to
> switch kernels. It used to take an annoying 22 seconds, now it takes only
> 11. ???????????

Even 11 seconds sounds way to long, but you did not say what sort of computer 
it is, let alone how much memory you have, etc etc etc...

> Thanks & Regards

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
