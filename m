From: James Miller <jamtat@mailsnare.net>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 14:29:29 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0304111355380.1064@homenet>
References: <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411094900.01ea5030@celine> <5.1.0.14.1.20030411110849.01ea73e8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030411110849.01ea73e8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Fri, 11 Apr 2003, Ray Olszewski wrote:

> Some detailed responses below. As a general matter, kernel 2.2.16 is pretty
> old (it's not even current for the 2.2.x series ... www.kernel.org is up to
> 2.2.25, and Debian source is at 2.2.22), so it's always possible that the
> eepro driver you're using is simply too old for this card.
>
If it's a problem of an old module, I suppose I could search for a newer
one (maybe from a Slack8 or 8.1 CD I have).  I may be giving that a try.

> What happens if, after the interface fails, you restart networking (that
> is, bring eth0 down, then back up - not knowing the details of BasicLinux,
> I can't tell you exactly how to do this)? Or if you bring eth0 down, rmmod
> the driver, then insmod (or modprobe) it again, then bring eth0 back up?
>
I'll have to look into this further.  I'm drawing a blank at the moment.

> Just to be clear -- this is after the interface seems to have stopped
> responding? And after you try to use it again for something (like a ping)?

Yes, after trying a ping after the connection seems to die.

> Just to be sure ... run "ifconfig" after the interface stops working. Note
> the RX and TX packet totals. Then do a ping and let it run awhile. Then run
> "ifconfig" agains and check to see if the TX count has increased but not
> the RX count.
>
I'll go ahead and append the output here, since I don't trust my own very
limited experience in interpreting the output.  Apologies for unnecessary
length.  Here is the output before the ping subsequent to the connection
dieing:

eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
          inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:153 errors:0 dropped:0 overruns:0 frame:0
          TX packets:98 errors:0 dropped:0 overruns:0 carrier:1
          collisions:0 txqueuelen:100
          RX bytes:195141 (190.5 kiB)  TX bytes:9372 (9.1 kiB)
          Interrupt:7 Base address:0x300

Here is the output after trying the ping (for about a minute) after the
connection dies:

eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
          inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:156 errors:0 dropped:0 overruns:0 frame:0
          TX packets:98 errors:0 dropped:0 overruns:0 carrier:1
          collisions:0 txqueuelen:100
          RX bytes:195321 (190.7 kiB)  TX bytes:14151 (13.8 kiB)
          Interrupt:7 Base address:0x300

> BTW, after the interface fails, what happens if the other machine (the
> sorta-Debian gateway) tries to ping this host? And just to be sure, are

56 data bytes . . . 100% packet loss.  Same message as trying to ping the
gateway from the DX2 66.  It shows HWaddr as 00:00:00:00:00:00 for
the offending interface, btw.  Don't know if that's relevant, if it's
caused by the switch, normal, abnormal or what.

> there any problems with the routing table on *either* host? And can each
> host arp the other (after you try a ping, for example, does each host
> appear in the listing of /proc/net/arp on the other host)?
>
cat /proc/net/arp from each machine shows the correct relevant
network address for each in the other's /proc/net/arp.  I don't know much
about routing tables, so I'll have to think/read further on this.

> A bit more than that, but I should have been explicit. What else do you
> have on the machine that uses IRQs? (Check this in the BIOS, not in Linux,
> because I'm wondering about a problem caused by a device that the kernel
> does not recognize ... a Winmodem is the poster-child for this problem,
> though, and WInmodems pretty reliably turn up on IRQ3.)
>
No Winmodems for sure.  2 ISA HD controller cards (or whatever those cards
used to plug the HD into the mobo before the days of onboard IDE channels
are called).  Can't think of what else, other than serial or parallel
ports that might be using IRQ's.  But I'll have to take a look at the
BIOS, as you suggest.  I'm not quite sure what I'll be looking for, but I
will poke around a bit there.

> I don't use BasicLinux, but if it's standard in this respect, the logs will
> be in /var/log and viewable only by root. There is no real standard for how
> syslog messages are apportioned among specific logs, so I can't give you a
> good answer at that part ... but /var/log/messages is usually the catchall
> file.

I'll try and look into this a bit further too.  I also am not sure how
Basiclinux handles this, obviously.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
