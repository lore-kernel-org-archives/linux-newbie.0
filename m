From: Ray Olszewski <ray@comarre.com>
Subject: Re: freesco as dialin server?
Date: Tue, 26 Nov 2002 22:10:28 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021126215930.0211e170@celine>
References: <3DE43D12@mailandnews.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DE43D12@mailandnews.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 11:06 PM 11/26/02 -0500, james miller wrote:
>Dear List:
>
>This is a preliminary inquiry regarding the freesco router and the 
>possibility
>of using it as a dialin server, since I am considering getting DSL but still
>need dialin access to the 'net from another local number.

I haven't looked at freesco specifically in a couple of years ... but what 
you want to do is certainly within the capabilities of Linux-based routers 
generally. I did something like it (providing 8 ppp dialin lines to a LAN 
and, through that LAN, out to the Internet) back in 1994, using Slackware 
and Linux kernel 1.something. The documentation on this sort of setup is 
sketchy, but ppp is a peer-to-peer protocol, so the same pppd that is 
commonly used to dial in to ISPs can be used to make a ppp "server" (I put 
it in quotes because ppp really is peer to peer, not client-server, but 
people commonly call the end of a ppp connection that waits for connections 
a "ppp server" and the end that dials a "ppp client").

Were I doing this today, I would use either a full-strength Linux distro 
(in my case Debian, but really any of the majors will handle this) or a 
specialized distro that is a bit less out of the Linux mainstream than 
freesco (for example, one of the LEAF variants. probably Oxygen). But 
that's partly due to my not being current with freesco. Back when I did it 
before, the "ppp server" and the LAN's gateway (router) to the Internet 
were separate machines on the same LAN, but you can probably have one host 
fill both roles with just a bit of effort. You'll need considerable 
attention to security, of course.

>The router is
>envisioned to resolve a dilemma with which I'm confronted regarding dialin
>internet service: since the companies in my area that offer dialin service
>either have problematic time constraints or very slow speeds, I'm being 
>forced
>to consider DSL. Problem is, at one of the two numbers from which I need 'net
>access, DSL service is not offerred. Therefore, I am considering getting DSL
>at my home, and using freesco (or some other routerish OS) as to serve the 
>DSL
>connection to computers in my home. It also seems to me from the freesco
>documentation that one can dial in to a freesco router/server and join the
>intranet. It therefore stands to reason that I could get the web 
>connection to
>be served to me at work over a dialin connection - becoming, in effect, my 
>own
>ISP to myself. Any comments on this sort of scheme from anyone?
>Recommendations of alternative routers? Pitfalls to beware of?
>
>As usual, I need to state that my understanding of these matters is a bit
>sketchy. I'm trying, at this point, to get a better idea of what's involved
>and thus hoping to arrive at a decision about whether I can devote the time
>and effort to such a project.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
