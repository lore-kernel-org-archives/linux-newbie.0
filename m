From: James Miller <jamtat@mailsnare.net>
Subject: Re: net detection failure with old kernel
Date: Tue, 16 Dec 2003 13:54:01 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312161343290.452@debian-box>
References: <5.1.0.14.1.20031215133800.01ff3b00@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031215133800.01ff3b00@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 15 Dec 2003, Ray Olszewski wrote:

> problem down a bit. As to the source ... I'm assuming that the 2.2.20
> kernel did get a DHCP lease from this server before you switched to
> 2.4.something_or_other and that you made no changes to the hardware or the
> BIOS settings after you switched kernels. If those assumptions hold, the
> only thing I can think of that is left is a corrupted NIC driver ... you
> might check timestamps to make sure the module you are loading is the same
> one you used to use.
>
Your assumption (about hardware/BIOS) was wrong.  Since I was starting to
have some trouble with IDE channels in the machine I did the original
installation on, I decided to just remove the HD and place it in another
machine with essentially the same peripherals (NIC, video card, CD drive
etc.) but a somewhat different mobo and processor.  I was a bit surprised
that it worked as well as it did - even the networking (with the 2.4.x
kernel, as you know).  I've since fixed the problem with the IDE stuff,
and have just now placed the drive back in the machine I initially did the
Debian install on.  And, when I boot the 2.2.20 kernel - voila! networking
works fine.  So, the problem was somehow hardware related, as you opined
for one of the remote possibilities.  Still curious to me though why
networking did work with the 2.4.x kernel while the drive was in that
temporary host, but not with the 2.2.20 kernel.  Anyway, it's working now.
If you'd care to offer any further speculations on why the problem cropped
up with the change in hardware using the older kernel (but not with the
new), I would gladly listen/read.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
