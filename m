From: James Miller <jamtat@mailsnare.net>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Fri, 31 Dec 2004 09:24:03 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412310908020.7477@localhost.localdomain>
References: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
 <41D4E124.2030702@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41D4E124.2030702@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 31 Dec 2004, chuck gelm wrote:

>   I have done something like this with a laptop with an 80486dx33
> with 80 MB of RAM.  I think we can drop the 'paltry resources' theme.

I meant paltry for a day-to-day usage machine for real-world, productivity
purposes. I know it will work fine as a sort of router: my own router,
though it has a slightly faster processor (180Mhz), has only half as much
RAM.

> I slightly modified a script I found:
> newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
> I recommend that you read the article so you can determine which parts
> apply to your situation, if any.
> http://newbiedoc.sourceforge.net/networking/homegateway.html

Ok. Thanks for the link. I'll look it over.

> So,
> What is the kernel version of your Debian-variant-DSL?
>   (I want to determine whether you can use IPCHAINS or IPTABLES.)

2.4.22.

> &, just for grins;
> What is the model number of your LinkSys AP?

WAP 11 ver 2.8. It's not the one that runs Linux, if you're wondering
about that.

> How big is your hard drive?
>   (I want to determine if you can run a more mature distribution
>    as I run Slackware v9.1, kernel 2.4.22, in my 80486 laptop.)

1.6GB, if I recall correctly. It's currently running Debian unstable, for
the most part. DamnSmallLinux is based on Knoppix, which is based on
Debian. After I did the install-to-hd routine, I added the unstable Debian
repositories to sources.list and did dist-upgrade, so alot of the software
on it is fairly cutting-edge. I had to leave the DSL kernel in place, and
some of the stuff is DSL-specific and must be dealt with carefully: it
uses a specially-compiled Xvesa rather than XFree86, for example, and the
display can get easily hosed by apt-get(ting) the wrong X package(s).

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
