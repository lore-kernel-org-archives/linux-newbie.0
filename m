From: Peter <heisspf@skyinet.net>
Subject: Re: No Printing with Kernel 2.6.14.4
Date: Mon, 20 Mar 2006 09:25:44 +0800
Message-ID: <20060320092544.5f882f77@skyinet.net>
References: <200603190543.k2J5hmPC001185@skyinet.net>
	<441D021F.1060705@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <441D021F.1060705@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Sat, 18 Mar 2006 23:02:55 -0800
Ray Olszewski <ray@comarre.com> wrote:

> Peter wrote:
> > Hi,
> > 
> > Slackware 10.2
> > 
> > When I change from kernel 2.4.31 to kernel 2.6.14.4 by installing 
> > kernel-generic-2.6.14.4-i686-2sh.tgz and
> > kernel-modules-2.6.14.4-i686-2sh.tgz
> > I cannot print anymore since apparently there is no provision for a
parallel 
> > port which my printer Epson LQ 300 is using. At least when configuring the

> > printer using gnome-cups-manager with kernel 2.6.14.4 it only shows serial
> > and usb ports.
> > 
> > How would I go about getting a parallel port into the 2.6.14.4 kernel.

> > Thanks & regards
> 
> I just checked the kernel source I have handy (2.6.11, Debian package) 
> and it appears to offer parallel port support. The relevant modules are 
> parport and parport_pc (the same as 2.4.x, I think ... it's been some 
> years since I used a parallel port). You might try modprobe'ing these 
> modules and see what results. If Slackware left them out of its standard 
> modules package, I can't imagine why.

Thanks Ray and Hal,

modprobe lp, parport and parport_c did the trick.

I have to put the command now into rc.local. Isn't this odd?

I also found my Epson printer has even a serial outlet, but I have no cable.

Hal, Epson LQ 300 impact printer is still on sale here and for anyone who has
no need for colored prints it is still the best buy. For $2.00 or half if I
buy a refill ribbon only I can print 2 million characters . Beat that with an
ink squirt printer. With the amount of printing I am doing in 6 months the
higher purchasing cost of my Epson is more than paid for. All the computer
stores here use Epson LQ 300 for invoicing etc. I guess they were the first to
smell the racket of the industry selling those expensive ink cartridges.

Regards

Peter

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
