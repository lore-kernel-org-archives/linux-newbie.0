From: Ray Olszewski <ray@comarre.com>
Subject: Re[6]: Linux Help
Date: Tue, 20 Jul 2004 08:55:32 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040720083003.01fa4db8@celine>
References: <16636.21568.952345.578826@cerise.nosuchdomain.co.uk>
 <20040720000918.484C.SAVAGE-GARDEN@hanikamail.com>
 <16636.21568.952345.578826@cerise.nosuchdomain.co.uk> <20040720211141.16B3.SAVAGE-GARDEN@hanikamail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040720211141.16B3.SAVAGE-GARDEN@hanikamail.com>
References: <16636.21568.952345.578826@cerise.nosuchdomain.co.uk>
 <20040720000918.484C.SAVAGE-GARDEN@hanikamail.com>
 <16636.21568.952345.578826@cerise.nosuchdomain.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:20 PM 7/20/2004 +0600, Kev wrote:
>Hi guys...

Kev -- It's generally considered discourteous to cross-post messages to 
multiple mailing lists. In this instance, I've removed the linux-admin 
posting from my reply.

>i'm going to do the follwing as a 1st step,
>
>i got a Debian 3 (woody) basic 1 CD and i'm going to have postfix as the
>SMTP relay.... the BOX is a Cyrix 233Mhz with 64MB ram, (Compaq Presario)
>4GB HDD with 2 Lan Cards

If you plan to add Web caching to this system (as you mentioned in an 
earlier emssage), I think you'll find 64 MB to be too little memory for 
good performance.  Everything else should be fine.

In Linux, default installs do NOT automatically enable DMA on hard disks. 
You'll want to do that in an init script (using the app hdparm, from the 
Debian package hdparm).

In my prior reply, I didn't list postfix among the SMTP candidates, but it 
is another good one, so should be fine for your purposes (though I myself 
have no recent experience using it).

>i'm going to install Webmin 1.5, and also DHCP for Debian that comes
>with Debian (on the web site)
>
>do you gusy thing i can do this with a basic Debian instalation or
>should i download all other CD's from the site ?

The usual way to maintain a Debian system after setup is by doing online 
updates. In fact, unless you have an awful Internet connection, that's 
usually the best way to install. That is, get a set of boot floppies (or a 
boot CD, depending on your hardware), install the (very small) Debian base 
from it, then use apt-get to add the packages you need from an online 
repository.

This approach will assure that you get the latest versions of things 
(Debian CDs, like pretty much all Linux distro CDs, aren't updated anywhere 
nearly as regularly as the online repositories). In particular, it will 
makes sure that you get all security upgrades ... VERY important for any 
system that is connected directly to the Internet (as a router is).

>now the commands like
>setup on Redhat dont work, how come ? do i need to install any thing
>else ?

If you are asking why a particular command specific to Red Hat doesn't work 
on a Debian install, then the answer is probably that Debian doesn't 
include the app or the script that implements the command. Not being a Red 
Hat user, I don't know what "setup" on a default RH install does.

If you are asking a more general question, you'lll have to be more clear 
... I have no way of knowing what Debian commands you think are "like setup 
on Redhat". Also what "now" referred to, and if "dont work" means anything 
more subtle than that the command itself is not present.

>leter on i'm going to install a 2nd HDD and Squid and BIND and some AV
>for the email relay, and the RAM to 256MB.

All easy to do using Debian's apt-get and apt-cache package management 
system. (Except I don't know what "some AV for the email relay" means ... I 
can't parse "AV" in this context.) The extra RAM should handle your Web 
caching needs quite nicely. I'm not sure if you'll need the second hard 
disk ... it depends on traffic volumes (SMTP and Web caching).

>if any one can give me the basic how to do this, or a link to some sites
>(Linux for Dummies :-)

The Debian installer itself should walk you through the installation 
process. The big gotcha to watch out for is NIC modules ... you don't say 
what NICs you are using, and stock Debian Linux kernels only support the 
most common ones directly. For others, you'll have to install kernel 
modules ... the installer prompts you to do this, but it doesn't help you 
identify the ones you need.

Last time I checked, the Debian install process still used an old kernel 
(2.2.something). Once you have the system configured, and before you set it 
up to route and firewall, you'll want to update to a newer kernel ... at 
least 2.4.whatever_is_current, maybe even 2.6.something. Unless you want to 
compile you own kernel (a good idea for a router, but maybe not such a good 
idea for a beginner), you apt-get install a suitable kernel-image-* package.


>i know i sound really dumb, well i really dont know much about linux
>sorry !!!


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
