From: Ray Olszewski <ray@comarre.com>
Subject: Re: No Printing with Kernel 2.6.14.4
Date: Sat, 18 Mar 2006 23:02:55 -0800
Message-ID: <441D021F.1060705@comarre.com>
References: <200603190543.k2J5hmPC001185@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200603190543.k2J5hmPC001185@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux <linux-newbie@vger.kernel.org>

Peter wrote:
> Hi,
> 
> Slackware 10.2
> 
> When I change from kernel 2.4.31 to kernel 2.6.14.4 by installing 
> kernel-generic-2.6.14.4-i686-2sh.tgz and kernel-modules-2.6.14.4-i686-2sh.tgz
> I cannot print anymore since apparently there is no provision for a parallel 
> port which my printer Epson LQ 300 is using. At least when configuring the 
> printer using gnome-cups-manager with kernel 2.6.14.4 it only shows serial and 
> usb ports.
> 
> How would I go about getting a parallel port into the 2.6.14.4 kernel. Could I 
> copy it from the 2.4.31 modules and which one?
> 
> In /usr/src I have no linux-2.6.14 directory only one for linux-2.4.31.
> 
> Thanks & regards

I just checked the kernel source I have handy (2.6.11, Debian package) 
and it appears to offer parallel port support. The relevant modules are 
parport and parport_pc (the same as 2.4.x, I think ... it's been some 
years since I used a parallel port). You might try modprobe'ing these 
modules and see what results. If Slackware left them out of its standard 
modules package, I can't imagine why.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
