From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 13:39:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC94114.6040401@bcgreen.com>
References: <20030510100903.GA1586@localhost.localdomain> <200305192049.41645.pa3gcu@zeelandnet.nl> <3EC92B60.1000406@bcgreen.com> <200305192155.49553.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305192155.49553.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

Richard Adams wrote:
 > On Monday 19 May 2003 21:07, Stephen Samuel wrote:
 >
 >
 >>This solution presumes that X startup is controlled by the runlevel.
 >>I presume that you know about TurboLinux. I really only know RedHat.
 >>Apparently, some versions of Linux use methods other than run level
 >>to control X-Windows startup.
 >
 >
 > Name one that does not use /etc/inittab, i do not posess to know everything,
 > but i have never seen one which does not use the inittab method.

I don't personally know of one, but I'm aware that it's definitely
possible, and there's no reason to not do it (other than the fact that
it'd confuse oldies like you and me).  Since I haven't played with
that many flavours of Linux, I can only accept as truth that there
are some that do it in different ways.

I'm not talking about the  initstate value in inittab,  here.
I'm talking about there being an xdm startup entry in inittab
for level 5 .

Solaris is a non-linux example where the 'normal' states are
2 (non-networked) and 3(networked) and the use of X is
determined via a different mechanism. Somebody who wanted to
put together a version of Linux that looked as much like
Solaris as posible would then be following the Solaris
mechanism.

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
