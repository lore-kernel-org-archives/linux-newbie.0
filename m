From: ichi@ihug.co.nz
Subject: Re: XFree86 crash log
Date: Thu, 14 Nov 2002 13:14:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD3A19C.7E0838B3@ihug.co.nz>
References: <5.1.0.14.1.20021112183621.02114990@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Ray Olszewski wrote:
> 
> 4. Does your kernel support Unix domain sockets? 
> If you are using any stock Slackware kernel, it probably 
> supports Unix sockets. 

James was using the stock lowmem.i kernel from Slackware.
-------------------------------
# Networking options
#
CONFIG_PACKET=y
# CONFIG_PACKET_MMAP is not set
# CONFIG_NETLINK_DEV is not set
# CONFIG_NETFILTER is not set
# CONFIG_FILTER is not set
CONFIG_UNIX=y
# CONFIG_INET is not set
--------------------------------

> If you are using one from BasicLinux ... well, the BasicLinux 
> home page says it supports X installs, so I suppose the kernel 
> includes what is needed 

BasicLinux uses a stock Slackware kernel (bare.i).

> 5. BasicLinux has a page that lists the Slackware packages 
> needed to run X.  Did you include everything this page says 
> to install?

Sorry for the confusion.  BasicLinux is not the problem.  James
is running pure, unadulterated Slackware 8.1.  Yes, it is a
mini-installation (26mb of HD space) -- but it's 100% Slackware.

The confusion arises because the author of BasicLinux (who is
a strong supporter of using Linux on old PCs) produced a special 
installation routine to enable old PCs to install Slackware 8.1.  
The normal installation routine for Slackware 8.1 requires 16mb 
RAM.  The special installation routine runs happily on a system
with 4mb RAM and 80mb HD.
-------------------------------------------
http://www.volny.cz/basiclinux/slack81.html
-------------------------------------------
Although this installation package for Slackware 8.1 is stored
at the BasicLinux site, it is quite different from BasicLinux.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
