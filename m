From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: mac-ip pairs
Date: Fri, 20 Jun 2003 08:12:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030620075208.02040d28@celine>
References: <200306201017.22868.g38@rdsbv.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306201017.22868.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:17 AM 6/20/2003 +0300, Petre Bandac wrote:
>hello
>
>I have a small problem:
>
>a network (something about half of a C class IPs) and some users who I'd like
>to "stick" them to only one IP; half of the computers get their IPs via dhcp,
>the others are fixed.
>
>I was thinking of mixing arp -f /etc/ethers with some iptables rules, but the
>question which arises is if I "stick" the mac on the ip, or the ip on the
>mac, i.e. if the mac X is tied to the IP Y, will the mac X be able to have
>the IP Z (since the IP Y won't allow itself to another ethernet)
>
>hope I'm not too ambiguous,

Let's see if you are. I think I know what you are asking, but I am not sure.

I think your situation is this: you have a network on which some of the 
hosts get their addresses by DHCP assignment, and other hosts have static 
IP addresses assigned (not through DHCP). You wish to restrict the static 
hosts to using the specific IP addresses you have assigned to them, at 
least for Internet access.

Of course, one of these static-address machines can "have" any address it 
pleases (or, more exactly, any address that any user of that machine who 
knows how to set static addresses chooses to assign). What you have is the 
ability to restrict what the computer can actually do.

The "arp" approach you mention will work to associate the Ip addresses with 
particular MAC addresses, but by itself, it will not prevent one of these 
hosts from using a different IP address (since any host can have multiple 
IP addresses on one MAC address ... that's what proxy-arp does, to pick one 
familiar example). If you ran this command frequently, it would wreak havoc 
with any attempt to misappropriate one of the addresses in it (it would 
keep switching the arp assignment back to the "right" computer), but it 
would not inhibit use of any IP address that is not in /etc/ethers .

The "iptables" approach is more promising, I think. Since iptables rules 
can match on both IP address and MAC address, you can ALLOW only traffic 
that has the right combinations. This will not completely eliminate address 
misappropriation, but it can be used on your (Linux) router to prevent 
reconfigured systems  from accessing the Internet, and on your (Linux) 
servers to prevent them from accessing the services those servers offer.

Yours are both passive solutions. An alternative is to apply an active 
solution. Set up a system that pings the LAN frequently (every minute -- 
you'll want to use a faster app than standard ping for this; there are some 
around ... fping, I think, and you might be able to find gatping, which I 
wrote a couple of years ago but released only informally), checks the 
pairings against a list of "authorized" matches, and DENYs all traffic from 
any IP address found to be on the wrong MAC address. (Obviously, I'm 
skipping details here, just outlining the idea.) This would have the added 
advantages of (a) logging any misappropriations, (b)possibly of detecting 
them before first use, and (c) detecting and logging them even if they do 
not get used to access Linux servers (which might matter if there are many 
Windows hosts on the LAN). Since I don't know *why* you want to impose the 
restriction, I do not know if this added capability is of value or not.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
