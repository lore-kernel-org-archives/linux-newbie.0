From: Ray Olszewski <ray@comarre.com>
Subject: Re: Page swap
Date: Thu, 07 Nov 2002 23:07:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021107225957.02110420@celine>
References: <20021108051626.44003.qmail@web40406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021108051626.44003.qmail@web40406.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:16 PM 11/7/02 -0800, Mike Ni wrote:
>Folks,
>
>I am having performance issue with one of the
>application. It looks like it is running low on the
>memory.
>
>In addition to add new memory to the system, is there
>anything can be done while we are waiting for the
>memory upgrade?

Possibly any number of things, but what your real options are depend on the 
details. Things you *might* be able to do include --

1. Add a swap partition ... but if the performance problem is a speed 
issue, then slow swap probably will not help.

2. Reduce the number of other applications running on the system, so their 
use of RAM is minimized.

3. Check the app itself for configuration options that might cause it to 
use less memory.

4. If you are using a stock kernel, replace it with one customized for your 
system. Custom kernels usually use less memory (though with today's typical 
memory sizes, the benefit here is quite small, so this is only really 
useful if we're talking about a dedicated system with really small RAM).

To get better advice, tell us the application involved, what the 
performance problem is, why you believe it "looks like" it is running out 
of memory, and the basics of your system (hardware, Linux distro and 
version, kernel version). The output of "free" and the relevant line(s) 
from "ps aux" (or some variant that reports memory usage) would probably 
also be informative.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
