From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: PCMCIA: pre-compiled driver packages
Date: Sat, 14 Dec 2002 18:44:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DFBC247.837CE099@gelm.net>
References: <3DFB9211.99110E9C@gelm.net> <Pine.LNX.4.50.0212141538300.260-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi, Jude:  Thanks.

 kernel 2.2.19 is coming up on 1 year 9 months. ;-)
I'm compiling kernel 2.4.20 now.
I have found that PCMCIA requires a pcmcia-cs package;
 if not the userspace modules, at least the tools.
 Here is an excerpt from
http://pcmcia-cs.sourceforge.net/ftp/doc/PCMCIA-HOWTO-2.html#ss2.1

"The kernel PCMCIA code has the same functionality as the driver side
of the pcmcia-cs package. It does not eliminate the need to install
the pcmcia-cs package, since it requires the same user tools
(cardmgr, cardctl, /etc/pcmcia/* files). The drivers in pcmcia-cs can
still be built for 2.4 kernels, so you have a choice of using either
the in-kernel PCMCIA drivers, or the drivers included in pcmcia-cs.
With 2.5 and later kernels, the standalone drivers cannot be used."

 I'll try to use the kernel drivers so as to be compatible with
kernel-2.6.x, when it is released.

Later, Chuck

dashielljt wrote:
> 
> kernel 2.2.19 is at least two years old.  To the best of my knowledge it
> did not and does not provide drivers for any of your pcmcia cards.  I have
> never heard any of them being tested for on boot up at any rate.  I also
> do not know if any of the more recent kernel releases offer these drivers
> either.  Probably your best bet would be to set up a freshmeat.net account
> and subscribe to the newsletters and check them out.  It's like windows
> update for linux but far less intrusive.
> 
> Jude <dashielljt(at)gmpexpress-dot-net>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
