From: "frans toruan" <frans@acbi.co.id>
Subject: RE: ADSL connection via RHL 90
Date: Wed, 16 Feb 2005 16:35:11 +0700
Message-ID: <000601c5140a$d6398710$6510ea0a@acbi.local>
References: <5.1.0.14.1.20050215213034.0ba07d78@celine>
Reply-To: <frans@acbi.co.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050215213034.0ba07d78@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>
Cc: Linux newbie list <linux-newbie@vger.kernel.org>



# fx > Please tell us the *exact* command you entered and the *exact*
# fx > message ping

Sorry, truly.

These are exact results of ping via RHL :


	ping 202.134.0.155 -c 1 :
PING 202.134.0.155(202.134.0.155) 56(84) bytes of data.
64 bytes from 202.134.0.155: icmp_seq=1 ttl=61 time=375 ms

--- 202.134.0.155 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 375.192/375.192/375.192/0.000 ms
( note : 202.134.0.155 is IP number of ISP's DNS server ) 

	ping nsjkt1.telkom.net.id -c 1 :
ping: unknown host nsjkt1.telkom.net.id


	ping 202.134.2.5 -c 1 :
PING 202.134.2.5(202.134.2.5) 56(84) bytes of data.
64 bytes from 202.134.2.5: icmp_seq=1 ttl=248 time=407 ms

--- 202.134.2.5 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 407.694/407.694/407.694/0.000 ms
( note : 202.134.2.5 is IP number of ISP's DNS server )


	ping ns1.telkom.net.id -c 1 :
ping: unknown host ns1.telkom.net.id


	ping 203.130.196.6 -c 1 :
PING 203.130.196.6(203.130.196.6) 56(84) bytes of data.

--- 203.130.196.6 ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms
( note : 202.134.196.6 is IP number of ISP's DNS server )

	ping ns2.telkom.net.id -c 1 :
ping: unknown host ns2.telkom.net.id


	ping 18.7.22.69 -c 1 :
PING 18.7.22.69(18.7.22.69) 56(84) bytes of data.

--- 18.7.22.69 ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms


	ping mit.edu -c 1 :
ping: unknown host mit.edu


Regards,


Frans T.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
