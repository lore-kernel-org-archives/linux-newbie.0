From: Ray Olszewski <ray@comarre.com>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 13:08:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030411125405.01fbde78@celine>
References: <5.1.0.14.1.20030411110849.01ea73e8@celine>
 <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411110849.01ea73e8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0304111355380.1064@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>, Linux-Newbie list <linux-newbie@vger.kernel.org>

James -- Based on the additional ifconfig info you provide here, it seems 
that my original guess was wrong. I may have been misinterpreting what you 
wrote before (doing some incorrect rading between the lines), so I'd like 
you to repost, this time with come complete output.

First, note that the attempted ping does NOT genreate any TX packets. The 
"before" ifconfig reads (in part): "TX packets:98 errors:0 dropped:0 
overruns:0 carrier:1". The "after" ifconfig is identical here: "X 
packets:98 errors:0 dropped:0 overruns:0 carrier:1". So the ping is not 
going out the interface.

To understand why, I'd like to see the exact ping command and all that 
results. For example, here is what an unsuccessful ping normally looks like 
(In this case, one to a unused LAN address):

autovcr@kuryakin:~$ ping 192.168.1.44
PING 192.168.1.44 (192.168.1.44): 56 data bytes
[... long wait here..., ended by pressing ^C]

--- 192.168.1.44 ping statistics ---
10 packets transmitted, 0 packets received, 100% packet loss

Is this what you see when you ping unsuccessfully, or is anything different?

As to the arp table, a HW address of all 0s means the arp attempt failed 
... the querying host did not get a response. If it gets a response, you'll 
see non-0 hex values in the entry, something like this:

autovcr@kuryakin:~$ more /proc/net/arp
IP address       HW type     Flags       HW address            Mask     Device
192.168.1.129    0x1         0x2         00:A0:CC:E6:76:7E     *        eth0


Checking the routing table means, in practice, looking at the output of 
"netstat -nr" (there are other ways as well, but I've never seen a Linux 
system that didn't have the netstat command).

Finally, modules have to be compiled for a specific kernel. You can't get a 
newer eepro.o module and expect it to work (or even load) with 2.2.16. If 
you need a newer module, you need a newer kernel. Maybe ichi can comment on 
this part?

Answers to these questions may give me (or someone else here) an idea to 
suggest. Right now, my best guess is that the module you are using does not 
work properly with the particular "clone" card you have (and that's no more 
than a guess).

At 02:29 PM 4/11/2003 -0500, James Miller wrote:
>On Fri, 11 Apr 2003, Ray Olszewski wrote:
>
> > Some detailed responses below. As a general matter, kernel 2.2.16 is pretty
> > old (it's not even current for the 2.2.x series ... www.kernel.org is up to
> > 2.2.25, and Debian source is at 2.2.22), so it's always possible that the
> > eepro driver you're using is simply too old for this card.
> >
>If it's a problem of an old module, I suppose I could search for a newer
>one (maybe from a Slack8 or 8.1 CD I have).  I may be giving that a try.
>
> > What happens if, after the interface fails, you restart networking (that
> > is, bring eth0 down, then back up - not knowing the details of BasicLinux,
> > I can't tell you exactly how to do this)? Or if you bring eth0 down, rmmod
> > the driver, then insmod (or modprobe) it again, then bring eth0 back up?
> >
>I'll have to look into this further.  I'm drawing a blank at the moment.
>
> > Just to be clear -- this is after the interface seems to have stopped
> > responding? And after you try to use it again for something (like a ping)?
>
>Yes, after trying a ping after the connection seems to die.
>
> > Just to be sure ... run "ifconfig" after the interface stops working. Note
> > the RX and TX packet totals. Then do a ping and let it run awhile. Then run
> > "ifconfig" agains and check to see if the TX count has increased but not
> > the RX count.
> >
>I'll go ahead and append the output here, since I don't trust my own very
>limited experience in interpreting the output.  Apologies for unnecessary
>length.  Here is the output before the ping subsequent to the connection
>dieing:
>
>eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
>           inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:153 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:98 errors:0 dropped:0 overruns:0 carrier:1
>           collisions:0 txqueuelen:100
>           RX bytes:195141 (190.5 kiB)  TX bytes:9372 (9.1 kiB)
>           Interrupt:7 Base address:0x300
>
>Here is the output after trying the ping (for about a minute) after the
>connection dies:
>
>eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
>           inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:156 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:98 errors:0 dropped:0 overruns:0 carrier:1
>           collisions:0 txqueuelen:100
>           RX bytes:195321 (190.7 kiB)  TX bytes:14151 (13.8 kiB)
>           Interrupt:7 Base address:0x300
>
> > BTW, after the interface fails, what happens if the other machine (the
> > sorta-Debian gateway) tries to ping this host? And just to be sure, are
>
>56 data bytes . . . 100% packet loss.  Same message as trying to ping the
>gateway from the DX2 66.  It shows HWaddr as 00:00:00:00:00:00 for
>the offending interface, btw.  Don't know if that's relevant, if it's
>caused by the switch, normal, abnormal or what.
>
> > there any problems with the routing table on *either* host? And can each
> > host arp the other (after you try a ping, for example, does each host
> > appear in the listing of /proc/net/arp on the other host)?
> >
>cat /proc/net/arp from each machine shows the correct relevant
>network address for each in the other's /proc/net/arp.  I don't know much
>about routing tables, so I'll have to think/read further on this.
>
> > A bit more than that, but I should have been explicit. What else do you
> > have on the machine that uses IRQs? (Check this in the BIOS, not in Linux,
> > because I'm wondering about a problem caused by a device that the kernel
> > does not recognize ... a Winmodem is the poster-child for this problem,
> > though, and WInmodems pretty reliably turn up on IRQ3.)
> >
>No Winmodems for sure.  2 ISA HD controller cards (or whatever those cards
>used to plug the HD into the mobo before the days of onboard IDE channels
>are called).  Can't think of what else, other than serial or parallel
>ports that might be using IRQ's.  But I'll have to take a look at the
>BIOS, as you suggest.  I'm not quite sure what I'll be looking for, but I
>will poke around a bit there.
>
> > I don't use BasicLinux, but if it's standard in this respect, the logs will
> > be in /var/log and viewable only by root. There is no real standard for how
> > syslog messages are apportioned among specific logs, so I can't give you a
> > good answer at that part ... but /var/log/messages is usually the catchall
> > file.
>
>I'll try and look into this a bit further too.  I also am not sure how
>Basiclinux handles this, obviously.
>
>Thanks, James




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
