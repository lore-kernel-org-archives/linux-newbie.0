From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: changing network card driver
Date: Sun, 9 Jan 2005 10:30:13 +0530
Message-ID: <4b0d6e0d05010821003ce51c60@mail.gmail.com>
References: <1105205852.41e01a5cc7197@webmail.dpomeroy.com>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1105205852.41e01a5cc7197@webmail.dpomeroy.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "dave@dpomeroy.com" <dave@dpomeroy.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

first of all , is the present driver compiled into the kernel or as a module?

If first option, you will need to compile a new kernel eithout the driver.

if second, easy, goto /lib/modules/<kernel-version>/drivers and delete
the module
which will be there somewhere. 

Then modify ( delete)  the entry in your modules.conf or
modprobe.conf, whichever is applicable.

then you can go ahead with the nvidia driver install.


regards,

Joy.M.monteiro


On Sat,  8 Jan 2005 09:37:32 -0800, dave@dpomeroy.com <dave@dpomeroy.com> wrote:
> I have a Nvidia network card.  I'm using the 64 bit Suse 9.2 and that uses the
> forcedeth driver.  I'm having problems with the network staying up.  I have to
> restart the computer or the network every few minutes.   I'm wondering how to
> remove the forcedeth driver and use the nvidia supplied driver.  Can anyone
> give me a general explanation on this.  I think if I can remove the forcedeth
> driver and I can go ahead and install the nvidia driver using nvidia's install
> script.
>   Thanks for your time.
> Dave
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
people always turn away,
from the eyes of a stranger...
Afraid to know
what lies behind the stare.......
    --QueensRyche
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
