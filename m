From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 23:06:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305192306.18703.pa3gcu@zeelandnet.nl>
References: <20030510100903.GA1586@localhost.localdomain> <200305192155.49553.pa3gcu@zeelandnet.nl> <3EC94114.6040401@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EC94114.6040401@bcgreen.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Samuel <samuel@bcgreen.com>
Cc: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

On Monday 19 May 2003 22:39, Stephen Samuel wrote:
> Richard Adams wrote:
>  > On Monday 19 May 2003 21:07, Stephen Samuel wrote:
>  >>This solution presumes that X startup is controlled by the runlevel.
>  >>I presume that you know about TurboLinux. I really only know RedHat.
>  >>Apparently, some versions of Linux use methods other than run level
>  >>to control X-Windows startup.
>  >
>  > Name one that does not use /etc/inittab, i do not posess to know
>  > everything, but i have never seen one which does not use the inittab
>  > method.
>
> I don't personally know of one, but I'm aware that it's definitely
> possible, and there's no reason to not do it (other than the fact that
> it'd confuse oldies like you and me).  Since I haven't played with
> that many flavours of Linux, I can only accept as truth that there
> are some that do it in different ways.

There is no doubt about the means to do it in many ways, thats the heart of 
linux.

> I'm not talking about the  initstate value in inittab,  here.
> I'm talking about there being an xdm startup entry in inittab
> for level 5 .

Not in Slackware theres not, at least not directly mentioned, all slackware 
does is call /etc/rc.d/rc.4 when runlevel 4 is defined as initdefault4, note 
slackware uses init 4 for X and not 5.
/etc/rc.d/rc.4 is editable to start which ever enviroment one wants, just like 
SysVinit systems allow in thier files which are in /etc/sysconfig i belive.

On another note it used to be like you say, however things change, i seemingly 
like you think about how it used to be but upon deeper study one sees the 
changes which we have never seen.

Thanks anyway for you input.

>
> Solaris is a non-linux example where the 'normal' states are
> 2 (non-networked) and 3(networked) and the use of X is
> determined via a different mechanism. Somebody who wanted to
> put together a version of Linux that looked as much like
> Solaris as posible would then be following the Solaris
> mechanism.

I have never used solaris so i cannot compare the two, anyway we are taking 
linux here and not another operating system.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
