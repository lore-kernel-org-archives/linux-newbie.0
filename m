From: Ray Olszewski <ray@comarre.com>
Subject: Re: alternate Debian kernels
Date: Mon, 15 Dec 2003 11:34:30 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031215113111.01f25f98@celine>
References: <Pine.LNX.4.58.0312151246510.603@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312151246510.603@debian-box>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:55 PM 12/15/2003 -0600, James Miller wrote:
>Maybe one of the Debian users on this list can help me understand
>something about the kernels offered on the unstable branch.  Specifically,
>I have a question about 2.4.x kernels.  There are two 2.4.x kernels
>available there, and I'm trying to understand the difference between them.
>One is listed as kernel-image-2.4-(CPUarchitecture), while the other is
>listed as kernel-image-2.4.22-1-(CPUarchitecture).  It's clear what the
>second one is, but what's the first in relation to it?  Is it the 2.4.0
>kernel?

Try "apt-cache show" on one of the "kernel-image-2.4-(CPUarchitecture)" 
packages. You'll see that the description says it is a wrapper package that 
always points (via a dependency) to the corresponding 
"kernel-image-2.4.*-*-(CPUarchitecture)" package (currently a 
"kernel-image-2.4.22-1-(CPUarchitecture)" package).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
