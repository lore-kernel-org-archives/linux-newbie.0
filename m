From: Ray Olszewski <ray@comarre.com>
Subject: Re: two Ethernet cards in the same machine with xover cable
  .....
Date: Tue, 23 Mar 2004 18:24:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040323181722.01ef6c20@celine>
References: <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD>
 <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD> <4060CA85.2020409@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4060CA85.2020409@gelm.net>
References: <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD>
 <89760D3F308BD41183B000508BAFAC4104B17026@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:38 PM 3/23/2004 -0500, chuck gelm wrote:
>RANDAZZO@ddc-web.com wrote:
>
>>All,
>>
>>This may seem stupidly easy, but please here me out.....
>>
>>I have 2 pro100 nics (using eepro100 driver)
>>
>>currently my setup is..
>>
>>
>>
>>>>ifconfig
>>>>
>>eth0    Link encap:Ethernet  HWaddr xx:xx:xx:xx:xx:xx
>>            inet addr: 172.172.16.1  Bcast:172.172.255.255  Mask:255.255.0.0
>>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>>
>>eth1    Link encap:Ethernet  HWaddr yy:yy:yy:yy:yy:yy
>>            inet addr: 172.172.16.1  Bcast:172.172.255.255  Mask:255.255.0.0
>>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>>
>>These nics are connected with an RJ-45 crossover cable......
>>
>>what do I need to do to get ftp communication between these devices.........
>Hi, Mike:
>
>You need to put them in different machines and give them different
>IP addresses.
>:-|
>HTH, Chuck

Well, Mike, you see what you get when you keep asking the same question 
over and over, in increasingly vague terms.

Since I remember what your actual, original question was, I suggest you try 
what I suggested back then -- look at the source code for ping 
(specifically for a version of ping that implements the -I flag) and see 
how it does it. I just did that for the stock ping that Debian distributes 
(in netkit-base). It uses the setsockopt() call to assign to its socket an 
a.b.c.d value contained a struct in_addr called ifaddr. This seems to force 
the packets that ping sends to go out the specific interface you specify on 
the command line, rather than following the routing table.

This is *probably* what you need. The source provides what looks to me like 
a good example, and the relevant man pages should fill in the rest.

Oh, Chuck is right, though, that the two interfaces still do need distinct 
IP addresses ... but I assume that part was just a typo in your message.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
