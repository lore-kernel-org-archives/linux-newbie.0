From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 19:37:23 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0211231926380.15555-100000@ppg_penguin.linux.bogus>
References: <5.1.0.14.1.20021123085232.02126060@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021123085232.02126060@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray, thanks for this advice.

On Sat, 23 Nov 2002, Ray Olszewski wrote:

> Ken -- You may already have gotten the help you need from John Kelly's 
> response. The few details I can add may or may not be helpful.
> 
> 1. You are being assigned a private-range address (10.b.c.d) by your ISP. 
> This means one of two things:
> 
>          A. The ISP NAT's these addresses upstream of you.
>          B. The ISP assigns these addresses temporarily, until you register 
> with the ISP.
> 
> I'm guessing that you are in situation B, and you need somehow to register 
> your set-top box (or maybe your NIC MAC address) to get a real connection. 
> More on that later.
>
 I tend to agree.
 
> 2. That you cannot ping your default gateway may not be significant, since 
> ISP's often disable ping responses from their routers. This makes user-end 
> troubleshooting harder, but I've never noticed that ISPs are much concerned 
> about helping their customers do anything that is not a vanilla connection. 
> I'd put this part of the analysis aside for now. (Oh, one question ... is 
> the "mybox" that you are pinging *from* the router itself or a LAN 
> workstation? If the latter, you won't be able to ping through the router, 
> except to its own external interface address, until you install an iptables 
> ruleset that NATs the LAN ... just enabling ip_forwarding is not 
> sufficient, since outside hosts do not know that your router's external 
> interface address is their route to 192.168.0.0/24 . Since I'm not familiar 
> with LFS-3.3, specifically how it sets up iptables rulesets, I can't 
> suggest details here.)
>

 I've been using ssh to access the firewall from my internal network
when I tried pinging. I might have to come back to the iptables setup
later (actually, it's based a ruleset from Linux Journal that I've been
using for dial-up connections, with adaptations). LFS itself is as
little (or as much) as you want, and I don't want a lot on that box. 
  
> 3. The approach you seem to have arrived at ... put the NIC in a Windows 
> box; register the NIC; move the NIC to your Linux router ... is the good, 
> conservative approach to making the connection work (assuming you are in 
> situation 1B, not 1A). You could also try connecting via your ISP's 
> preferred browser (IE, no doubt) running on a NAT'd Windows or Mac host on 
> the LAN. If you do this right, the connection should look to the ISP as 
> though it were coming from the router's IP and MAC address (unless the ISP 
> specifically has anti-NAT stuff in its system, an unlikely possibility ... 
> but one that will cause bigger problems than we've considered so far if 
> they somehow do it).

 Thanks, I think this is what I did from the iBook. Trouble is, it fails
to negotiate an ip address from the server (either it ignores the
specification to use my `router', or it's asking the firewall for the
address.) It then falls back to trying ping (but doesn't specify who or
where). Hence my original question.

 Looks like I've got to dig out an old Win98 CD. Oh, the shame of it
(and of using a "conservative" solution, too) <grins>. Thanks.

Ken

-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
