From: chuck gelm <chuck@gelm.net>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Fri, 31 Dec 2004 00:18:28 -0500
Message-ID: <41D4E124.2030702@gelm.net>
References: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> I'm trying to make a temporary internet connection for a friend who's
> moving into and apt where they provide a wireless connection. Since I'm
> not sure whether she'll eventually buy a new computer or simply add
> necessary parts (mainly wireless adaptor) to some older machine I have, I
> want to expend a minimal amount of effort on this using stuff I have
> around that's pretty much already set up. One thing I have around is an
> old laptop with both wired and wireless cards (PCMCIA) that runs a Debian
> variant (DamnSmalLinux). Since it's got pretty paltry resources (P1 120,
> 48MB RAM), I'm thinking maybe I could set it up as a sort of gateway to
> route the wireless signal the apt complex offers: eth1 gets on the
> wireless network and the computer routes the signal out eth0. To eth0 I
> hook another desktop computer I have via crossover cable which has a wired
> NIC
<snip>
Dear James:

  I have done something like this with a laptop with an 80486dx33
with 80 MB of RAM.  I think we can drop the 'paltry resources' theme.
I slightly modified a script I found:
newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
I recommend that you read the article so you can determine which parts
apply to your situation, if any.
http://newbiedoc.sourceforge.net/networking/homegateway.html

So,
What is the kernel version of your Debian-variant-DSL?
  (I want to determine whether you can use IPCHAINS or IPTABLES.)

&, just for grins;
What is the model number of your LinkSys AP?

You need to determine how to access the local wireless network.

How big is your hard drive?
  (I want to determine if you can run a more mature distribution
   as I run Slackware v9.1, kernel 2.4.22, in my 80486 laptop.)

HTH, Chuck

> Input on these matters will be appreciated.
> 
> Thanks, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
