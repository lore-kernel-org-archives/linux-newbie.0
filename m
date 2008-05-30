From: Alexei Babich <a.babich@rez.ru>
Subject: Re:
Date: Fri, 30 May 2008 17:06:00 +0600
Message-ID: <200805301706.00464.a.babich@rez.ru>
References: <200805191657.13926.a.babich@rez.ru> <804dabb00805262224j1d5f7cf2mc076bcbb0554bac4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <804dabb00805262224j1d5f7cf2mc076bcbb0554bac4@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> Check this out - since it has similar embedded requirements like yours
> (what is a chematic engineer?):
I ment circuit, not schematic, and that's a misprint in addition :)

> http://tree.celinuxforum.org/pipermail/celinux-dev/2006-July/001261.html
Thank you for link.

> 
> Read the comments part of kernel/printk.c - printk() is an amazing
> function, because it can be called in ANY CONTEXT.....which also means
> that it cannot sleep.   But since u know many I/O function involved
> some form of waiting, therefore printk() necessarily HAVE TO WRITE TO
> A BUFFER,
OK, I need decrease buffer depth.
Thank you.

-- 
Regards,
Alexei Babich, circuit engineer, OOO NPP "Rezonans", Chelyabinsk, Russia
http://www.rez.ru
Jabber ID: impatt@jabber.ru
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
