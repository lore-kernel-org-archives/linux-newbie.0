From: Ray Olszewski <ray@comarre.com>
Subject: RE: connecting two nics.... [bcc]
Date: Tue, 09 Mar 2004 16:07:07 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040309154514.01fed7d8@celine>
References: <89760D3F308BD41183B000508BAFAC4104B16FE7@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B16FE7@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:07 PM 3/9/2004 -0500, RANDAZZO@ddc-web.com wrote:
>I want to be able to communicate completely...
>
>ping, socket calls, udp, tcp, etc.....
>
>I was just using ping as a simple example.....
>
>even if I put the cards on the same network.......
>
>eth1 = 100.100.1.1 mask=255.255.255.0
>eth2 = 100.100.1.2 mask=255.255.255.0
>
>the command ping 100.100.1.1 will go out of 100.100.1.1 not 100.100.1.2?
>
>I havent tried socket calls yet because I assumed if I couldn't get ping
>to work, why try anything else......
>
>Mike
>
>ALL INFORMATION IN THIS EMAIL IS PUBLIC!
[rest deleted]

"communicate completely" is a meaningless specification in this context.

It is not possible to tell the kernel that ALL traffic to 100.100.1.1 has 
to be routed through 100.100.1.2 ... because there will be reply traffic to 
anything that comes in from 100.100.1.2 to 100.100.1.1, and the kernel 
needs to be able to reply directly out the 100.100.1.1 interface. Or at 
least I imagine it does.

So you need to arrange for *specific* traffic to go the "long" way. The way 
to do that is at the application level, for example with the -I option in 
ping. That approach will (or should; have you actually tested it?) allow 
you and your customers to verify that an installed device is working at the 
hardware level, the original problem you posed.

Aside from such testing, I can't really think of a reason why a host would 
want to communicate with itself the "long" way around ... so I'm having a 
hard time trying to translate your general desire to specific things that 
application-level solutions might address. Now we really are, probably, 
getting into the sensitive business aspects of what your company does ... 
but I think that only someone with that information will be able to come up 
with solutions that work for you.

As I said before, you probably want to see how ping implements the -I 
option. I'm a bit rusty on this stuff right now, but I recall that bind() 
allows you to specify a local address to use. This may force the use of the 
indirect interface ... I'm really not certain.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
