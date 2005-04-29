From: Ray Olszewski <ray@comarre.com>
Subject: Re: filtering .mp3 packets
Date: Fri, 29 Apr 2005 08:51:19 -0700
Message-ID: <427257F7.7040800@comarre.com>
References: <Pine.LNX.4.21.0504272136300.1172-100000@hestia>	 <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>	 <427030A8.8020604@comarre.com>	 <4b0d6e0d050428200525186e50@mail.gmail.com>	 <42721DEE.7020102@mrmighty.net> <4b0d6e0d0504290824427d7beb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d0504290824427d7beb@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

joy merwin monteiro wrote:
> Hi,
> 
> Was going through lartc HOWTO and it says  that Linux
> can throttle b/w TO certain computers on the network....
> this can assure that all computers get the same amount of b/w
> p2p or no p2p.......
> how 'bout it, setting some amount of bandwidth to each user,
> so he cannot receive or send more than his quota
> and hose the network.......
[...]

Whether this is a good solution or not depends on what the perceived 
problem is.

If the issue is file sharers tying up bandwidth to the Internet, this is 
an excellent approach. It will limit all heavy users indiscriminately, 
though, so someone who (say) does a network-based upgrade of his or her 
Linux host (an "apt-get upgrade" in Debian terms, or the equivalent for 
other distros) or downloads ISO images of Linux-distro CDs will be 
limited in the same way as someone doing a lot of music downloads.

If the issue is preventing use of the Internet connection to download 
unauthorized copies of copyrighted materials, then this approach is 
probably not sufficiently targeted to accomplish what the original 
poster requested. It has the "false positive" problem in spades.

If the issue is inhibiting on-LAN exchanges of unauthorized copies of 
copyrighted materials ... well in that case, this entire discussion's 
focus on solutions at the router level is completely misplaced. If that 
is the perceived problem (in a college setting, I can easily imagine it 
being so, especially of the LAN provides service to dorm rooms), the 
solution needs to involve a heavy dose of on-LAN traffic sniffing. Even 
talking about that approach requires less abstraction from a particular 
LAN implementation then we have had here so far.

Whatever the case, this idea does have the advantage, relative to other 
approaches that have been discussed in this thread, of being based on 
Linux kernel capabilities that actually exist, not extensions that 
"should be easy" but that, in fact, have not been done, or (I suspect) 
even looked at closely by anyone with the technical expertise actually 
to implement them.

BTW, lest I be misinterpreted, I am not trying to present an argument 
for or against actually doing any particular kind of content filtering. 
I am only trying to think aloud about the technical issues involved in 
implementing solutions to various desires for control of network use.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
