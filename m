From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tuning iptables
Date: Sun, 8 Dec 2002 07:55:43 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212081255.gB8CthN04503@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The continuing saga of trying to get incoming accesss through my
iptables.

Before doing a flush of all INPUT rules, I ran #iptables -nvL and
ascertained that Lokkit had reinserted itself. I then did the flush to
remove any possbble iptables block for incoming:

  # iptables -nvL
  Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
   pkts bytes target     prot opt in     out     source  destination

         

  Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
   pkts bytes target     prot opt in     out     source  destination         

  Chain OUTPUT (policy ACCEPT 150 packets, 10348 bytes)
   pkts bytes target     prot opt in     out     source  destination         

  Chain RH-Lokkit-0-50-INPUT (0 references)
   pkts bytes target     prot opt in     out  source       destination         
      0     0 ACCEPT     udp  --  *      *    206.141.193.55 0.0.0.0/0       
                udp spt:53 dpts:1025:65535 
      0     0 ACCEPT     udp  --  *      *    206.73.20.40   0.0.0.0/0
                udp spt:53 dpts:1025:65535 
      0     0 ACCEPT     udp  --  eth0   *    0.0.0.0/0      0.0.0.0/0
                udp spts:67:68 dpts:67:68 
      0     0 ACCEPT     udp  --  eth1   *    0.0.0.0/0      0.0.0.0/0
                udp spts:67:68 dpts:67:68 
    150 10348 ACCEPT     all  --  lo     *    0.0.0.0/0      0.0.0.0/0          
      0     0 REJECT     tcp  --  *      *    0.0.0.0/0      0.0.0.0/0
                tcp flags:0x16/0x02 reject-with icmp-port-unreachable 
      0     0 REJECT     udp  --  *      *    0.0.0.0/0      0.0.0.0/0
                udp reject-with icmp-port-unreachable 

Still have the odd eth1 (I'm only using the NIC chip on the
motherboard, and no NIC card). But otherwise I assume this is wide
open. 

I then brought up ppp0 (ran adsl-start) and got a connection. I
rechecked iptables -nvL, and there was no change whatsoever. So I took
at look at what was logged when I made the connection and terminated it.

/var/log/messages:

  Dec  7 17:12:54 hartford-hwp kernel: CSLIP: code copyright 1989
   Regents of the University of California
  Dec  7 17:12:54 hartford-hwp kernel: PPP generic driver version
   2.4.2
  Dec  7 17:12:55 hartford-hwp pppd[2097]: pppd 2.4.1 started by 
   root, uid 0
  Dec  7 17:12:55 hartford-hwp pppd[2097]: Using interface ppp0
  Dec  7 17:12:55 hartford-hwp pppd[2097]: Connect: ppp0 <-->
    /dev/pts/1
  Dec  7 17:12:55 hartford-hwp /etc/hotplug/net.agent: assuming ppp0 
   is already up
  Dec  7 17:12:55 hartford-hwp pppoe[2098]: PPP session is 2237
  Dec  7 17:12:56 hartford-hwp pppd[2097]: local  IP address
    64.252.170.51
  Dec  7 17:12:56 hartford-hwp pppd[2097]: remote IP address
    64.252.160.1
  Dec  7 17:13:22 hartford-hwp adsl-stop: Killing pppd
  Dec  7 17:13:22 hartford-hwp pppd[2097]: Terminating on signal 15.
  Dec  7 17:13:22 hartford-hwp adsl-stop: Killing adsl-connect
  Dec  7 17:13:22 hartford-hwp pppd[2097]: Connection terminated.
  Dec  7 17:13:22 hartford-hwp pppd[2097]: Connect time 0.5 minutes.
  Dec  7 17:13:22 hartford-hwp pppd[2097]: Sent 30 bytes, received 
   58 bytes.
  Dec  7 17:13:22 hartford-hwp pppoe[2098]: read (asyncReadFromPPP): 
   Session 2237: Input/output error
  Dec  7 17:13:22 hartford-hwp pppoe[2098]: Sent PADT
  Dec  7 17:13:22 hartford-hwp pppd[2097]: Exit.
  Dec  7 17:13:22 hartford-hwp /etc/hotplug/net.agent: NET unregister 
   event not supported

Am I correct to infer all this is normal?

My test of incoming access is a fetchmail mail retrieveal, so now I
focus on that.

First, fetchmail is able to get non-tcpip information from the mail
server:

  # adsl-start
  . Connected!

  # fetchmail --check
  21 messages for brownh@hartford-hwp.com at pop.registeredsite.com 
	(115279 octets).

Next, I wanted to log the fetchmail session. However, my attempt to
generate a log did not work for some reason I lacked time to figure
out ("tmp" directory is accessible).

  $ adsl-start
  . Connected!
  $ fetchmail -v -v > /opt/tmp/-fetchmail.log.1
  bash: /opt/tmp/-fetchmail.log.1: Permission denied

