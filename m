From: Peter <pfheiss@philonline.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Sun, 11 Aug 2002 11:25:36 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081111253600.01574@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

In-Reply-To: Message from Ray Olszewski <ray@comarre.com> 
   of "Fri, 09 Aug 2002 23:59:11 MST." 
<5.1.0.14.1.20020809234007.0208bd20@celine>

Thanks!

ray@comarre.com said:
> The one characteristic I see as common to the three problem apps, but
> absent in the OK apps, is speed and frequency of screen updating. They
>  would be more likely to trip an infrequently occurring failure in the
> X  server, simply because they make a lot more calls to it. 

I came slowly to this conclusion myself that it must have something to do 
with the graphics.

ray@comarre.com said:
> I'd bet that you are switching from XFree86-3.3.6 or so to
> XFree86-4.something, and this is a big change. I'm not sure where RH
> puts X  config info, but look for a file named XF86Config (maybe  /etc/
> X11/XF86Config-4 for the new version) to see which X server you are
> running.
I made that switch with RH7.1 some time ago with no problems.
7.1 runs on XFree86-4.0.3-5 and and 7.3 om XFree-4.2.0-8. It is there 
/etc/X11/XF86Config-4 but I can not find anything specific as to what X 
server I am running. Must be my ignorance.

If you think that the problem might be in these XF86Config files and I have 
no problem with RH7.1, how about installing the kernel of RH7.3, libraries 
etc and then replacing the 7.3 XF86Config files with the ones of RH7.1.

BTW I posted the problem as well to the redhat-install list and somebody 
sugested
to turn off the apmd system (advanced power management) by unmarking
the "apmd" entry in ntsysv.
What do you think about that? Would that have something to do with tuxracer 
or chromium?

Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
