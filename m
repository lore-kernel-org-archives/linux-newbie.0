From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: ntp - how?
Date: Fri, 02 Aug 2002 18:25:52 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D4B06F0.7584C800@gelm.net>
References: <3D36DDA3.FA0F073C@gmx.net>
	 <02072506225706.04469@unix.pa3gcu>
	 <3D406BBB.E208E07B@gelm.net>
	 <02072606105100.00370@unix.pa3gcu>
	 <5.1.0.14.1.20020726164536.02296360@celine>
	 <5.1.0.14.1.20020728140342.0228b3c0@celine>
	 <3D4498AF.42DC0D8C@gelm.net>
	 <3D45AD28.7623B094@gelm.net>
	 <5.1.0.14.1.20020802092710.021c8d50@celine> <5.1.0.14.1.20020802141853.021cf110@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi, Ray:
Thanks.
Yup, I think the problem is the firewall rule set.
I copied the ntp.conf file to the two masqueraded
hosts and they appear to be working. 
 
 Yes, there were many many DENY's from w.x.y.z:123 !

dmesg|grep ":123"

 So, I'll make an internal LAN host the
default ntpd host and let the firewall and the
'other' linux box run ntp off of it.

 So, now I'm off to figure out how to make
an alias:
fileserver.home -> ntp.home

ipchains -nvL:

Chain input (policy ACCEPT: 95385 packets, 49586886 bytes):
 pkts bytes target prot opt    tosa tosx  ifname mark outsize source    
destination  ports
 1314 99946 DENY   udp  ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   0:1023
   47  2364 DENY   tcp  ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   0:1023
  414 21108 DENY   tcp  -y--l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   *
    0     0 DENY   icmp ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    8 ->   *
Chain forward (policy DENY: 0 packets, 0 bytes):
 pkts bytes target prot opt    tosa tosx  ifname mark outsize source    
destination  ports
36585 2940K MASQ   all  ------ 0xFF 0x00  *                   0.0.0.0/0 
0.0.0.0/0    n/a
Chain output (policy ACCEPT: 96415 packets, 48504643 bytes):

;-)

Many thanks.

Chuck

Ray Olszewski wrote:
> 
> At 04:28 PM 8/2/02 -0400, Chuck Gelm wrote:
> >Hi, Ray:
> >Thanks.
> >
> >Ooopps, I reported earlier that the kernel was 2.4.18.
> >
> >It is kernel 2.2.19 from Slackware8.0 on a very old Compaq
> >80486dx33, 32 Megabytes of RAM, 40 Gigabyte hd,
> >internet access is via aDSL modem, eth1 & eth2 are 3c509s.
> >pppoe is Roaring Penguin v3.5 with firewall option #2,
> >Masquerade.
> 
> I'm not sure when "earlier" was, but it seems like a good excuse to mention
> that I, and I think many of the others here who try to answer questions,
> see an awful lot of questions (in my case, on this and about a half dozen
> other lists). I don't do well at recalling from prior threads what a
> particular user's setup is. So, at least for me, it's useful to include
> this sort of summary of the basics whenever you ask a new question. (And on
> that score, this was a great summary -- concise and decently complete as
> regards the problem at hand.)
> 
> As to your actual problem ...
> [...]
> > >          3. your system is behind a firewall that interferes with access
> > > to the ntp port
> >
> >  The system is the 'firewall'.  Doh! Do I need to allow a port
> >  less than 1024?  I am running the default rule set of ipchains
> >  that RoaringPenguin sets, 'ipchains -L':
<snip>
> 
> It is better to list your rulesets with "ipchains -nvL", since that format
> includes information that the simple -L version omits (like interface
> designations). Due to the omissions, I can't say for sure if this ruleset
> is interfering with NTP connections or not.

ipchains -nvL:

Chain input (policy ACCEPT: 95385 packets, 49586886 bytes):
 pkts bytes target prot opt    tosa tosx  ifname mark outsize source    
destination  ports
 1314 99946 DENY   udp  ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   0:1023
   47  2364 DENY   tcp  ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   0:1023
  414 21108 DENY   tcp  -y--l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    * ->   *
    0     0 DENY   icmp ----l- 0xFF 0x00  ppp+                0.0.0.0/0 
0.0.0.0/0    8 ->   *
Chain forward (policy DENY: 0 packets, 0 bytes):
 pkts bytes target prot opt    tosa tosx  ifname mark outsize source    
destination  ports
36585 2940K MASQ   all  ------ 0xFF 0x00  *                   0.0.0.0/0 
0.0.0.0/0    n/a
Chain output (policy ACCEPT: 96415 packets, 48504643 bytes):
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
