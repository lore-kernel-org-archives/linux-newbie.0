From: James Miller <jamtat@mailandnews.com>
Subject: RE: stopping diald
Date: Wed, 12 Mar 2003 12:38:28 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0303121229510.18544@homenet>
References: <5.1.0.14.1.20030310084927.01e7ade0@celine>
 <5.1.0.14.1.20030309081846.01e7aab8@celine> <Pine.LNX.4.53.0303081157280.18544@homenet>
 <5.1.0.14.1.20030309081846.01e7aab8@celine> <5.1.0.14.1.20030310084927.01e7ade0@celine>
 <5.1.0.14.1.20030310110219.01e7b258@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030310110219.01e7b258@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On Mon, 10 Mar 2003, Ray Olszewski wrote:
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
Thanks for the clarification, Ray. I do need NAT, since I have a dialup
connection that needs to be shared, on occassion, by 2 different machines
on my planned LAN. The need to decipher ipchains/iptables stil stands, it
seems.

On Tue, 11 Mar 2003, ichi@ihug.co.nz wrote:
>
> I'll try to restate what Ray is saying in a different way.
> The ppp connection is runs on one computer (let's call it
> the gateway).  All other computers on the network route their
> external traffic to the gateway.  When the gateway receives
> such traffic it automatically routes it to the ppp connection.
> The ppp connect is started and stopped by the gateway machine.
> None of the other computers on the the network have any control
> over it (unless they telnet to the gateway and login as a user).
> The way diald (and similar) operate is to lurk in the background
> on the gateway computer and monitor traffic.  When outbound
> traffic arrives at the gateway from the internal network, it
> dials the ISP automatically (unless it is already connected).
> When there is no traffic (for a specified number of minutes)
> on the ppp connection it terminates the connection.
>
> Let me emphasize:  diald runs only on the server.  None of the
> other computers on the network knows it is there; none of them
> has any control over it.  They simply route their traffic to the
> gateway address -- what happens after that is a mystery to them.
>
I think I get it now. That makes sense. Thanks for the additional
clarification, Steven.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
