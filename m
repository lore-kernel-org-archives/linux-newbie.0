From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: Re: celeron and laptop / Linux
Date: Sat, 15 Jun 2002 11:41:02 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020615020809Z314835-22020+4846@vger.kernel.org>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


> Are there any know issues relating to Linux and the Celeron processor?  I
> do not know what the Celeron on the Intel processors means.  I think it
> has something to do with the internal cache but I am not for sure.  Could
> someone tell me what the celeron processor includes or does not include?

You are correct, the main difference is in the internal cache memory. The 
major difference is in clock-for-clock performance. It would take alot of 
explaining, but put simply clock speed is not the be-all and end-all of CPU 
performance, computers are to complex for one simple detail to be able to 
describe them.

The celeron is a fully-fledged x86 cpu, and as such will run well. If you 
really want performance I beleive you can choose to optimize the kernel for 
celerons if you choose to recompile it. 

> In short, I would like to buy a laptop and  would like to run Linux on
> it.  What concerns should I have with hardware and such? Is there a FAQ
> or a website I should look at?

Hardware should be one of your main concerns. Make sure the onboard video and 
sound hware is supported.

Also make sure that if it has an internal LAN card that it is supported and 
beware internal modems as they are almost invariably winmodems and are 
therefore unsupported (winmodems are not true modems, as they use their own 
proprietary interface instead of the standard one).

A good PCMCIA modem + LAN card which you know to be supported + Laptop with 
hardware known to be supported will serve you well.

Most of the information you will need can be found here
http://www.linuxdocs.org/HOWTOs/Hardware-HOWTO/index.html

(In fact, I'd recommend bookmarking www.linuxdocs.org, there is alot of other 
useful documentation available from there)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
