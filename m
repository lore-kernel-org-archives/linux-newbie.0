From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netconfig Fail
Date: Thu, 06 Oct 2005 00:33:04 -0700
Message-ID: <4344D330.2050005@comarre.com>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051006091512.7dd839e8.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> Slackware 10.1 kernel 2.4.29
> 
> My onboard LAN card on the mobo failed and I had to switch to an external LAN card.
> 
> I disabled in BIOS Ethernet onboard. Then I did netconfig. Slackware found the LAN card I entered all necessary data and the configuration went w/o any errors.

Just to be clear ... the relevant kernel module does identify the card 
and create the eth0 interface. Right? (One way to check: use "ifconfig 
-a", which  will list *all* interfaces, while "ifconfig" by itself only 
lists *configured* interfaces.)

At this point, I'm still uncertain as to whether the kernel module is 
failing to find the NIC, or the NIC is failing to get an IP address.

> However, I cannot connect to the Internet. On booting after the MAC address was found it should produce the the IP address which it does not. It just sits for a while then continues booting. The same happens when I do /etc/rc.d/rc.inet1.

"produce"? Do you mean you get an IP address via DHCP? Via PPPoE? (These 
days, home broadband connections rarely come with static IP addresses, 
so I surmise you don't have one of those rarities.)

In any case, troubleshooting is easier if we know how it is *supposed* 
to work.

> Ifconfig naturally shows no connection just the loop-back.

See above.

> Where is the hitch?

Round up the usual suspects ...

What kernel module is involved?

What happens if you modprobe it from the command line?

Does lsmod show it as loaded?

What happens if you "ifup eth0" from the command line?

> I had no problem in Fedora4 to configure the new Lan card and in the gem Damned Small Linux distro, where I am now, the new LAN card was found w/o me doing anything.

This is all good, since it means that the card should work, and we just 
need to spot the detail where you have (or Slackware has) something 
wrong. It also should eliminate the possibility of MAC-address 
authentication causing a problem.

Is there any possibility of a mechanical problem (a bad cable, say)? 
That is, aside from the distro change, was *everything* else *exactly* 
the same in your Slackware failure as in your Fedora and DSL successes? 
I'm assuming that you ran both other distros on the same system (same 
mobo), not with (say) the same NIC in a different mobo ... but please 
correct me if I've assumed too much here.

What are the details behind your writing above that "I entered all 
necessary data"? Since (apparently) you did not have to enter anything 
in the DSL test, and maybe not in the Fedora test either, this would at 
least appear to be a possible source of differences.

> Help for slackware appreciated.
> 
> Thanks & regards
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
