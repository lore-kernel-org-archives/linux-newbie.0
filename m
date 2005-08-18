From: James Miller <jamtat@mailsnare.net>
Subject: Re: dmesg output: impending hardware failure?
Date: Wed, 17 Aug 2005 20:41:57 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0508172028310.4988@localhost.localdomain>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain>
 <43012AC7.2000606@gelm.net> <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain>
 <430366EA.5010303@comarre.com> <Pine.LNX.4.61.0508171138430.4988@localhost.localdomain>
 <4303D0FB.3040003@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4303D0FB.3040003@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 17 Aug 2005, Ray Olszewski wrote:

> How did you install the kernel? That is, did you install the general 2.6 
> package for your architecture (kernel-image-2.6-386, for example) or did you 
> install a specific kernel minor version (for example, 
> kernel-image-2.6.8-2-386)?

I believe I specified a particular kernel for my architecture -- 
kernel-image-2.6.10-1-686 or something very similar. I've double checked, 
and no kernel-image-2.6-anything is installed. At least Synaptic shows 
none installed. kernel-kbuild-2.6-3 is the only thing similar-looking 
that's installed. Unstable is in a particularly unstable state at the 
moment--as you likely know--since a new release was done not long ago. 
I've been making the working assumption that the kernel oddness I'm seeing 
is related to this.

There's been a noticeable decrease in performance on this system with this 
2.6.12 kernel, so I'll likely be getting rid of it. I'm looking at dummy 
ways of building a kernel: do you have any experience with kernel-package? 
It looks like it could make the process a bit less daunting to a relative 
neophyte like me.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
