From: Sanjay Arora <skpobox@yahoo.com>
Subject: Linux newbie: Help requested in decoding the nature of this
  Martian packet..
Date: Sat, 14 Jun 2003 14:04:58 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030614140245.00b50320@yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I am a new user to this list from Amritsar, India.

I have a home network on internal IP 192.168.x.x, connected through GW 
172.16.0.141 to a cable (Ethernet Cat 5 Cable) ISP having internal IP 
network 172.16.x.x and giving Internet connectivity through GW 172.16.0.1, 
which he claims is firewalled (though I doubt they are competent at it, as 
they could not find mac address in a broadcast packet...IMHO they are using 
a consultant, who they are unwilling to call again n again...maybe due to 
his charges).

My GW 172.16.0.141 is a multihomed linux box with Linux Firewall Project 
firewall on it (installed it a few days ago and am still in the process of 
understanding it). Firewall is generating huge logs about a Martian packet 
being detected having IP 192.16.1.101 on eth1 which is 172.16.0.141 ie 
external interface. It also lists Ethernet II header giving hardware 
address of the broadcast packet.

I am not competent enough to compile a sniffer yet on Linux but I plugged a 
windows machine directly on to the ISPs cable and sniffed the Martian 
packets...I am listing them here, please advise if this packet is having a 
spoofed IP address (ie is a virus or hacker transmission) or if seems to be 
a genuine DHCP broadcast. If DHCP broadcast...how do I find out if it is 
coming from the ISP's Internet GW or from his internal network.

Maybe I am wrong but I don't think its a genuine DHCP broadcast (from 
someone like myself who has connected an inner 192.168.x.x network to the 
cable ISP's wire) as I am getting no other packets except these broadcast 
ones...I am sure a leakage would not be discriminating and leak only DHCP 
broadcast. But then I am a linux newbie.

I believe I can use the arp command to find out the MAC addresses of 
machines on isp's network but i do not know the various issues involved and 
the syntax.

Please help. One decoded & several undecoded packets are given below.

With my thanks in advance

Sanjay.

Sniffer Decoded Packet


Frame 11
     Arrival Time: Jun  9, 2003 11:53:00.920314000
     Time delta from previous packet: 0.396803000 seconds
     Time relative to first packet: 2.136762000 seconds
     Frame Number: 11
     Packet Length: 342 bytes
     Capture Length: 342 bytes
Ethernet II, Src: 00:d0:b7:65:51:27, Dst: ff:ff:ff:ff:ff:ff
     Destination: ff:ff:ff:ff:ff:ff (Broadcast)
     Source: 00:d0:b7:65:51:27 (Intel_65:51:27)
     Type: IP (0x0800)
Internet Protocol, Src Addr: 192.168.1.101 (192.168.1.101), Dst Addr: 
255.255.255.255 (255.255.255.255)
     Version: 4
     Header length: 20 bytes
     Differentiated Services Field: 0x00 (DSCP 0x00: Default; ECN: 0x00)
         0000 00.. = Differentiated Services Codepoint: Default (0x00)
         .... ..0. = ECN-Capable Transport (ECT): 0
         .... ...0 = ECN-CE: 0
     Total Length: 328
     Identification: 0x790d
     Flags: 0x00
         .0.. = Don't fragment: Not set
         ..0. = More fragments: Not set
     Fragment offset: 0
     Time to live: 64
     Protocol: UDP (0x11)
     Header checksum: 0x3e8b (correct)
     Source: 192.168.1.101 (192.168.1.101)
     Destination: 255.255.255.255 (255.255.255.255)
User Datagram Protocol, Src Port: bootpc (68), Dst Port: bootps (67)
     Source port: bootpc (68)
     Destination port: bootps (67)
     Length: 308
     Checksum: 0xec81 (correct)
Bootstrap Protocol
     Message type: Boot Request (1)
     Hardware type: Ethernet
     Hardware address length: 16
     Hops: 0
     Transaction ID: 0x896e3f1d
     Seconds elapsed: 6656
Bootp flags: 0x8000 (Broadcast)
         1... .... .... .... = Broadcast flag: Broadcast
         .000 0000 0000 0000 = Reserved flags: 0x0000
     Client IP address: 0.0.0.0 (0.0.0.0)
     Your (client) IP address: 0.0.0.0 (0.0.0.0)
     Next server IP address: 0.0.0.0 (0.0.0.0)
     Relay agent IP address: 0.0.0.0 (0.0.0.0)
     Client hardware address: 5241532090738FDC9987C20101000000
     Server host name not given
     Boot file name not given
     Magic cookie: (OK)
     Option 53: DHCP Message Type = DHCP Discover
     Option 61: Client identifier (17 bytes)
     Option 12: Host Name = "BBK"
     End Option
     Padding

A few other packets in Hex

45 00 01 48 FC 70 00 00 40 11 BB 27 C0 A8 01 65
FF FF FF FF 00 44 00 43 01 34 33 6B 01 01 10 00
5B 58 40 4A 00 00 80 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 52 41 53 20 90 73 8F DC
99 87 C2 01 01 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 63 82 53 63 35 01 01 3D
11 01 52 41 53 20 90 73 8F DC 99 87 C2 01 01 00
00 00 0C 04 42 42 4B 00 FF 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00

45 00 01 48 08 71 00 00 40 11 AF 27 C0 A8 01 65
FF FF FF FF 00 44 00 43 01 34 2F 6B 01 01 10 00
5B 58 40 4A 04 00 80 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 52 41 53 20 90 73 8F DC
99 87 C2 01 01 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 63 82 53 63 35 01 01 3D
11 01 52 41 53 20 90 73 8F DC 99 87 C2 01 01 00
00 00 0C 04 42 42 4B 00 FF 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00

45 00 01 48 1E 71 00 00 40 11 99 27 C0 A8 01 65
FF FF FF FF 00 44 00 43 01 34 26 6B 01 01 10 00
5B 58 40 4A 0D 00 80 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 52 41 53 20 90 73 8F DC
99 87 C2 01 01 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 63 82 53 63 35 01 01 3D
11 01 52 41 53 20 90 73 8F DC 99 87 C2 01 01 00
00 00 0C 04 42 42 4B 00 FF 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00







-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
