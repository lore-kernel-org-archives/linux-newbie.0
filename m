From: Sanjay Arora <skpobox@yahoo.com>
Subject: Linux Networking problem...please help..
Date: Mon, 14 Jul 2003 00:11:21 +0530
Sender: linux-net-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030713233516.00b45080@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-net-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-net@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

Network Scenario: RH 8 Linux Firewall Server using three ethernet cards, 
IPs 172.16.0.141 (connected to Cable Ethernet ISP doing NAT), 192.168.200.1 
connected to an ethernet hub, & 192.168.100.1 (presently not being used). 
Using a hub two lans are connected to 192.168.200.1, each presently having 
one machine each having IP addresses 192.168.200.2 (Windows XP machine, 
having Gateway address of 192.168.200.1 in TCP/IP settings) and 
192.168.250.1 (RH8 Linux Server, again having 192.168.200.1 as GW address).

1. When I ftp from 192.168.200.2 (WinXP) to 192.168.250.1 (RH Linux File 
Server), the firewall shows an error message saying that WinXP machine is 
ignoring redirects to 192.168.250.1 The transfer speed is also around 3.5 
MB instead of full 10 MB which I get between the two Linux Servers. What's 
the reason? What do I do to correct this behaviour?

2. The RH fileserver machine is very underutilized. I am thinking of 
putting another ethernet card in it and connect is to the cable ISP and 
Firewall server using a hub. I plan to put a firewall on the new 
ethernet/IP address denying all outgoing packets and put a sniffer on it. 
What are the security implications of this? Mind the IP that sniffer is 
running on is denying all outgoing traffic and dropping all incoming 
traffic and providing no services at all. On the other hand the machine is 
inside the firewall.... a compromise here would provide direct access to 
all local network resources. Is a compromise possible on an IP that denies 
all traffic inbound and outbound? Should I waste one machine for this task 
on my proposed small network (less than 20 machines)?

With thanks in advance ;-))
Sanjay.




