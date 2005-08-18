From: Ray Olszewski <ray@comarre.com>
Subject: Re: dmesg output: impending hardware failure?
Date: Wed, 17 Aug 2005 17:06:19 -0700
Message-ID: <4303D0FB.3040003@comarre.com>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain> <43012AC7.2000606@gelm.net> <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain> <430366EA.5010303@comarre.com> <Pine.LNX.4.61.0508171138430.4988@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0508171138430.4988@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

James Miller wrote:
[...]
> On 
> the Synaptic issue: you are undoubtedly aware that Synaptic is a 
> graphical frontend for apt, I suppose? 

Actually, no. I always use apt from the command line so I missed this 
front end. oops.
[...]

>I really didn't want an
> updated kernel since I run vmware and have to recompile modules for it 
> every time a new kernel comes along, and I'm not entirely sure how I got 
> the kernel. I've looked at packages on the system and can't see where 
> new 2.6.x kernels are supposed to be part of my dist-upgrade, but that's 
> another issue. 

How did you install the kernel? That is, did you install the general 2.6 
package for your architecture (kernel-image-2.6-386, for example) or did 
you install a specific kernel minor version (for example, 
kernel-image-2.6.8-2-386)?

If you did it the first way, that's why you are getting the updates ... 
every time a new kernel package is introduced, the general packages 
(which Debian calls "transition" packages for reasons I do not know) are 
updated to point to the new version. So apt-get dist-upgrade (maybe even 
an apt-get upgrade) will upgrade this package just like any other.

If you did it the second way, it should not be happening (at least the 
way I understand the apt-get [dist-]upgrade process to work) except when 
a new version of that specific kernel is introduced, so I can't be of help.

If the question doesn't mean anything to you, do an "apt-cache search 
kernel-image-2.6" and look at some of the package descriptions for the 
packages it lists.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
