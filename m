From: James Miller <jamtat@mailsnare.net>
Subject: kernel recompile quests; was Re: help on dmesg output
Date: Tue, 12 Apr 2005 09:04:20 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504120849430.5717@localhost.localdomain>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
 <Pine.LNX.4.60.0504112155400.1512@grinch.ro> <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
 <Pine.LNX.4.60.0504120028150.1855@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504120028150.1855@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 12 Apr 2005 caszonyi@rdslink.ro wrote:

> I'm a slackware user and usually compile the kernel myself so what i sugest 
> to you is to compile the kernel yourself (if know how to do it) and put the 
> modules for your sound card in kernel without using modules
> for sound to see if there's a difference. But taken into account that
> debian is using an initrd to boot the system this could be quite a task.

There are directions for doing this that cover generating an initrd. 
Though I'd like to avoid compiling my own kernel, I have no doubt I could 
do it, given enough time and ready availablility of necessary information 
and help. I have done it at least once previously. On that note:

Modules often require "helper modules" or have other modules associated 
with them. I assume such modules need to be incorporated into the kernel 
one compiles as well, or at least made available as modules (make modules, 
make modules-install as I'm recalling). How does one determine exactly 
which modules are going to be needed for which other modules? Is it 
strictly trial and error?

On the initrd: I understand this is optional. But I don't very clearly 
understand why Debian boots this way. What are the pros and cons of 
using/not using an initrd? Is it absolutely necessary in some cases? If 
one is currently using an initrd, how can one configure their system 
(assuming a kernel recompile) to boot without one? Is it unwise to depart 
from the "canonical" Debian practice (given that this is a Debian install) 
in the case of an initrd?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
