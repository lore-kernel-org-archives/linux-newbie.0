From: Beolach <beolach@comcast.net>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 21:02:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400F4B72.6090508@comcast.net>
References: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------090308080700000804040208"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.com>
List-Id: <linux-newbie.vger.kernel.org>
To: "Chadha, Devesh" <devesh.chadha@lehman.com>
Cc: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.
--------------090308080700000804040208
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

It looks to me like you're iptables haven't been setup to NAT.  I have 
attached the output of 'iptables -nvL' on my NATing gateway.  Just for 
the heck of it I obscured my public address too.  I used a slightly 
modified version of the rc.firewall-stronger startup script from the 
IP-Masquerade HOWTO (IP-Masquerade is the same thing as NAT).  Links:

The IP-Masquerade HOWTO:
<http://www.tldp.org/HOWTO/IP-Masquerade-HOWTO/index.html>

The exampe startup scripts from the HOWTO.
<http://www.ecst.csuchico.edu/~dranch/LINUX/ipmasq/examples/>

Good luck,
Conway S. Smith


Chadha, Devesh wrote:
> Here are all the answers:
> 
> Chuck's questions:
> My IP address is a public IP.
> I think I am not NATing correctly and hence this problem.
> ping -c 4 192.168.1.1 gives:
> 64 bytes from 192.168.1.1 icmp_seq=1 ttl=64 time=0.237 ms
> 64 bytes from 192.168.1.1 icmp_seq=2 ttl=64 time=0.152 ms
> 64 bytes from 192.168.1.1 icmp_seq=3 ttl=64 time=0.150 ms
> 64 bytes from 192.168.1.1 icmp_seq=4 ttl=64 time=0.152 ms
> 
> --- 192.168.1.1 ping statistics ---
> 4 packets transmitted, 4 received, 0% loss, time 3000ms
> 
> ping -c 4 xxx.xxx.xxx.xxx gives:
> 64 bytes from xxx.xxx.xxx.xxx icmp_seq=1 ttl=64 time=0.237 ms
> 64 bytes from xxx.xxx.xxx.xxx icmp_seq=2 ttl=64 time=0.146 ms
> 64 bytes from xxx.xxx.xxx.xxx icmp_seq=3 ttl=64 time=0.151 ms
> 64 bytes from xxx.xxx.xxx.xxx icmp_seq=4 ttl=64 time=0.149 ms
> 
> --- xxx.xxx.xxx.xxx ping statistics ---
> 4 packets transmitted, 4 received, 0% loss, time 2998ms
> 
> Rays questions:
> 1. Correction, both are not on same subnet. Sorry for the wrong info. I
> guess I am not NATing right
> 2. given that information. see below
> 3. ip forwarding is on. I dont know if I have NATing set up correct. I
> looked up the internet and ran some scripts.
> Here is my iptables -nvl output:
> 
> Chain INPUT (policy ACCEPT 46 packets, 4390 bytes)
>  pkts bytes target        prot  opt   in         out        source
> destination
> 
> Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target        prot  opt   in         out        source
> destination
>     0     0 ACCEPT         all  --    eth1        *         0.0.0.0/0
> 0.0.0.0/0
> 
> Chain OUTPUT (policy ACCEPT 66 packets, 6036 bytes)
>  pkts bytes target        prot  opt   in         out        source
> destination
> 
> 4.Pinging 192.168.1.1 from eth0 gave destnation host unreachable and pinging
> xxx.xxx.xxx.xxx from eth1 gave the same.
> 
> 5. I can connect to internet using eth0 since I can browse the internet. I
> can also ping the gateway from eth0
> 
> Hope this helps. I know that xxx.xxx.... is annoying, but I cant help it.
> 
> Thanks for taking interest...
> 

--------------090308080700000804040208
Content-Type: text/plain;
 name="iptables-nvL"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="iptables-nvL"

Chain INPUT (policy DROP 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         
 1614  165K ACCEPT     all  --  lo     *       0.0.0.0/0            0.0.0.0/0          
 339K   51M ACCEPT     all  --  eth0   *       192.168.0.0/24       0.0.0.0/0          
    0     0 drop-and-log-it  all  --  eth1   *       192.168.0.0/24       0.0.0.0/0          
 5577  489K ACCEPT     icmp --  eth1   *       0.0.0.0/0            xxx.xxx.xxx.xxx       
 756K 1092M ACCEPT     all  --  eth1   *       0.0.0.0/0            xxx.xxx.xxx.xxx       state RELATED,ESTABLISHED 
    0     0 ACCEPT     tcp  --  eth1   *       0.0.0.0/0            0.0.0.0/0          tcp spt:123 dpt:123 
    0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0            0.0.0.0/0          udp spt:123 dpt:123 
 1358 66864 ACCEPT     tcp  --  eth1   *       0.0.0.0/0            xxx.xxx.xxx.xxx       state NEW,RELATED,ESTABLISHED tcp dpt:80 
   62  2232 ACCEPT     udp  --  eth1   *       0.0.0.0/0            xxx.xxx.xxx.xxx       udp spt:6112 
    0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0            xxx.xxx.xxx.xxx       udp dpt:6112 
 358K  127M drop-and-log-it  all  --  *      *       0.0.0.0/0            0.0.0.0/0          

Chain FORWARD (policy DROP 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         
19540 1801K ACCEPT     tcp  --  eth1   eth0    0.0.0.0/0            0.0.0.0/0          tcp dpt:6112 state NEW,RELATED,ESTABLISHED 
 2210  109K ACCEPT     tcp  --  eth1   eth0    0.0.0.0/0            0.0.0.0/0          tcp dpt:6113 state NEW,RELATED,ESTABLISHED 
3773K 2726M ACCEPT     all  --  eth1   eth0    0.0.0.0/0            0.0.0.0/0          state RELATED,ESTABLISHED 
3785K 2010M ACCEPT     all  --  eth0   eth1    0.0.0.0/0            0.0.0.0/0          
    0     0 drop-and-log-it  all  --  *      *       0.0.0.0/0            0.0.0.0/0          

Chain OUTPUT (policy DROP 4 packets, 960 bytes)
 pkts bytes target     prot opt in     out     source               destination         
 1614  165K ACCEPT     all  --  *      lo      0.0.0.0/0            0.0.0.0/0          
  564  443K ACCEPT     all  --  *      eth0    xxx.xxx.xxx.xxx         192.168.0.0/24     
 423K 1093M ACCEPT     all  --  *      eth0    192.168.0.0/24       192.168.0.0/24     
    0     0 drop-and-log-it  all  --  *      eth1    0.0.0.0/0            192.168.0.0/24     
 645K   39M ACCEPT     all  --  *      eth1    xxx.xxx.xxx.xxx         0.0.0.0/0          
    0     0 ACCEPT     tcp  --  *      eth0    0.0.0.0/0            0.0.0.0/0          tcp spt:123 dpt:123 
    0     0 ACCEPT     udp  --  *      eth0    0.0.0.0/0            0.0.0.0/0          udp spt:123 dpt:123 
    0     0 drop-and-log-it  all  --  *      *       0.0.0.0/0            0.0.0.0/0          

Chain drop-and-log-it (5 references)
 pkts bytes target     prot opt in     out     source               destination         
 358K  127M LOG        all  --  *      *       0.0.0.0/0            0.0.0.0/0          LOG flags 0 level 6 
 358K  127M REJECT     all  --  *      *       0.0.0.0/0            0.0.0.0/0          reject-with icmp-port-unreachable 

--------------090308080700000804040208--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
