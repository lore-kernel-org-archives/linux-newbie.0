From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 'Irq_vectors.h: No such file or directory' in 2.5.59
Date: Wed, 26 Feb 2003 16:24:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03022616243501.00603@unix.pa3gcu>
References: <720FB032F37C0D45A11085D881B03368A2B30F@MBXSRV24.stu.nus.edu.sg>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B30F@MBXSRV24.stu.nus.edu.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>, linux-newbie@vger.kernel.org

On Wednesday 26 February 2003 15:23, Eng Se-Hsieng wrote:
> Hello,

Firstly this list is for mewbies, a development kernel is not for newbies as 
you see with your problem, however i will try and shed some light.

>
> While compiling the Nokia D211 driver on my computer, I received the
> following error message.
>
> /usr/src/linux-2.5.59/include/asm/irq.h:16:75: irq_vectors.h: No such
> file or directory
>
> Line 15-16 of the above file is as follows:
> /* include comes from machine specific directory */
> #include "irq_vectors.h"

The above means irq_vectors.h is to be found in the present directory.
Or i belive something to that effect, if it were to be in say asm then it 
would be;
#include <asm/irq_vectors.h>

> I've read some mails about how the file irq_vectors.h is actually found
> in usr/src/linux-2.5.59/arch/i386/mach-generic but the only mach*
> directories I have are
>
> mach-default, mach-visws and mach-voyager.
>
> Did I forget to download something or compile something in my kernel?

No a source tarball is a surce tarball, thats all i have as well.

So you have some choises.

1) copy /usr/src/linux-2.5.59/arch/i386/mach-generic/irq_vetors.h 
to
/usr/src/linux-2.5.59/include/asm/ # which is possably a symlink to asm-i386 

2) edit /usr/src/linux-2.5.59/include/asm/irq.h # alter
#include "irq_vectors.h"
#include <mach-default/irq_vectors.h>

3) seek advise elsewhere, not being rude but as i said this is a newbie group 
and writing mails like this could lead a newbie to render his system unusable 
at the most remote off-chance of course.
(No offence meant).

4) Try google.com/linux use irq_vectors.h as the search, i did i got 40 hits.
I must say there are some good examples there also.

> Grateful if someone could help with where and how to find the
> irq_vectors file in the 2.5.59 kernel sources.

O why 2.5.59 latest is 2.5.63

>
> Thank you.

Your welcome.

>
> Regards,
> Se-Hsieng

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
