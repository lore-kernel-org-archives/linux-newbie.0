From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: problem with Real Tek RTL-8139, SMC EZ Card
Date: Fri, 7 Nov 2003 07:49:46 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200311070649.46620.pa3gcu@zeelandnet.nl>
References: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>, linux-newbie@vger.kernel.org

On Thursday 06 November 2003 18:11, Ravi Kumar Munnangi wrote:
> Hello,
>
>   I have just now installed RedHat Linux 8.0 on my
> system. It has the Real Tek RTL-8139, SMC EZ Card.
>
>  After ifup eth0, it gave the message,
>
>  modprobe:Can't open dependencies file
> /lib/modules/2.2.14-5.0/modules.dep(No such file or
> directory)

The normal way to cure that is to do as root,

depmod -a
modprobe 8139too

See what happens.

>
> The same message appeared even at the time of booting.
>
> Please help me come out of this problem!
>
> Thanking you,
> Ravi Kumar
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
