From: "Jonathan Kallay" <yoni@kallay.net>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Wed, 15 Jan 2003 16:15:43 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <01cf01c2bcdb$44a32f00$6400a8c0@00arc>
References: <5.1.0.14.1.20030112114020.02281c10@celine> <5.1.0.14.1.20030112125949.02281330@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I had already compiled the nVidia driver but had not yet replaced the Driver
line in XF86Config with the new driver- the nVidia docs suggested getting
the X setup working first with the "nv" driver before switching to theirs.
Just for kicks, I tried the nVidia driver, and lo and behold, it works.

>
> The symptoms leave me suspecting that the video card is getting switched
to
> a mode that the monitor cannot support (not hard to do, unfortunately - I
> often do it with X and with MS Windows) and that X cannot switch out of
> when exiting. But without the details, that can be no more than a vague
> guess. For real help, someone else on the list, someone who has actually
> used nVidea hardware and drivers, should jump in.
>
> At 03:46 PM 1/12/03 -0500, Jonathan Kallay wrote:
> >Ray,
> >   Thanks for the response.  Here are the answers to your questions, in
no
> >particular order.
> >   I changed the vsync and hsync values according to the specs I looked
up on
> >www.monitorworld.com, which are also consistent with the monitor type: a
> >mid-to-low-end 15" monitor.
> >
> >  CTRL-ALT-F* does not work.  There are no X processes running- so X did,
in
> >fact, fail to start.  I tried turning off the monitor, disconnecting it
from
> >the video card, powering it on, turning it off, reconnecting it, and
> >powering it on again.  The monitor will "click" after a few seconds, as
if
> >it is going into suspend mode, but the power light won't change to
orange.
> >
> >I can switch to a different virtual terminal, blindly login and type
> >commands, and they will work (e.g. shutdown -r now will reboot the
machine)
> >.  So it looks like the display is being knocked out without coming back
up
> >once X terminates.  I am using an NVidia TNT2 video card with the
standard
> >nv driver.
>
> [old stuff deleted]
>
>
>
> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
