From: chuck gelm <chuck@gelm.net>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Fri, 31 Dec 2004 14:18:27 -0500
Message-ID: <41D5A603.8080207@gelm.net>
References: <Pine.LNX.4.58.0412300834100.7477@localhost.localdomain> <41D4E124.2030702@gelm.net> <Pine.LNX.4.58.0412310908020.7477@localhost.localdomain>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412310908020.7477@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> On Fri, 31 Dec 2004, chuck gelm wrote:
> 
> 
>>  I have done something like this with a laptop with an 80486dx33
>>with 80 MB of RAM.  I think we can drop the 'paltry resources' theme.
> 
> 
> I meant paltry for a day-to-day usage machine for real-world, productivity
> purposes. I know it will work fine as a sort of router: my own router,
> though it has a slightly faster processor (180Mhz), has only half as much
> RAM.
> 
> 
>>I slightly modified a script I found:
>>newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
>>I recommend that you read the article so you can determine which parts
>>apply to your situation, if any.
>>http://newbiedoc.sourceforge.net/networking/homegateway.html
> 
> 
> Ok. Thanks for the link. I'll look it over.
> 
> 
>>So,
>>What is the kernel version of your Debian-variant-DSL?
>>  (I want to determine whether you can use IPCHAINS or IPTABLES.)
> 
> 
> 2.4.22.
> 
> 
>>&, just for grins;
>>What is the model number of your LinkSys AP?
> 
> 
> WAP 11 ver 2.8. It's not the one that runs Linux, if you're wondering
> about that.

  Thanks. Oh. Hmmm, I've never heard of a wireless access point device
that runs linux. :-|
> 
> 
>>How big is your hard drive?
>>  (I want to determine if you can run a more mature distribution
>>   as I run Slackware v9.1, kernel 2.4.22, in my 80486 laptop.)
> 
> 
> 1.6GB, if I recall correctly.  <snip>

  Okay, you are not limited in your choice of kernel or distribution.
You are limited in RAM, so, IMHO, you are limited in your choice of GUI.
(desktop environment and Xwindow server).  None of which interferes with
its ability to function as a 'gateway' and/or 'router', but only in your
choice of GUI application with which to configure the laptop.

  You can use IPTABLES with kernel 2.4.x, so that article may be all the
information you need.

Good luck, Chuck

> James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