So instead I just logged the xterm:

  $ fetchmail -v -v 
  fetchmail: 5.9.0 querying pop.registeredsite.com (protocol POP3) at
    Sat 07 Dec 2002 05:41:57 PM EST
  fetchmail: POP3< +OK InterMail POP3 proxy server ready.
  fetchmail: POP3> USER brownh@hartford-hwp.com
  fetchmail: POP3< +OK please send PASS command
  fetchmail: POP3> PASS *
  fetchmail: POP3< +OK brownh@hartford-hwp.com is welcome here
  fetchmail: selecting or re-polling default folder
  fetchmail: POP3> STAT
  fetchmail: POP3< +OK 24 136888
  fetchmail: POP3> LAST
  fetchmail: POP3< +OK 0
  24 messages for brownh@hartford-hwp.com at pop.registeredsite.com
    (136888 octets).
  fetchmail: POP3> LIST
  fetchmail: POP3< +OK 24 messages
  fetchmail: POP3< 1 3778
  fetchmail: POP3< 2 3004
  fetchmail: POP3< 3 1988
  fetchmail: POP3< 4 3586
  fetchmail: POP3< 5 3349
  fetchmail: POP3< 6 3622
  fetchmail: POP3< 7 23672
  fetchmail: POP3< 8 3640
  fetchmail: POP3< 9 3867
  fetchmail: POP3< 10 3148
  fetchmail: POP3< 11 3679
  fetchmail: POP3< 12 3670
  fetchmail: POP3< 13 2817
  fetchmail: POP3< 14 3132
  fetchmail: POP3< 15 2539
  fetchmail: POP3< 16 2382
  fetchmail: POP3< 17 2660
  fetchmail: POP3< 18 31868
  fetchmail: POP3< 19 2711
  fetchmail: POP3< 20 3301
  fetchmail: POP3< 21 2866
  fetchmail: POP3< 22 5763
  fetchmail: POP3< 23 3841
  fetchmail: POP3< 24 12005
  fetchmail: POP3< .
  fetchmail: POP3> TOP 1 99999999
  fetchmail: POP3< +OK 3778 octets
  reading message 1 of 24 (3778 octets)
  About to rewrite Return-Path:
           <linux-usb-users-admin@lists.sourceforge.net> 
  Rewritten version is Return-Path:
	   <linux-usb-users-admin@lists.sourceforge.net> 

  About to rewrite From: Dan Hensley <dan.hensley@attbi.com> 
  Rewritten version is From: Dan Hensley <dan.hensley@attbi.com> 

  About to rewrite To: Brent R Brian <brent@bmgen.com>
  Rewritten version is To: Brent R Brian <brent@bmgen.com>

  About to rewrite Cc: USB Linux <linux-usb-users@lists.sourceforge.net> 
  Rewritten version is Cc: USB Linux
	  <linux-usb-users@lists.sourceforge.net> 

  About to rewrite Sender: linux-usb-users-admin@lists.sourceforge.net
  Rewritten version is Sender:
          linux-usb-users-admin@lists.sourceforge.net

Now, at this point, the process stopped dead. After that last
statement, just nothing until eventually I killed the process. Based
on comparison with my presently working system, this report so far
appears to be OK. What should come up next would be such lines as:

  fetchmail: SMTP< 220 hartford-hwp.com ESMTP Sendmail 8.11.6/8.11.6;
	     Sun, 8 Dec 2002 07:40:26 -0500 
  fetchmail: SMTP> EHLO localhost
  fetchmail: SMTP< 250-hartford-hwp.com Hello hartford-hwp.com
	     [127.0.0.1], pleased to meet you
  fetchmail: SMTP< 250-ENHANCEDSTATUSCODES
  ...

Does this mean that SMTP is unable to set up its protocol for
tranferring tcp packegs back to my mahcine?

The messages log simply reports that the ppp0 interface has been
brought up successfully.

Now I go back to iptables -nvL to see what effect running fetchmail
has had on it:

========

# iptables -nvL
Chain INPUT (policy ACCEPT 271 packets, 143K bytes)
 pkts bytes target     prot opt in     out     source               destination 
        

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination 
        

Chain OUTPUT (policy ACCEPT 554 packets, 40441 bytes)
 pkts bytes target     prot opt in     out     source               destination 
        

Chain RH-Lokkit-0-50-INPUT (0 references)
 pkts bytes target     prot opt in     out     source               destination 
        
    0     0 ACCEPT     udp  --  *      *       206.141.193.55       0.0.0.0/0   
       udp spt:53 dpts:1025:65535 
    0     0 ACCEPT     udp  --  *      *       206.73.20.40         0.0.0.0/0   
       udp spt:53 dpts:1025:65535 
    0     0 ACCEPT     udp  --  eth0   *       0.0.0.0/0            0.0.0.0/0   
       udp spts:67:68 dpts:67:68 
    0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0            0.0.0.0/0   
       udp spts:67:68 dpts:67:68 
  150 10348 ACCEPT     all  --  lo     *       0.0.0.0/0            0.0.0.0/0   
       
    0     0 REJECT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0   
       tcp flags:0x16/0x02 reject-with icmp-port-unreachable 
    0     0 REJECT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0   
       udp reject-with icmp-port-unreachable 

===========

I see that INPUT has accepted some packets, but don't know what to
make of this.

A ran /usr/sbin/lokkit and set for no firewall. Then run iptables -nvL
again and compare with previous. But that produced no change, nor did
runing fetchmail after setting Lokkit for no firewall.

Haines Brown


   

  
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
