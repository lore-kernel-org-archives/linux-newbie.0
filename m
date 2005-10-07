From: Peter <heisspf@skyinet.net>
Subject: Re: Netconfig Fail
Date: Fri, 7 Oct 2005 12:23:44 -0400
Message-ID: <20051007122344.3780b5c0.heisspf@skyinet.net>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>
	<4344D330.2050005@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4344D330.2050005@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, chuck@gelm.net
Cc: linux-newbie@vger.kernel.org

On Thu, 06 Oct 2005 00:33:04 -0700
Ray Olszewski <ray@comarre.com> wrote:

> Peter wrote:
> > Hi,
> > 
> > Slackware 10.1 kernel 2.4.29
> > 
> > My onboard LAN card on the mobo failed and I had to switch to an external
LAN card.
> > 
> > I disabled in BIOS Ethernet onboard. Then I did netconfig. Slackware found
the LAN card I entered all necessary data and the configuration went w/o any
errors.
> 
> Just to be clear ... the relevant kernel module does identify the card 
> and create the eth0 interface. Right? (One way to check: use "ifconfig 
> -a", which  will list *all* interfaces, while "ifconfig" by itself only 
> lists *configured* interfaces.)
> 
This is in slackware
 /sbin/ifconfig -a
eth0      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
          BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:12 errors:0 dropped:0 overruns:0 frame:0
          TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:1896 (1.8 Kb)  TX bytes:4720 (4.6 Kb)
          Interrupt:10 Base address:0xec00 

w/o the -a flag above will not show

and in fedora4 w/o -a flag. Note the second line missing in slack.

eth1      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
          inet addr:192.169.232.15  Bcast:192.169.255.255  Mask:255.255.224.0
          inet6 addr: fe80::208:a1ff:fe8c:445a/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:145 errors:0 dropped:0 overruns:0 frame:0
          TX packets:136 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:26493 (25.8 KiB)  TX bytes:11880 (11.6 KiB)
          Interrupt:10 Base address:0xec00


> At this point, I'm still uncertain as to whether the kernel module is 
> failing to find the NIC, or the NIC is failing to get an IP address.
> 
> > However, I cannot connect to the Internet. On booting after the MAC
address was found it should produce the the IP address which it does not. It
just sits for a while then continues booting. The same happens when I do
/etc/rc.d/rc.inet1.
> 
> "produce"? Do you mean you get an IP address via DHCP? Via PPPoE? (These 
> days, home broadband connections rarely come with static IP addresses, 
> so I surmise you don't have one of those rarities.)

Well on booting /etc/rc.d/rc.inet1 gives this output:
dhcpcd: MAC address = 00:08:a1:8c:44:5a
after which it then would show the IPaddress, now it just sits for a while.

In /var/log/debug I found:

 broadcasting DHCP_REQUEST for 192.169.231.250 
Oct  7 07:58:11 Peter dhcpcd[2293]: timed out waiting for DHCP_ACK response 
Oct  7 07:58:11 Peter dhcpcd[2293]: broadcasting DHCP_DISCOVER

whereas when I still could connect with onboard LAN card:

 DHCP_ACK received from  (192.169.224.1) 
Oct  2 12:17:51 localhost dhcpcd[104]: sending DHCP_REQUEST for 192.169.232.12
to 192.169.224.1 
> 
> 
> > Where is the hitch?
> 
> Round up the usual suspects ...
> 
> What kernel module is involved?
> 
> What happens if you modprobe it from the command line?
> 
> Does lsmod show it as loaded?

The LAN card is Davicom Semiconducter Inc, DEC Tulip,
and lsmod shows that those modules for the card are loaded:

/sbin/lsmod
tulip                  39200   0
crc32                  2880   0 [tulip]

> 
> What happens if you "ifup eth0" from the command line?

No such program in slackware.
> 
> > I had no problem in Fedora4 to configure the new Lan card and in the gem
> > Damned Small Linux distro, where I am now, the new LAN card was found w/o me
> > doing anything.
> 
> This is all good, since it means that the card should work, and we just 
> need to spot the detail where you have (or Slackware has) something 
> wrong. It also should eliminate the possibility of MAC-address 
> authentication causing a problem.
> 
> Is there any possibility of a mechanical problem (a bad cable, say)? 
> That is, aside from the distro change, was *everything* else *exactly* 
> the same in your Slackware failure as in your Fedora and DSL successes? 
> I'm assuming that you ran both other distros on the same system (same 
> mobo), not with (say) the same NIC in a different mobo ... but please 
> correct me if I've assumed too much here.

Yes Slackware, Fedora and DSL all run on the same machine, same mobo, same LAN card, same cables, same et all. DSL is on a second HD.

> What are the details behind your writing above that "I entered all 
> necessary data"? Since (apparently) you did not have to enter anything 
> in the DSL test, and maybe not in the Fedora test either, this would at 
> least appear to be a possible source of differences.

Yes neither in Fedora nor in DSL had I to enter anything. In Fedora I just
had to activate eth1, eth0 was taken by the onboard LAN card.

In slackware one runs the program netconfig where one first has to enter a
host name, I always enter Peter,  then the domain name in this case
meridiantelekoms.com then one is asked to use a DHCP server to configure
ethernet, press enter for yes and the configuration is finished or used to be
when the onboard LAN card was still working.

This is in the rc.inet1.conf after running netconfig for the new LAN card. 

# Config information for eth0:
IPADDR[0]=""
NETMASK[0]=""
USE_DHCP[0]="yes"
DHCP_HOSTNAME[0]=""

This has not changed from when onboard LAN card was working. All the other eth(1-3) show only ="" for all entries.

Chuck said
> Try '/etc/rc.d/rc.inet1 stop && /etc/rc.d/rc.inet1'.
>  e.g. 'stop' before you 'start'.

I tried it a few times first thing.

 cat /etc/resolv.conf
search meridiantelekoms.com
nameserver 203.87.128.3
nameserver 203.84.191.216
nameserver 203.87.128.4

both in Fedora and DSL. In slackware naturally only 'search meridiantelekoms.com' shows since there is no connection.

> > 
> > Thanks & regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
