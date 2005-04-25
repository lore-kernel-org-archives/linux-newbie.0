From: Ray Olszewski <ray@comarre.com>
Subject: Re: filtering .mp3 packets
Date: Mon, 25 Apr 2005 09:56:59 -0700
Message-ID: <426D215B.30001@comarre.com>
References: <fc.004c4e00007a2960004c4e00007a2960.7a296f@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00007a2960004c4e00007a2960.7a296f@palmertrinity.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

William Stanard wrote:
> We've been having some difficulty finding the vocabulary to describe
> filtering content (for example .mp3 files) over TCP-IP. We would like to
> set up our Linux server to do some "trapping" of packets containing .mp3
> files with an eye toward using Linux enabled routing to clean our campus
> of an overwhelming dose of music downloads and trading. To do this
> exploration, I need to know what I should call the process I'm trying to
> perform. Any vocabulary that you can suggest?

What you are seeking to do is application-level (or content-based) 
packet filtering, and the stock Linux routing capabilities are not 
really the way to go about it.

What you can do at the conventional level of iptables rules is block 
specific ports and IP addresses. This capability might, when combined 
with some traffic analysis, allow you to interfere with the downloads in 
question ... but P2P apps these days are pretty smart about working 
around firewalls, often opting to use port 80 (www) to disguise their 
nature.

To do content-based filtering, you need to do one of the following things.

1. Force LAN hosts to go through a proxy server to access the standard 
services (smtp, www, and the like), while blocking ALL direct access to 
the Internet. Then configure the proxy server to analyze and filter 
content. Offhand, I don't know of an Open Source proxy server that will 
do the sort of filtering you want ... partly because I don't *quite* 
know what you want, beyond your example ... but you might want to see if 
either "filterproxy" or "middleman" can be adapted to your needs.

2. Add application-level filtering to the iptables capability, probably 
by dropping in some sort of userspace module that the router uses to 
process all packets. Take a look at FireFlier 
(http://fireflier.sourceforge.net/index.html) for some help here. Its 
documentation is a bit sketchy, but it does support app-level filtering 
in userspace, so it might be adaptable to your needs.

(BTW, please remember that app-level filtering in userspace is a bit 
more demanding of CPU time thansimple kernel-level filtering ... if your 
router is an old, slow Linux host like mine is, you may need to upgrade it.)

Even if you do something like either of these things, remember that 
there willl be workarounds (using password-protected zip'd files, or 
using https, for example) that will interfere with app-level filtering. 
And also remember that a server can only filter what it sees ... so 
controls at your router can restrict downloads from, and uploads to, the 
Internet, but not LAN-to-LAN exchanges ... which may be what you meant 
by "trading". (I suspect there are ways to do this too, but they are not 
immediately obvious to me and they probably impose significant LAN 
overhead.)

If you move ahead on this project, please don't hesitate to pose more 
specific questions. I'd be curious to read what you come up with as a 
solution here ... this sort of filtering seems to be an underaddressed 
issue in Linux development.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
