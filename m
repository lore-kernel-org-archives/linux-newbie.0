From: Ray Olszewski <ray@comarre.com>
Subject: Re: net detection failure with old kernel
Date: Tue, 16 Dec 2003 12:33:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031216122353.02039d80@celine>
References: <5.1.0.14.1.20031215133800.01ff3b00@celine>
 <5.1.0.14.1.20031215133800.01ff3b00@celine> <Pine.LNX.4.58.0312161343290.452@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312161343290.452@debian-box>
References: <5.1.0.14.1.20031215133800.01ff3b00@celine>
 <5.1.0.14.1.20031215133800.01ff3b00@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:54 PM 12/16/2003 -0600, James Miller wrote:
>On Mon, 15 Dec 2003, Ray Olszewski wrote:
>
> > problem down a bit. As to the source ... I'm assuming that the 2.2.20
> > kernel did get a DHCP lease from this server before you switched to
> > 2.4.something_or_other and that you made no changes to the hardware or the
> > BIOS settings after you switched kernels. If those assumptions hold, the
> > only thing I can think of that is left is a corrupted NIC driver ... you
> > might check timestamps to make sure the module you are loading is the same
> > one you used to use.
> >
>Your assumption (about hardware/BIOS) was wrong.

Yeah. That's why I always *try* to make the assumptions explicit ... to 
detect important details that the poster left out of the problem description.

>Since I was starting to
>have some trouble with IDE channels in the machine I did the original
>installation on, I decided to just remove the HD and place it in another
>machine with essentially the same peripherals (NIC, video card, CD drive
>etc.) but a somewhat different mobo and processor.  I was a bit surprised
>that it worked as well as it did - even the networking (with the 2.4.x
>kernel, as you know).  I've since fixed the problem with the IDE stuff,
>and have just now placed the drive back in the machine I initially did the
>Debian install on.  And, when I boot the 2.2.20 kernel - voila! networking
>works fine.  So, the problem was somehow hardware related, as you opined
>for one of the remote possibilities.  Still curious to me though why
>networking did work with the 2.4.x kernel while the drive was in that
>temporary host, but not with the 2.2.20 kernel.  Anyway, it's working now.
>If you'd care to offer any further speculations on why the problem cropped
>up with the change in hardware using the older kernel (but not with the
>new), I would gladly listen/read.

At a guess, you hit an IRQ problem. I forget the details of the evolution 
of the IRQ-sharing kernel code, but I'd expect 2.4.x to be better at it 
than 2.2.x. And your 2.2.20 symptoms match the classic problem of a NIC and 
a serial port (or onboard Winmodem) sharing an IRQ in the days before the 
kernel supported IRQ sharing. Did you happen to look at /proc/interrupts on 
the temporary setup with 2.2.20? If so, did it differ from the current, 
working setup?

The other possibility that comes to mind is that the mobo switch fouled up 
PnP initialization of the NIC, and that 2.2.20 doesn't cope with this as 
well as 2.4.x ... though I have no details to offer in support of this 
blue-sky speculation.

This is all pretty vague because I don't know the hardware involved, even 
if (for example) the NIC is ISA or PCI.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
