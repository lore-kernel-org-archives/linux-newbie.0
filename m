From: Thorsten Alge <mail@thorsten-alge.de>
Subject: nic wount work with 10baseT-FD
Date: Thu, 17 Mar 2005 17:58:48 +0100
Message-ID: <1111078728.4377.15.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>, alge@ip-exchange.de

Hi,

we have some problems with some of our servers. We have pcchips
motherboard with sis900 nics. the problem is, they are standardly set to
autonegociate and will work with 10mbps half-duplex but we do need
10mbps full-duplex.
we can set it to 10baseT-FD with "mii-tool" or "ethtool" but after
link-loss the will do autonegociate to 10baseT-HD again. we cant ever
change this by hand on a few hundred computers. Is there any way to
configure this on our debian machines by an option
in /etc/network/interfaces (/etc/sysconfig/network/ifcfg-eth0 on suse)
or the sis900 module option? I tried the opt. "media 10baseT-FD" but
that wount work.
on our suse linux boxes it is more difficult. some of these haves a 2.6
kernel and there mii-tool or ethtool wount work too!
has anywone experience with running a 
        debian linux / 2.4.28 kernel
        suse linux 9.0 / 2.4.. kernel
        suse linux 9.1 / 2.6.. kernel
and a static configuration for sis900 on 10mbps and full-duplex
(10baseT-FD)?
if anyone could help,  it would be very nice if you could give me a hint
how to solve this problem - maybe it ist very easy to configure?

Kind regards,

Thorsten 
                                  ,,,,,
                                 ( o ~ )
~~~~~~~~~~~~~~~~~~~~~~~~~~~~.oooO~~(_)~~Oooo.~~~

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
