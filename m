From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: How do I stop GUI from autoloading?
Date: Tue, 20 May 2003 07:23:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305200723.18633.pa3gcu@zeelandnet.nl>
References: <3EC92B60.1000406@bcgreen.com> <5.1.0.14.1.20030519141159.01f205c8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030519141159.01f205c8@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 19 May 2003 23:14, Ray Olszewski wrote:
> At 09:55 PM 5/19/2003 +0200, Richard Adams wrote:
> >On Monday 19 May 2003 21:07, Stephen Samuel wrote:
> > > This solution presumes that X startup is controlled by the runlevel.
> > > I presume that you know about TurboLinux. I really only know RedHat.
> > > Apparently, some versions of Linux use methods other than run level
> > > to control X-Windows startup.
> >
> >Name one that does not use /etc/inittab, i do not posess to know
> > everything, but i have never seen one which does not use the inittab
> > method.
>
> A normal Debian install (Woody or Sid, maybe older versions too) starts xdm
> from an /etc/init.d script that is symlinked to runlevels the usual way.
> The standard practice is to leave the system at runlevel 2 and run an
> S99xdm .

But does Debian define the runlevel in /etc/inittab ?.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
