From: chuck gelm <chuck@gelm.net>
Subject: Re: two Ethernet cards in the same machine with xover cable .....
Date: Tue, 23 Mar 2004 18:38:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4060CA85.2020409@gelm.net>
References: <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: RANDAZZO@ddc-web.com
Cc: linux-newbie@vger.kernel.org

RANDAZZO@ddc-web.com wrote:

>All,
>
>This may seem stupidly easy, but please here me out.....
>
>I have 2 pro100 nics (using eepro100 driver)
>
>currently my setup is..
>
>  
>
>>>ifconfig
>>>      
>>>
>eth0	Link encap:Ethernet  HWaddr xx:xx:xx:xx:xx:xx
>            inet addr: 172.172.16.1  Bcast:172.172.255.255  Mask:255.255.0.0
>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>
>eth1	Link encap:Ethernet  HWaddr yy:yy:yy:yy:yy:yy
>            inet addr: 172.172.16.1  Bcast:172.172.255.255  Mask:255.255.0.0
>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>
>These nics are connected with an RJ-45 crossover cable......
>
>what do I need to do to get ftp communication between these devices.........
>
Hi, Mike:

You need to put them in different machines and give them different
IP addresses.
:-|
HTH, Chuck

>
>Thanks in advance...
>Mike
>
>
>
>
> 
>"This message may contain company proprietary information. If you are not
>the intended recipient, any disclosure, copying, distribution or reliance on
>the contents of this message is prohibited. If you received this message in
>error, please delete and notify me."
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
