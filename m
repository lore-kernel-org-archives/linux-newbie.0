From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: 3Com NIC Driver?
Date: Sun, 30 May 2004 08:04:07 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040530120407.GA477@lnx2.w8mch.ampr.org>
References: <200405280756.57985.pa3gcu@zeelandnet.nl> <20040526143311.GA790@lnx2.w8mch.ampr.org> <200405280756.57985.pa3gcu@zeelandnet.nl> <5.1.0.14.1.20040529115723.01fc3e68@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20040529115723.01fc3e68@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings again Ray: I did mention that we were 100% 10base2 here and
had I had a crossover UTP cable to try, would have found the problem
myself..

Your experience let you say the magic phrase: Auto-media on 3Com
cards don't always work - which was the case.. Default 10baseT, I had
to re-flash it with the setup Dos program.. All's now well discovering
that I had been lucky before with my SMC and RealTek NIC's all auto
sensing without my intervention..

APPRECIATE!! Happy Holiday...

Hal


On 05-29, Ray Olszewski wrote:
> HI, Hal. Sorry to jump into this one late, but since Richard said he'd be 
> away for awhile ...
> 
> In checking on the NIC, I notice it is described at several sites as having 
> both BNC (thinnet, 10Base2) and RJ45 (UTP, 10BaseT) jacks. And I notice 
> that after you ping unsuccessfully, ifconfig reports (in part)
> 
>           TX packets:9 errors:0 dropped:0 overruns:0 carrier:9
> 
> Taken together, this makes me wonder if the card is set to use the wrong 
> port. The docs I found for this card seem to say it comes out of the box 
> set for media autoselect, but that's not something I'd rely on. The 
> "Destination Host Unreachable" message you get when ping'ing is consistent 
> with this guess (though not always present). You might want to get the 
> DOS-based setup program for this NIC (or see if Don Becker's released a 
> Linux-based one) and check its settings.
> 
> And I realize, in rereading your message, that either you've not said 
> whether you are using thinnet or UTP with this card, or I missed where you 
> told us. Also, just barely conceivably, you've connected it via UTP to a 
> switch that does not drop back to 10 Mbps (is the other card you test with 
> successfully 10 or 100 Mbps?).
> 
> Final thought ... I have a hazy memory of running into some oddball 3Com 
> NICs of about the vintage of the one you have. They had problems with 
> standard UTP wiring. I forget the details ... except that I ended up 
> scrapping the cards, NICs these days being too cheap to spend much time 
> mucking about with (especially old, 10 Mbps NICs).
> 
> At 02:38 PM 5/29/2004 -0400, Hal MacArgle wrote:
> >On 05-28, pa3gcu wrote:
> >> On Wednesday 26 May 2004 16:33, Hal MacArgle wrote:
> >> > Greetings: I made the, probable, mistake of buying a 3Com 3C900B-TPC
> >> > PCI BNC NIC discovering that the module automatically installed by
> >> > Slackware 9.0, 2.4.20 - 3c59x.o - does not ping.. Checking the Web I
> >> > find that 3c59x.o is for the 3C900 (no suffix) models and that I may
> >> > need 3c90x.o instead..
> >>
> >> AFAIK that nic may have needed a module called 3c90x back in 2.0 and 2.1
> >> kernels, but according to google it now uses the 3c9x module.
> >>
> >> > Downloaded the source for that but it wont compile under Slack9.0..
> >> > An attempt to -f (force) using a pre-compiled version didn't work
> >> > either..
> >> >
> >> > I may be stuck but was wondering if someone may have run into this
> >> > and solved the problem, and/or has a module compiled for 2.4.20..
> >>
> >> Does modprobe return an error when loading the module, the module in the
> >> bare.i kernel should do ok.
> >
> >        This was the bare.i kernel, 2.4.20, default install.. The
> >module was loaded and the NIC card found automatically on boot; the
> >only entries I made were ifconfig and route add.. See following
> >script.
> >
> >
> >> If there is no error what does 'ifconfig eth0' say. (presuming its the 
> >first
> >> nic of course).
> >> What does the command 'route -ne' say.?
> >
> >        See following script, some snipped to shorten the verbiage.
> >Only one NIC at a time..
> >
> >
> >> Also another helper could be 'mii-tool' (to see the nic's status).
> >
> >        As I read man mii-tool, I gather it's for RJ45 connections
> >only whereas I'm exclusively thinnet, 10base2, BNC.. Correct me if
> >I'm wrong on this..
> >
> >>
> >> >
> >> > Rather than go into further details of what I did, suffice it to say
> >> > that I swapped a RealTec NIC into the same PCI slot, and it worked
> >> > perfectly with the ifconfig and route add entries, so I must presume
> >> > the cables, etc are OK.. dmesg listed the 3Com NIC, with the same
> >> > IRQ# and Port# that were assigned to the RealTec NIC..
> >> >
> >> > Appreciate and TIA.
> >> >
> >        Script follows which points to the cables or connection, it
> >seems, but another different brand NIC, in the same PCI slot, is
> >found; a different module automatically loaded, and works fine.. Back
> >to 3Com NIC and a repeat of the problem.. Hopefully you can see
> >something I'm not familiar with. <grin> Thanks Richard.
> >------------------------------------------------------------------------------
> >
> >Script started on Sat May 29 14:16:00 2004
> >root@lnx5:~# uname -a
> >Linux lnx5 2.4.20 #2 Mon Mar 17 22:02:15 PST 2003 i686 unknown
> >root@lnx5:~#
> >
> >root@lnx5:~# dmesg
> >Linux version 2.4.20 (root@midas) (gcc version 3.2.2) #2 Mon Mar 17 
> >22:02:15 PST 2003
> >< snipped, checking to make sure no IO or IRQ conflicts >
> >PCI: Found IRQ 11 for device 00:08.0
> >3c59x: Donald Becker and others. www.scyld.com/network/vortex.html
> >00:08.0: 3Com PCI 3c900 Cyclone 10Mbps TPC at 0xe800. Vers LK1.1.16
> >
> >root@lnx5:~#
> >
> >root@lnx5:~# lspci -v
> >< snipped >
> >
> >00:08.0 Ethernet controller: 3Com Corporation 3c900B-TPC [Etherlink XL 
> >TPC] (rev 04)
> >        Subsystem: 3Com Corporation 3c900B-TPC [Etherlink XL TPC]
> >        Flags: bus master, medium devsel, latency 32, IRQ 11
> >        I/O ports at e800 [size=128]
> >        Memory at d8000000 (32-bit, non-prefetchable) [size=128]
> >        Expansion ROM at <unassigned> [disabled] [size=128K]
> >        Capabilities: [dc] Power Management version 1
> >root@lnx5:~#
> >
> >root@lnx5:~# lsmod
> >Module                  Size  Used by    Not tainted
> >parport_pc             14724   0
> >parport                23264   0  [parport_pc]
> >uhci                   24560   0  (unused)
> >usbcore                58144   1  [uhci]
> >via82cxxx_audio        18936   0  (unused)
> >ac97_codec              9512   0  [via82cxxx_audio]
> >soundcore               3332   2  [via82cxxx_audio]
> >3c59x                  26736   1
> >root@lnx5:~#
> >
> >root@lnx5:~# cat /proc/pci
> >PCI devices found:
> >< snipped; no IO or IRQ conflicts >
> >  Bus  0, device   8, function  0:
> >    Ethernet controller: 3Com Corporation 3c900B-TPC [Etherlink XL TPC] 
> >(rev 4).
> >      IRQ 11.
> >      Master Capable.  Latency=32.  Min Gnt=10.Max Lat=48.
> >      I/O at 0xe800 [0xe87f].
> >      Non-prefetchable 32 bit memory at 0xd8000000 [0xd800007f].
> >root@lnx5:~#
> >
> >root@lnx5:~# ifconfig eth0
> >eth0      Link encap:Ethernet  HWaddr 00:50:DA:35:3B:46
> >          inet addr:10.0.0.15  Bcast:10.255.255.255  Mask:255.0.0.0
> >          UP BROADCAST MULTICAST  MTU:1500  Metric:1
> >          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
> >          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
> >          collisions:0 txqueuelen:100
> >          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)
> >          Interrupt:11 Base address:0xe800
> >
> >root@lnx5:~#
> >
> >root@lnx5:~# route -ne
> >Kernel IP routing table
> >Destination     Gateway         Genmask         Flags   MSS Window  irtt 
> >Iface
> >44.58.13.11     0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >10.0.0.17       0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >10.0.0.16       0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >44.58.13.12     0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >44.58.13.13     0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >10.0.0.15       0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >10.0.0.14       0.0.0.0         255.255.255.255 UH       40 0          0 
> >eth0
> >10.0.0.0        0.0.0.0         255.0.0.0       U        40 0          0 
> >eth0
> >127.0.0.0       0.0.0.0         255.0.0.0       U        40 0          0 lo
> >root@lnx5:~#
> >
> >root@lnx5:~# ping -v 10.0.0.16
> >PING 10.0.0.16 (10.0.0.16): 56 octets data
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >92 octets from lnx5.net (10.0.0.15): Destination Host Unreachable
> >Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst Data
> > 4  5  00 5400 0000   0 0040  40  01 8b26 10.0.0.15  10.0.0.16
> >
> >
> >--- 10.0.0.16 ping statistics ---
> >7 packets transmitted, 0 packets received, 100% packet loss
> >root@lnx5:~#
> >
> >root@lnx5:~# ifconfig eth0
> >eth0      Link encap:Ethernet  HWaddr 00:50:DA:35:3B:46
> >          inet addr:10.0.0.15  Bcast:10.255.255.255  Mask:255.0.0.0
> >          UP BROADCAST MULTICAST  MTU:1500  Metric:1
> >          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
> >          TX packets:9 errors:0 dropped:0 overruns:0 carrier:9
> >          collisions:0 txqueuelen:100
> >          RX bytes:0 (0.0 b)  TX bytes:540 (540.0 b)
> >          Interrupt:11 Base address:0xe800
> >
> >root@lnx5:~#
> >
> >root@lnx5:~# netstat -i
> >Kernel Interface table
> >Iface   MTU Met   RX-OK RX-ERR RX-DRP RX-OVR   TX-OK TX-ERR TX-DRP TX-OVR 
> >Flg
> >eth0   1500   0       0      0      0      0       9      0      0      0 
> >BMU
> >lo    16436   0       7      0      0      0       7      0      0      0 
> >LRU
> >root@lnx5:~#
> >root@lnx5:~# exit
> >exit
> >
> >Script done on Sat May 29 14:17:26 2004
> >------------------------------------------------------------------------------
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
