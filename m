From: RANDAZZO@ddc-web.com
Subject: RE: connecting two nics.... [bcc]
Date: Tue, 9 Mar 2004 18:07:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B16FE7@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com, RANDAZZO@ddc-web.com
Cc: linux-newbie@vger.kernel.org

I want to be able to communicate completely...

ping, socket calls, udp, tcp, etc.....

I was just using ping as a simple example.....

even if I put the cards on the same network.......

eth1 = 100.100.1.1 mask=255.255.255.0
eth2 = 100.100.1.2 mask=255.255.255.0

the command ping 100.100.1.1 will go out of 100.100.1.1 not 100.100.1.2?

I havent tried socket calls yet because I assumed if I couldn't get ping
to work, why try anything else......

Mike

ALL INFORMATION IN THIS EMAIL IS PUBLIC!

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: Tuesday, March 09, 2004 5:58 PM
To: RANDAZZO@ddc-web.com
Cc: linux-newbie@vger.kernel.org
Subject: RE: connecting two nics.... [bcc]


At 05:29 PM 3/9/2004 -0500, RANDAZZO@ddc-web.com wrote:
>I have tried putting the nics on the same network, with the same results...
>
>the ping -I command works fine, but what about when I open a socket and do
>UDP/TCP transfers?

What about it?

Your entire prior question was focused around the result of ping and its 
diagnostics. So I gave you an answer for pinging, one that (apparently) 
works there ... or were you saying you already knew that answer but didn't 
mention it?

As the ping answer illustrates, the solution here is an application-level 
solution. If you want help, describe your problem in more detail. How are 
you opening a socket, for example?

Putting the two NICs on the same network is not a general solution to your 
problem, nor did I offer it as one. It is the simple solution to making 
sure each of the two interfaces has a route to the other ... your fiddling 
with the routing table, if done correctly, would serve the same purpose, a 
bit more awkwardly.

If you don't want to, or can't, go into details on a public list, or even 
privately with someone who will not accept any proprietary information from 
you  ... then look at the source code for ping, see how it implements the 
-I flag, and do the same thing in whatever setting you are working.

Oh yes ... I give free advice only in the context of public lists like 
linux-newbie, so I'm cc'ing the list.


 
"This message may contain company proprietary information. If you are not
the intended recipient, any disclosure, copying, distribution or reliance on
the contents of this message is prohibited. If you received this message in
error, please delete and notify me."

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
