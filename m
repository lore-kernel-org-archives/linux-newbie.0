From: James Miller <jamtat@mailsnare.net>
Subject: Re: dmesg output: impending hardware failure?
Date: Wed, 17 Aug 2005 11:59:10 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0508171138430.4988@localhost.localdomain>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain>
 <43012AC7.2000606@gelm.net> <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain>
 <430366EA.5010303@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <430366EA.5010303@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 17 Aug 2005, Ray Olszewski wrote:

> I can only offer a guess, James, but the guess is that this report is nothing 
> to worry about. I guess this from a look at the details.

Thanks for your input, Ray. I was beginning to think maybe it was not a 
matter for much concern, so it's good to hear some verification from 
someone more knowledgeable.

> All that said, I still don't know why the new kernel reports these seek 
> failures but the old one doesn't. Since you use pre-compiled kernels, and I 
> don't even know where you get them from (I've never heard of "the Synaptic 
> equivalent" to a Debian dist-upgrade ... does this just mean you work at 
> Synaptic and use a local cache in a proxy server?), they are a black box to 
> both of us. If the drive is 4 years old, it may have been partitioned under a 
> 2.4.x kernel (conceivably even a 2.2.x. kernel), so these reports could just 
> reflect improvements in the IDE code over time.

Yep, I'm pretty sure I partitioned this drive using a 2.4.x kernel. It's a 
Debian unstable netinst system, pretty much starting from scratch. On the 
Synaptic issue: you are undoubtedly aware that Synaptic is a graphical 
frontend for apt, I suppose? On the Synaptic menu bar, there are items 
representing command-line actions: the "reload" button likely invokes 
apt-get update, for example, while hitting the "mark all" button, followed 
by clicking the "apply" button, results in what must be the commandline 
equivalent of apt-get dist-upgrade. I've got the stock Debian repositories 
stipulated in /etc/apt/sources.list, so the pre-compiled kernels are 
coming from there. I really didn't want an updated kernel since I run 
vmware and have to recompile modules for it every time a new kernel comes 
along, and I'm not entirely sure how I got the kernel. I've looked at 
packages on the system and can't see where new 2.6.x kernels are supposed 
to be part of my dist-upgrade, but that's another issue. Anyway, good to 
get your take on the hard drive errors.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
