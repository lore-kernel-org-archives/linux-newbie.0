From: Peter <pfheiss@philonline.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Fri, 9 Aug 2002 15:13:33 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02080915133300.07686@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks Riley

pfheiss@philonline said:

>.....
> When I recently upgraded to RH7.3 I got total keyboard locks when
> trying to run xscreensaver, tuxracer and chromium and may be others,
> necessitating dirty reboot by the reset botton. >
>.....
> I, therefore, conclude that the problem is somewhere whithin with
> RH7.3 and possibly not with my video card which is SiS 630 since it
> works fine in RH7.1. >


rhw@InfraDead.Org said:
>  2. For each program where those versions are different, please see
>     if you can install a copy of the same version used under RH 7.3
>     on your RH 7.1 based system. If you can, please determine if it
>     is stable under 7.1 or if it also fails there. 

I tried it with xscreensaver. The version in RH7.1 is/was 3.29-3.i386.rpm and 
the one of RH7.3 is 3.33-4.i386.rpm. It upgraded flawlessly and seems to be 
stable. No hang no keyboard lock-up which I could induce in RH7.3 by clicking 
on Blank Screen Now in xscreensaver-demo or when the display at set time 
would change. 

If I recall correctly I tried to install the xsceensaver of RH7.1 in Rh7.3 
and it would lock-up as well, however, I am not so sure anymore if it did 
install at all. 

So the problem does not semm to be with the particular programs it must be 
most likely within the kernel of RH7.3.

Regards



-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
