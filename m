From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian Wody.
Date: Tue, 13 May 2003 09:58:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030513095035.01fba0b0@celine>
References: <5.1.0.14.1.20030513064731.01eb14a8@celine>
 <200305131334.h4DDYvjs017212@hartford-hwp.com>
 <5.1.0.14.1.20030513064731.01eb14a8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3IjDFBAX5Rw+Ew32@gcbagley.demon.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Less a "proponent" of Debian than a dedicated user of it. Anyway, your 
question actually is not, or at least not entirely, distro-specific.

The Tux picture comes up when the screen shifts from the basic VGA display 
to the framebuffer display. This switchover is a kernel option, and I don't 
use it myself in my locally-compiled kernels (though it is usually used 
with the stock kernel-images), so I can't tell you much about it, since I 
only encounter it briefly during installs (and I've never seen anything 
then that resembles your description).

Any problem with colors probably has something to do with the specifics of 
your hardware. What video card are you using? Knowing more about the timing 
of the change (more than that it happens at "a certain point") might be 
instructive as well.

As I recall, stock Woody kernels use initrd, another option I don't 
normally use on my everyday (Sid) systems. Might the timing of the problem 
be related to that?

At 06:33 PM 5/13/2003 +0200, geoff bagley wrote:

>I have just rejoined this list because I know Ray to be a proponent of
>the Debian distro.
>
>When I load up my Debian GNU/Linux 3.0 I get a nice little picture of
>the well-known Penguin "Tux", complete with a glass of beer, and all
>correctly coloured, up in the left-hand corner of the display.
>
>At a certain point during the loading sequence, his colours suddenly all
>get fouled up.
>
>Please can you tell me why, and what, if anything, is to be learned from
>this ?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
