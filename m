From: James Miller <jamtat@mailsnare.net>
Subject: Re: alternate Debian kernels
Date: Mon, 15 Dec 2003 13:51:11 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312151339480.603@debian-box>
References: <5.1.0.14.1.20031215113111.01f25f98@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031215113111.01f25f98@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 15 Dec 2003, Ray Olszewski wrote:

> At 12:55 PM 12/15/2003 -0600, James Miller wrote:
> >Maybe one of the Debian users on this list can help me understand
> >something about the kernels offered on the unstable branch.  Specifically,
> >I have a question about 2.4.x kernels.  There are two 2.4.x kernels
> >available there, and I'm trying to understand the difference between them.
> >One is listed as kernel-image-2.4-(CPUarchitecture), while the other is
> >listed as kernel-image-2.4.22-1-(CPUarchitecture).  It's clear what the
> >second one is, but what's the first in relation to it?  Is it the 2.4.0
> >kernel?
>
> Try "apt-cache show" on one of the "kernel-image-2.4-(CPUarchitecture)"
> packages. You'll see that the description says it is a wrapper package that
> always points (via a dependency) to the corresponding
> "kernel-image-2.4.*-*-(CPUarchitecture)" package (currently a
> "kernel-image-2.4.22-1-(CPUarchitecture)" package).
>
Thanks for that tip, Ray, which I tried.  I can see two possible reasons
for a kernel "wrapper package" (poor as my grasp of what that means is):
1) something that maybe simplifies booting the system if you update 2.4.x
kernels frequently (a symlink sort of thing that always points to the
newest 2.4.x kernel image?); 2) something that could simplify updating
kernels via apt-get (or 3] both of the above?).  Can you offer any
further input on whether 1 or 2 is correct, if I'm way off the mark in
those guesses, or some of your own, more educated guesses?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
