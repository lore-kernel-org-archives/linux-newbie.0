From: glenn <genright@paradise.net.nz>
Subject: Re: stopping diald
Date: Tue, 11 Mar 2003 09:17:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303110917.27601.genright@paradise.net.nz>
References: <5.1.0.14.1.20030310084927.01e7ade0@celine> <5.1.0.14.1.20030310110219.01e7b258@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030310110219.01e7b258@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

On a slightly different note, Ive been reading an LDP book called 

Securing & Optimizing Linux - The Ultimate Solution.pdf

Its quite long and geared towards server setups, bases around the Redhat 
install, but has lots of explanations and descriptions of network setups 
including iptables

get it at http://www.tldp.org/guides.html


On Monday 10 Mar 2003 7:08 pm, Ray Olszewski keyed in:
> At 11:52 AM 3/10/2003 -0600, James Miller wrote:
> [...]
>
> >But once connected, the gateway needs to be able to pass packets
> >designated for the computer on the LAN that requested the connection,
> > right? For that, I understood I'd need something like ipchains or
> > iptables - to route packets to where they're supposed to go on my LAN.
>
> Actually, it depends, but the likely answer in *your* case is YES. iptables
> (and ipchains) does firewalling, not routing as such. For *simple* routing,
> all you need to do is turn routing on in the kernel and provide a suitable
> routing table, neither of which involves iptables or ipchains. You need
> iptables (or ipchains an some related apps) if you need to --
>
>          A. Have all LAN hosts share a single public IP address, which you
> do via Network Address Translation (NAT), also called IP Masquerading in a
> Linux setting.
>          B. Run any servers on a NAT'd LAN that offer services to the
> outside (as though they were located at the public IP address), using port
> forwarding.
>          C. Provide any firewall protection to your LAN (always a good
> idea, and especially so if your LAN hosts use public IP addresses).
>          D. Provide various other packet-processing functionality not
> commonly used on dial-up connections from homes or small businesses.
>
> The reason I say YES is likely is because dial-up connections almost always
> use NAT.
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
