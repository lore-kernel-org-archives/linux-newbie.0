From: James Miller <jamtat@mailsnare.net>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Wed, 12 Jan 2005 11:37:25 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0501121132360.7477@localhost.localdomain>
References: <5.1.0.14.1.20050111220955.02b21ba8@celine> <200501112319.42894.eric@cisu.net>
 <41E439F4.6030404@comcast.net> <200501112319.42894.eric@cisu.net>
 <5.1.0.14.1.20050111220955.02b21ba8@celine> <5.1.0.14.1.20050112080425.02a9f9c8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050112080425.02a9f9c8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 12 Jan 2005, Ray Olszewski wrote:

> If you are looking for something *extremely* lightweight, you probably want
> to look at alternatives to X written for the embedded-systems world (PDAs
> and the like)... projects like microwindows and matchbox. These
> super-lightweight apps tend not to show up in mainstream distros, though,
> and since they use different shared libraries, they do not support
> mainstream X apps, only apps that have been written or adapted for them.

Since no one has yet mentioned Xvesa/Kdrive I will. It's some kind of
really stripped down version of X that's often used to get a
reasonably-performing display on older machines that might otherwise be
very sluggish running the full X windows. DamnSmallLinux uses Xvesa for
its display, for example, and Knoppix gives the option of using it as the
Xserver. Delilinux and Basiclinux offer or use it as well.

James, soundless in Milwaukee
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
