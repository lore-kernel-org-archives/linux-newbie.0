From: Ray Olszewski <ray@comarre.com>
Subject: Re: help interpreting firewall log
Date: Mon, 09 Aug 2004 14:48:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040809142915.01f0e1c8@celine>
References: <Pine.LNX.4.58.0408091429450.11015@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0408091429450.11015@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:51 PM 8/9/2004 -0500, James Miller wrote:
>I'd like to ask for some more help in interpreting entries in my
>firewall's (Freesco) log.  I check it periodically, just to see what's
>happening and to try and figure out more about it and about network
>security.  Sort of a spare time, ongoing project.  Anyway, for the last
>few weeks I've noted that there are repeated calls (hope that's the right
>term) to port 80 that all originate from the same local address but use
>different ports.  By "local address" what I mean is that the firewall
>stands between me and a university LAN: the firewall gets its IP address
>from a DHCP server on the univeristy's LAN, and it is from among the range
>of those on the internet that the university owns.  The address from which
>the calls in question originate is also local (owned by the university),
>as you'll see from excerpts I include below.  This is not to be confused
>with the yet more local addressing I use in my apartment - on my side of
>the firewall (192.168.etc.etc).  I hope that's clear:  if not, blame my
>own sketchy understanding of how networks and the internet work and offer
>some clarification or clarifying questions.

Your usage  is clear, but it is also nonstandard. Almost everyone involved 
in routing will, informally, use "local" to refer to traffic on the 
internal network. There is no standard term for the sort of traffic you 
refer to, but I often call it "nearby" traffic if it is on the external 
network the router is connected to, to distinguish it from "distant" 
traffic that the router reaches only through its default gateway.

Your situation is still a bit different, in that the source address is 
under the authority of Marquette University, but it is probably not 
"nearby" your router (I'm guessing that the router is on a /24 external 
network, not directly on Marquette's full /16 assigned network space).

Anyway, none of this means you need to change your usage. It does mean, 
probably, that you will have to explain it every time you use it, since it 
is so non-standard.

>Anyway, to my rather
>uneducated mind, these entries look suspiscious, and I'm wondering if I
>should report them to my IT dept.  Maybe someone's computer has gotten
>infected and is scanning the LAN for other machines to infect?  Input on
>this will be appreciated.  And, by the way, I am not running a web server,
>so no service is running on port 80 on the firewall (or at least
>*shouldn't* be running).  Relevant log excerpts follow (I should mention
>that I've deleted some text from the entries I considered irrelevant -
>e.g., "L=48 S=0x00 I=48377 F=0x4000 T=127"):

You really should not edit. In this case, I'm pleased you told us the 
"irrelevant" information, because it tells me that the query at least is 
the right size (L=48) for a normal requrest for a base home page (that is, 
the page returned if the URL is just http://134.48.206.39/ or something 
that resolves to that).

Of course, this might be a probe. Or it might be IT monitoring the network 
for unauthorized Web servers. Or it might be a student looking around to 
see what fellow students have their own Web sites. Or it might be one of 
the P2P services that use port 80 looking for peers. Or ... who knows? The 
fact that the source host does not itself run a server on port 80 (at least 
not one I can connect to from here) makes some of these guesses less 
plausible, but innocent explanations still exist, and even if this is an 
attack, it isn't much of one.

Were I in your position, I would probably just forget about this.  (Here, 
we don't even log this sort of thing.) If you were to alert IT to it, I'd 
suggest you make it a routine call, not something panicky, since many 
innocent explanations are available.


>kernel: IP fw-in deny eth0 TCP 134.48.77.87:2717 134.48.206.39:80
>Jul  2 15:10:45 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2101
>134.48.206.39:80
>Jul  3 17:24:04 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:4281
>134.48.206.39:80
>Jul  4 17:32:19 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1443
>134.48.206.39:80
>Jul  5 14:44:35 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2625
>134.48.206.39:80
>Jul  6 12:10:38 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2221
>134.48.206.39:80
>Jul  7 04:04:11 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2915
>134.48.206.39:80
>Jul 10 23:34:34 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2133
>134.48.206.39:80
>Jul 11 12:44:48 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1524
>134.48.206.39:80
>Jul 11 13:11:12 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:4237
>134.48.206.39:80
>Jul 12 21:16:48 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2795
>134.48.206.39:80
>Jul 12 21:43:18 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3390
>134.48.206.39:80
>Jul 14 12:57:31 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3278
>134.48.206.39:80
>Jul 14 20:41:24 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3769
>134.48.206.39:80
>Jul 15 19:44:29 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3305
>134.48.206.39:80
>Jul 15 19:49:29 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3680
>134.48.206.39:80
>Jul 16 11:38:22 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:4866
>134.48.206.39:80
>Jul 20 17:22:41 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2581
>134.48.206.39:80
>Jul 22 16:24:02 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1463
>134.48.206.39:80
>Jul 25 11:43:16 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3561
>134.48.206.39:80
>Jul 25 22:10:30 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1575
>134.48.206.39:80
>Jul 26 09:44:26 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2900
>134.48.206.39:80
>Jul 27 23:53:26 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2916
>134.48.206.39:80
>Jul 28 22:23:52 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1718
>134.48.206.39:80
>Jul 29 00:32:24 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1610
>134.48.206.39:80
>Jul 29 12:41:51 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3119
>134.48.206.39:80
>Jul 31 17:09:58 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2370
>134.48.206.39:80
>Aug  1 06:47:03 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3011
>134.48.206.39:80
>Aug  1 17:22:57 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2118
>134.48.206.39:80
>Aug  2 15:39:58 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:1821
>134.48.206.39:80
>Aug  2 20:31:34 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2085
>134.48.206.39:80
>Aug  4 06:59:03 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3418
>134.48.206.39:80
>Aug  5 08:05:46 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:2438
>134.48.206.39:80
>Aug  5 11:41:54 - kernel: IP fw-in deny eth0 TCP 134.48.77.87:3785
>134.48.206.39:80



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
