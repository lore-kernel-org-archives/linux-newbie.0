From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: daisychain addresses
Date: Fri, 12 Mar 2004 15:52:17 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4051CEA1.3020502@arrakis.es>
References: <40518631.5020203@arrakis.es> <4051C5E5.6080004@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4051C5E5.6080004@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck gelm wrote:
> Andrew Langdon-Davies wrote:
> 
>> Hello,
>> In a daisychain network such as this:
>> fw/router------server------workstation1------workstation2 (these are 
>> descriptions, not real hostnames), how should the addresses be set up? 
>> At the moment, all the machines are on 192.168.0.0. Is this wrong? 
>> Each machine can ping its neighbour but no farther, except for 
>> 'server', which can connect to the Internet via 'fw/router'. But 
>> 'workstation1' cannot ping 'fw/server', even after doing 'route add 
>> fw/router gw server eth0'. Using numerical addresses makes no 
>> difference. All my /etc/hosts list every machine. Daisychaining does 
>> not seem to be very much covered in the documentation I've found. I'm 
>> sure I'm making a basic mistake (apart from being too stingy to invest 
>> in hubs or switches or whatever). Therefore, a basic (and very 
>> general) question: What is the correct way to address machines in this 
>> sort of topology?
>> TIA,
>> Andrew
> 
> Comment: I would like to see the output of 'ifconfig' and 'route -n' on 
> 'workstation1'.
> 
[root@p2 root]# ifconfig
eth0      Link encap:Ethernet  HWaddr 00:A0:24:8C:52:EE
           inet addr:192.168.0.11  Bcast:192.168.0.255 Mask:255.255.255.0
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
           RX packets:3767699 errors:0 dropped:0 overruns:0 frame:0
           TX packets:2588830 errors:0 dropped:0 overruns:0 carrier:0
           collisions:266057 txqueuelen:100
           RX bytes:3880255550 (3700.5 Mb)  TX bytes:217346015 (207.2 Mb)
           Interrupt:5 Base address:0x220

lo        Link encap:Local Loopback
           inet addr:127.0.0.1  Mask:255.0.0.0
           UP LOOPBACK RUNNING  MTU:16436  Metric:1
           RX packets:7417 errors:0 dropped:0 overruns:0 frame:0
           TX packets:7417 errors:0 dropped:0 overruns:0 carrier:0
           collisions:0 txqueuelen:0
           RX bytes:6702039 (6.3 Mb)  TX bytes:6702039 (6.3 Mb)

[root@p2 root]# route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use 
Iface
192.168.0.100   192.168.0.1     255.255.255.255 UGH   0      0        0 eth0
192.168.0.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
127.0.0.0       0.0.0.0         255.0.0.0       U     0      0        0 lo
0.0.0.0         192.168.0.1     0.0.0.0         UG    0      0        0 eth0


> You have, at least, one other topology option without adding hardware. 
> Though,
> I'll try to answer your question modified thusly:
> "What is ['the correct','a way','a good way'] to address machines in 
> this sort of topology?".
> 
> internet<?>fw/router<192.168.0.1>------<192.168.0.2>server<192.168.1.2>---
> ---<192.168.1.3>workstation1<192.168.2.3>------<192.168.2.4>workstation2
> 
I suspected that might be the/an answer; I'll try it when I get a 
moment. But I don't understand why adding the gw line to the routing 
table as described in my original post makes no difference.
Thanks for your time.
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
