From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 14:14:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030519141159.01f205c8@celine>
References: <3EC92B60.1000406@bcgreen.com>
 <20030510100903.GA1586@localhost.localdomain>
 <200305192049.41645.pa3gcu@zeelandnet.nl>
 <3EC92B60.1000406@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305192155.49553.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:55 PM 5/19/2003 +0200, Richard Adams wrote:
>On Monday 19 May 2003 21:07, Stephen Samuel wrote:
>
> > This solution presumes that X startup is controlled by the runlevel.
> > I presume that you know about TurboLinux. I really only know RedHat.
> > Apparently, some versions of Linux use methods other than run level
> > to control X-Windows startup.
>
>Name one that does not use /etc/inittab, i do not posess to know everything,
>but i have never seen one which does not use the inittab method.

A normal Debian install (Woody or Sid, maybe older versions too) starts xdm 
from an /etc/init.d script that is symlinked to runlevels the usual way. 
The standard practice is to leave the system at runlevel 2 and run an S99xdm .



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
