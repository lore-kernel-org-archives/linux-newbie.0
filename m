From: Ray Olszewski <ray@comarre.com>
Subject: RE: ADSL connection via RHL 90
Date: Wed, 16 Feb 2005 09:46:26 -0800
Message-ID: <5.1.0.14.1.20050216092534.0ba26b78@celine>
References: <5.1.0.14.1.20050215213034.0ba07d78@celine> <000601c5140a$d6398710$6510ea0a@acbi.local>
Mime-Version: 1.0
In-Reply-To: <000601c5140a$d6398710$6510ea0a@acbi.local>
References: <5.1.0.14.1.20050215213034.0ba07d78@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: frans@acbi.co.id
Cc: Linux newbie list <linux-newbie@vger.kernel.org>

OK. In the list below, the ones that involve FQDNs are all returning errors 
tha indicate a DNS problem. If I am right in recalling that you can ping 
the ISP's DNS server themselves by their addresses, I would suggest you see 
if removing the on-LAN DNS server from the list in /etc/resolv.conf fixes 
this problem. In theory, a host is supposed to check all the DNS servers in 
the list, but I've found the practice to be a bit less reliable. You 
**might** simply be seeing a result where the on-LAN DNS server cannot 
resolve off-LAN addresses.

If that turns out to be the case, post again and I, or others, can suggest 
options for dealing with this. (The easiest is to reconfigure the on-LAN 
DNS server so it can do off-LAN name resolution as well as on-LAN, for 
example by using the ISP's DNS servers as forwarders.)

Below, I comment on the pings by address.

At 04:35 PM 2/16/2005 +0700, frans toruan wrote:


># fx > Please tell us the *exact* command you entered and the *exact*
># fx > message ping
>
>Sorry, truly.
>
>These are exact results of ping via RHL :
>
>         ping 202.134.0.155 -c 1 :
>PING 202.134.0.155(202.134.0.155) 56(84) bytes of data.
>64 bytes from 202.134.0.155: icmp_seq=1 ttl=61 time=375 ms
>
>--- 202.134.0.155 ping statistics ---
>1 packets transmitted, 1 received, 0% packet loss, time 0ms
>rtt min/avg/max/mdev = 375.192/375.192/375.192/0.000 ms
>( note : 202.134.0.155 is IP number of ISP's DNS server )

OK. Good. This, BTW, is what you call in your first message "the external 
IP number of my ISP". I'm glad to know what you meant by that term.

If confirms that your system is able to use your LAN gateway 
(10.234.16.99), as your routing table suggests it should.

>         ping nsjkt1.telkom.net.id -c 1 :
>ping: unknown host nsjkt1.telkom.net.id
>
>         ping 202.134.2.5 -c 1 :
>PING 202.134.2.5(202.134.2.5) 56(84) bytes of data.
>64 bytes from 202.134.2.5: icmp_seq=1 ttl=248 time=407 ms
>
>--- 202.134.2.5 ping statistics ---
>1 packets transmitted, 1 received, 0% packet loss, time 0ms
>rtt min/avg/max/mdev = 407.694/407.694/407.694/0.000 ms
>( note : 202.134.2.5 is IP number of ISP's DNS server )

Same thing here.



>         ping ns1.telkom.net.id -c 1 :
>ping: unknown host ns1.telkom.net.id
>
>
>         ping 203.130.196.6 -c 1 :
>PING 203.130.196.6(203.130.196.6) 56(84) bytes of data.
>
>--- 203.130.196.6 ping statistics ---
>1 packets transmitted, 0 received, 100% packet loss, time 0ms
>( note : 202.134.196.6 is IP number of ISP's DNS server )

Same thing again.


>         ping ns2.telkom.net.id -c 1 :
>ping: unknown host ns2.telkom.net.id
>
>
>         ping 18.7.22.69 -c 1 :
>PING 18.7.22.69(18.7.22.69) 56(84) bytes of data.
>
>--- 18.7.22.69 ping statistics ---
>1 packets transmitted, 0 received, 100% packet loss, time 0ms

Hmmm ... OK. No explicit error message from ping, just a failure to get a 
response. (And, just to avoid uncertainty, I confirmed that I can ping this 
address from here, so it's not a problem at the far end.)

So ... your host *thinks* it has a route to this address.

Can you verify that other hosts on your LAN are able to ping this address? 
OR the router itself?

You might try ping'ing with more than 1 packet (say -c 5) to make sure you 
are not seeing some incidental loss.

Definitely try a traceroute to this address and see where you lose 
connectivity.

Your LAN uses NAT to reach the Internet. (That follows from the subnet-10 
addresses it uses.) I always assume that the router is set up correctly to 
NAT the address of the test host, but is there any possible issue there? 
I'd guess not, since you can reach the ISP's DNS servers, but this problem 
is just odd enough to make me wonder.

Can you verify that your host can ping the router's gateway address (not 
its own external address; the default route in its routing table), whatever 
that address is (you said you had access to the router, so I assume you can 
check its routing table)?




>         ping mit.edu -c 1 :
>ping: unknown host mit.edu

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
