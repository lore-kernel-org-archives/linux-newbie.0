From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tuning iptables
Date: Fri, 6 Dec 2002 16:48:43 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212062148.gB6Lmhb05074@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: ray@comarre.com

Well, I'm afraid I didn't get very far in straightening out my
iptables so that I could move tcpip packets.

I should mention that I'm running RedHat 8.0. I use  pop3 to get email
and sendmail to send mail. I don't care to be pinged, and I'll do
without telnet. No one needs to access my standalone machine for FTP
etc. 

1. First, I verify that INPUT chain's policy is set to ACCEPT:

  Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
   pkts bytes target     prot opt in     out     source   destination         
    150 10348 RH-Lokkit-0-50-INPUT  all  --  * * 0.0.0.0/0 0.0.0.0/0

  This lokkit is a Firewall Configuration utility. It starts by saying
  that "high security blocks all incoming accesses." Is that my
  problem? 

2. I flushed all rules for the INPUT chain:

   # iptables -F INPUT

3. This had no feedback, and so I looked at my iptables:

  # iptables -nvL
  Chain INPUT (policy ACCEPT 0 packets, 0 bytes) 
    pkts bytes target prot opt in     out     source  destination         

  Chain FORWARD (policy ACCEPT 0 packets, 0 bytes) 
    pkts bytes target prot opt in     out     source  destination         

  Chain OUTPUT (policy ACCEPT 150 packets, 10348 bytes) 
    pkts bytes target prot opt in     out     source   destination         

  Chain RH-Lokkit-0-50-INPUT (0 references)
   pkts bytes target  prot opt in  out source          destination         
      0     0 ACCEPT  udp  --  *    *   206.141.193.55  0.0.0.0/0  	
		udp spt:53 dpts:1025:65535 
      0     0 ACCEPT  udp  --  *    *   206.73.20.40    0.0.0.0/0  
		udp spt:53 dpts:1025:65535 
      0     0 ACCEPT  udp  --  eth0 *   0.0.0.0/0       0.0.0.0/0  
		udp spts:67:68 dpts:67:68 
      0     0 ACCEPT  udp  --  eth1 *   0.0.0.0/0       0.0.0.0/0  
		udp spts:67:68 dpts:67:68 
    150 10348 ACCEPT  all  --  lo   *   0.0.0.0/0       0.0.0.0/0  
      0     0 REJECT  tcp  --  *    *   0.0.0.0/0       0.0.0.0/0  
		tcp flags:0x16/0x02 reject-with icmp-port-unreachable 
      0     0 REJECT  udp  --  *    *   0.0.0.0/0       0.0.0.0/0  
		udp reject-with icmp-port-unreachable 
    
  Am I right to infer that since under the INPUT CHAIN, nothing is
  listed, that the flush succeeded? I guess so, for Lokkit is gone.

4. Next, I connected with my DSL provider using rp-pppoe:

	# adsl-start 
	. . . .Connect

5. To check the result, I ran ifconfig -a, and I see that eth0, lo, and
   ppp0 are all up, and ppp0 has been assigned an address. 

  # ifconfig -a
  ppp0      Link encap:Point-to-Point Protocol  
    inet addr:64.252.164.246  P-t-P:64.252.160.1  Mask:255.255.255.255

6. I try # fetchmail. No go. Same behavior as before. Fetchmail
   accesses the mail server, reports the number of messages waiting,
   but hangs when it comes to downloading the first.

7. I tried some pings. Same as before:
   a. I ping my ppp0 address (64.252.164.246). Works fine.
   b. Then my DNS: # ping 206.73.20.40. While no returns, the server
   might block pings.
   c. I ping hardware.redhat.com.  Nothing comes back back.
   d. I ping aol.com. Every five seconds a return. About 30 ms round
   trip, which I guess is normal.

In sum, unless I somehow failed to flush rules for the INPUT chain,
while my iptables were messed up, that is not the basic problem.

I'm using the same box, and simply swapping hard disks, and so the
only hardware that changes is the hard disk. I have a high software
firewall, and have run Bastille so set up certain rules, but not
affecting iptables.

I also recall that my initial installation of RH8.0 resulted in a
broken rp-pppoe, which I replaced/upgraded with happier results. So I
wonder if something else might be broken. I'll try running
/usr/sbin/lokkit with either No Firewall or Medium security to see if
that helps. Medium security is what I have on my present machine, that
can receive tcp mail packets.


Haines Brown



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
