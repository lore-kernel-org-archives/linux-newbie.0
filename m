From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 15:13:56 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0211231459440.14581-100000@ppg_penguin.linux.bogus>
References: <20021123145412.LQUH16799.mta05-svc.ntlworld.com@there>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021123145412.LQUH16799.mta05-svc.ntlworld.com@there>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Kelly <jkelly@ntlworld.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 23 Nov 2002, John Kelly wrote:

> 
> I have an NTL broadband connection and I guess I should know how it works or 
> not.. I have a setup similiar to yours but I would advise you to forget about 
> iptables and/or NAT and get a standalone box up on NTLs network first. 
> Once you have a standalone box working, you can consider your network.
> I actually used a windows box 'cos NTL refused to have anything to do with 
> Linux.
> 
> > My own network is working fine - all the boxes talk to each other, using
> > /etc/hosts for name lookups. The firewall is running LFS-3.3.
> >
> > My connection to NTL is using dhcp (I'm running dhclient-3.0pl1). I get
> > assigned an address (10.64.14.5 at the moment) when I bring up the
> > interface and I can see the lease data in
> > /var/state/dhcp/dhclient.leases being updated at intervals. This same
> > file shows the router is 10.64.14.1 and the dhcp-server is 10.0.138.70 .
> >
> 
> Is the DCHP working correctly? ie what does '/sbin/ifconfig eth1' show?

eth1	Link encap:Ethernet  HWaddr 00:40:F4:39:3D:BC
	inet addr:10.64.14.5  Bcast:255.255.255.255  Mask:255.255.255.0
	UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
	RX packets:50036 errors:0 dropped:0 overruns:0 frame:0
	TX packets:53 errors:0 dropped:0 overruns:0 carrier:0
	collisions:0 txqueuelen:100
	RX bytes:3007236 (2.8 Mb)  TX bytes:6972 (6.8 Kb)
	Interrupt 10 Base address:0xf800
> 
> > The first stage of making the connection usable is to register with
> > NTL. Stuff on google suggests that all http requests are diverted to the
> > sign-up server at this point, for a page start.html. I tried to use lynx
> > to get this page, but it failed. Examination shows that I cannot ping
> > any of the NTL addresses from the firewall. I'm using iptables, so I
> > cleared out all the tables and re-enabled ip-forwarding in case the
> > firewall script was the problem (I'm guessing this is safe for the
> > moment because of the lack of connectivity).
> 
> When you sign up to NTL broadband, you have to register your cable modem. 
> This was my downfall as the server did not seem to like me and It took 2 
> months for NTL to fix. 

Actually, mine is a "set-top box" - there are different signup pages for
the Win/mac signup clients, and even a different tech support phone
number. Sounds encouraging, like the poster somewhere else who reported
that the ethernet cable they sent him was broken...

> The google stuff sounds correct. I could only connect to one IP until I was 
> registered. My old employer, an ISP had a similiar setup in that people 
> dialling in with a singup CD could only access the signup server. 
> So there is nothing up usual in not being able to ping any NTL addresses. If 
> there is an access list in place for unregistered users then you cannot ping 
> anything except what the ACL allows. My NTL default gateway does not respond 
> to pings and the signup server is probably configured in the same way. 
>
Thanks for this, maybe my side is ok after all.
 
> The chances are that the NTL signup server is 'optimised' for a specific 
> browser. I seem to recall that it had lots of popups and other dancing 
> baloney. So that probably explains why lynx does not work. I don't have the 
> URL to hand or I could check. 
>

I saw a posting from somebody in Bristol who used lynx to register (some
months ago), but I've seen other stuff this week suggesting you need
javascript enabled. Rude words, I don't think any of my linux browsers
have js enabled.

 If my side seems ok, then I'm tempted to put the nic into a windows box
and try that. I've already tried using the ntl installation CD on my
iBook using mac OS-9, but that fails when it tries to get a dhcp address
(well it would do, my firewall is in the middle, no point registering
the iBook's hw address), --- then falls back to ping (but doesn't say
where to) --- and eventually fails when it can't ping.

> 
> Hope this helps.
> 
> regards,
> 
> John Kelly
> 

Thanks, John. Looks useful.
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
