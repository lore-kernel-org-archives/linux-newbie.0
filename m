From: Jim Nelson <james4765@verizon.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 18:42:00 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41798CB8.4010701@verizon.net>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach> <417968FE.3070405@verizon.net> <Pine.LNX.4.58.0410221604590.1287@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410221604590.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> On Fri, 22 Oct 2004, Jim Nelson wrote:
> 
> 
>>If you are using a 2.6 kernel (and maybe the 2.4), the kernel module for
>>the ATI Rage series of graphics systems is aty128fb, not atyfb.  I've
>>had problems with vesafb myself, but with really old hardware (Trident
>>TGUI 9660 on an old Thinkpad).
> 
> 
> Thanks for your response, Jim.  Not sure if you recall what sort of card I
> mentioned, but it's an older, onboard one with low memory.  According to
> an infomrational page I found at
> www.sharplabs.com:8668/space/video+boot+arguments , I should be using the
> atyfb module (and they do list the aty128fb there for other ATI Rage
> models).  So, do you still think I"m using the wrong module?  I really
> don't know.  I consider myself a total neophyte at this
> 
> 

Heh, my bad.  In the kernel configuration, atyfb is listed as belonging 
to the Mach64 family, and a quick peruse of 
drivers/video/aty/atyfb_base.c listed the early Rage cards.  Didn't 
realize the Rage and Rage 128 were that different.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
