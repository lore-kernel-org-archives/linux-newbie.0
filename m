From: Shaun Bryant <sbryant@ThePit.org>
Subject: RE: Kernel error
Date: Sun, 26 May 2002 07:57:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'pa3gcu@zeelandnet.nl'" <pa3gcu@zeelandnet.nl>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Richard,

I have had two kernel panics in the last 3 days which is why I was looking
in the syslog to find the problem. I ran the command you mentioned and got
the below results.

depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/char/drm/gamma.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/char/drm/i810.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/char/drm/mga.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/char/drm/r128.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/char/drm/radeon.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/i2o/i2o_lan.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/net/defxx.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/net/skfp/skfp.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/video/matrox/matroxfb_base.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/video/matrox/matroxfb_crtc2.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/video/matrox/matroxfb_g450.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/drivers/video/matrox/matroxfb_maven.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/net/ipv6/ipv6.o.gz
depmod: *** Unresolved symbols in
/lib/modules/2.4.5/kernel/net/khttpd/khttpd.o.gz

how would I fix the above problems?


Thanks
Shaun

-----Original Message-----
From: Richard Adams [mailto:pa3gcu@zeelandnet.nl]
Sent: Sunday, May 26, 2002 4:46 AM
To: Shaun Bryant; 'linux-newbie@vger.kernel.org'
Subject: Re: Kernel error


On Saturday 25 May 2002 19:54, Shaun Bryant wrote:
> Rich,
>
> Yes I did upgrade the kernel but the system.map seems to be the same date
> (see below). Is there a way to rebuild the system map?

Correct, they are the same timestamp, however to find out wht is wrong you 
could try 'depmod -a' to see if that results in "unresolved symbols".

Sometimes the error you mention is not to be worried about.

Are you having problems with one or other funtion which does not work like
it 
did in your last kernel.

>
> -rw-r--r--    1 root     root       659886 Mar 20 07:53 System.map
> -rw-r--r--    1 root     root       657708 Mar 20 06:42 System.old

> -rw-r--r--    1 root     root      1159361 Mar 20 07:53 vmlinuz
> -rw-r--r--    1 root     root      1154564 Mar 20 06:42 vmlinuz.old
>
> Shaun

--
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
