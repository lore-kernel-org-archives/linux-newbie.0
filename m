From: caszonyi@rdslink.ro
Subject: Re: kernel recompile quests; was Re: help on dmesg output
Date: Tue, 12 Apr 2005 22:45:37 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504122240060.608@grinch.ro>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
 <Pine.LNX.4.60.0504112155400.1512@grinch.ro> <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
 <Pine.LNX.4.60.0504120028150.1855@grinch.ro> <Pine.LNX.4.61.0504120849430.5717@localhost.localdomain>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504120849430.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tue, 12 Apr 2005, James Miller wrote:

> On Tue, 12 Apr 2005 caszonyi@rdslink.ro wrote:
>
>
> Modules often require "helper modules" or have other modules associated with 
> them. I assume such modules need to be incorporated into the kernel one 
> compiles as well, or at least made available as modules (make modules, make 
> modules-install as I'm recalling). How does one determine exactly which 
> modules are going to be needed for which other modules? Is it strictly trial 
> and error?
>

Usually there is a file called modules.dep in /lib/modules/<kernel 
version>/modules.dep which lists the dependencies between modules

> On the initrd: I understand this is optional. But I don't very clearly 
> understand why Debian boots this way. What are the pros and cons of using/not 
> using an initrd? Is it absolutely necessary in some cases? If one is 
> currently using an initrd, how can one configure their system (assuming a 
> kernel recompile) to boot without one? Is it unwise to depart from the 
> "canonical" Debian practice (given that this is a Debian install) in the case 
> of an initrd?
>

The pros of initrd are that you build a lot of modules with a very generic 
kernel and you can use your bootdisk + initrd for a vast number of 
machines.

About how unwise or wise is to use or not use an initrd i cannot give any 
advice ;-)


--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
