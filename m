From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Wed, 27 Oct 2004 05:59:12 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <417F9BA0.70807@bcgreen.com>
References: <5.1.0.14.1.20041023211235.01feb690@celine> <5.1.0.14.1.20041023135516.01fefc38@celine> <Pine.LNX.4.58.0410222229140.1287@debian-emach> <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach> <417968FE.3070405@verizon.net> <Pine.LNX.4.58.0410221604590.1287@debian-emach> <41798CB8.4010701@verizon.net> <Pine.LNX.4.58.0410222229140.1287@debian-emach> <5.1.0.14.1.20041023135516.01fefc38@celine> <5.1.0.14.1.20041023211235.01feb690@celine> <5.1.0.14.1.20041024085546.020676a8@celine> <Pine.LNX.4.58.0410241436410.1287@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410241436410.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

For knoppix, try booting with 'vga=normal'  That avoids booting
with framebuffer text. (there are other vga=settings, but I haven't
bothered to learn them).

The VGA  text code for knoppix seems to go for the 'best possible' mode
which can overwhelm the monitor.

James Miller wrote:
> Hello Ray:
>
> No.  It's always been just a textmode console up until gdm kicks in--no
> cute little penguins.  I'll reiterate that when I tried booting this
> system with a Knoppix CD, I couldn't get any text mode output (black
> screen with "vga mode not support(ed)") with all kinds of nice colors,
> fine resolution and little penguin like I usually get when booting with a
> Knoppix CD.  On the kernel: I could provide the config, if that would
> help.  Here's a selection from it that may be relevant:


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
