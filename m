From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 3Com NIC Driver?
Date: Fri, 28 May 2004 07:56:57 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405280756.57985.pa3gcu@zeelandnet.nl>
References: <20040526143311.GA790@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040526143311.GA790@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Wednesday 26 May 2004 16:33, Hal MacArgle wrote:
> Greetings: I made the, probable, mistake of buying a 3Com 3C900B-TPC
> PCI BNC NIC discovering that the module automatically installed by
> Slackware 9.0, 2.4.20 - 3c59x.o - does not ping.. Checking the Web I
> find that 3c59x.o is for the 3C900 (no suffix) models and that I may
> need 3c90x.o instead..

AFAIK that nic may have needed a module called 3c90x back in 2.0 and 2.1 
kernels, but according to google it now uses the 3c9x module.

> Downloaded the source for that but it wont compile under Slack9.0..
> An attempt to -f (force) using a pre-compiled version didn't work
> either..
>
> I may be stuck but was wondering if someone may have run into this
> and solved the problem, and/or has a module compiled for 2.4.20..

Does modprobe return an error when loading the module, the module in the 
bare.i kernel should do ok.
If there is no error what does 'ifconfig eth0' say. (presuming its the first 
nic of course).
What does the command 'route -ne' say.?

Also another helper could be 'mii-tool' (to see the nic's status).

>
> Rather than go into further details of what I did, suffice it to say
> that I swapped a RealTec NIC into the same PCI slot, and it worked
> perfectly with the ifconfig and route add entries, so I must presume
> the cables, etc are OK.. dmesg listed the 3Com NIC, with the same
> IRQ# and Port# that were assigned to the RealTec NIC..
>
> Appreciate and TIA.
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
>
> 	     Anyone can pile complexity upon complexity;
>                   only a genius can truly simplify..

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
