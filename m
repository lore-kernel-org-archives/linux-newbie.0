From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 12:07:12 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC92B60.1000406@bcgreen.com>
References: <20030510100903.GA1586@localhost.localdomain> <20030510160917.GA890@localhost.localdomain> <3EC9198F.9080600@bcgreen.com> <200305192049.41645.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305192049.41645.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

Richard Adams wrote:
> On Monday 19 May 2003 19:51, Stephen Samuel wrote:
>>Amin wrote:
>>>On Sat, May 10, 2003 at 08:42:05AM -0700, Ray Olszewski
>>>wrote:

> choose Linux it will be highlighted at the :Boot" prompt, add a "1" or a "3" 
> after it, 1 or 3 is the runlevel if any askes...
> When booted into one or 3 they are both console modes, do the following;

> cd /etc
> vi inittab
> (Got to something like line 20) a line which looks like);
> id:4:initdefault:   
> {OR}
> id:5:initdefault:
> Edit that line to;
> id:3:initdefault:
> save the file, now on the next boot linux will boot into console mode.
> 
> Find your problem at ease now and then when you are sure you can boot properly 
> change /etc/inittab back to runlevel 4 or 5 which ever your distro uses.

This solution presumes that X startup is controlled by the runlevel.
I presume that you know about TurboLinux. I really only know RedHat.
Apparently, some versions of Linux use methods other than run level
to control X-Windows startup.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
