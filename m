From: Ray Olszewski <ray@comarre.com>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 11:31:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030411110849.01ea73e8@celine>
References: <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411094900.01ea5030@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0304111240110.1064@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>, Linux-Newbie list <linux-newbie@vger.kernel.org>

Some detailed responses below. As a general matter, kernel 2.2.16 is pretty 
old (it's not even current for the 2.2.x series ... www.kernel.org is up to 
2.2.25, and Debian source is at 2.2.22), so it's always possible that the 
eepro driver you're using is simply too old for this card.

What happens if, after the interface fails, you restart networking (that 
is, bring eth0 down, then back up - not knowing the details of BasicLinux, 
I can't tell you exactly how to do this)? Or if you bring eth0 down, rmmod 
the driver, then insmod (or modprobe) it again, then bring eth0 back up?

At 12:52 PM 4/11/2003 -0500, James Miller wrote:
[...]
> > 2. After the NIC seems to stop operating, what does "ifconfig" report about
> > its interface (presumably eth0)?
> >
>eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
>           inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:137 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:95 errors:1 dropped:0 overruns:0 carrier:2
>           collisions:8 txqueuelen:100
>           RX bytes:155752 (152.1 kiB)  TX bytes:10745 (10.4 kiB)
>           Interrupt:7 Base address:0x300

Just to be clear -- this is after the interface seems to have stopped 
responding? And after you try to use it again for something (like a ping)? 
Notice that there are no RX errors and only 1 TX error ... suggesting that 
the interface is *sending* properly but is not receiving replies.

This makes it sound to me like a hardware problem ... either the "clone" 
card has (so to speak) some transcription errors or there is an IRQ problem 
on the mobo (since you seem to have eliminated external sources like the 
cable and the switch).

Just to be sure ... run "ifconfig" after the interface stops working. Note 
the RX and TX packet totals. Then do a ping and let it run awhile. Then run 
"ifconfig" agains and check to see if the TX count has increased but not 
the RX count.

BTW, after the interface fails, what happens if the other machine (the 
sorta-Debian gateway) tries to ping this host? And just to be sure, are 
there any problems with the routing table on *either* host? And can each 
host arp the other (after you try a ping, for example, does each host 
appear in the listing of /proc/net/arp on the other host)?

> > 3.  Might there be an IRQ conflict not obvious to the Linux kernel? (Even
> > with the newer kernels that do IRQ sharing, I've heard reports of problems
> > with NICs on IRQ3 that conflict with Winmodems.) Nothing comes to mind for
> > IRQs 7 and 10, I admit.
> >
>Don't know what to say here.  I presume you're sort of thinking out loud?

A bit more than that, but I should have been explicit. What else do you 
have on the machine that uses IRQs? (Check this in the BIOS, not in Linux, 
because I'm wondering about a problem caused by a device that the kernel 
does not recognize ... a Winmodem is the poster-child for this problem, 
though, and WInmodems pretty reliably turn up on IRQ3.)

[...]
> > 7. Is anything relevant showing up in your logs?
> >
>Can you give an indication of which logs to look at and where they're
>located?  I haven't done much log analysis in my rather brief and
>superficial Linux career.

I don't use BasicLinux, but if it's standard in this respect, the logs will 
be in /var/log and viewable only by root. There is no real standard for how 
syslog messages are apportioned among specific logs, so I can't give you a 
good answer at that part ... but /var/log/messages is usually the catchall 
file.
[...]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
