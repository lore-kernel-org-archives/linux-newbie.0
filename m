From: Ray Olszewski <ray@comarre.com>
Subject: RE: connecting two nics.... [bcc]
Date: Tue, 09 Mar 2004 14:57:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040309144617.01febc60@celine>
References: <89760D3F308BD41183B000508BAFAC4104B16FE2@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B16FE2@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: RANDAZZO@ddc-web.com
Cc: linux-newbie@vger.kernel.org

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



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
