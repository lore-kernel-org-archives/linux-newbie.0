From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 2 NIC cards not talking
Date: Fri, 23 Jan 2004 07:33:48 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401230733.48137.pa3gcu@zeelandnet.nl>
References: <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com> <40107041.6DDDE143@gelm.net> <40109D5D.2060708@comcast.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40109D5D.2060708@comcast.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Beolach <beolach@comcast.net>, chuck <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On Friday 23 January 2004 05:04, Beolach wrote:
> chuck wrote:
> > [snip]
> >
> >  OBTW, when I
> >
> > ping -I eth0 192.168.1.1
> > ping: bad interface address 'eth0'
> >
> >  is what I get.  I do have an eth0 device.     :-|
>
> The -I option doesn't take an interface name (ie eth0), but rather the
> IP address (ie 192.168.0.1) assigned to the interface.

Get your facts right, it does take an interface name as option.
From the manual page of ping;

-I interface address
Set source address to specified interface address. Argument may be numeric IP 
address or name of  device.  When pinging IPv6 link-local address this option 
is required.

root@localhost:/# ping -I eth0 192.168.10.23
PING 192.168.10.23 (192.168.10.23) from 192.168.10.15 eth0: 56(84) bytes of 
data.
64 bytes from 192.168.10.23: icmp_seq=1 ttl=255 time=0.151 ms
64 bytes from 192.168.10.23: icmp_seq=2 ttl=255 time=0.148 ms
64 bytes from 192.168.10.23: icmp_seq=3 ttl=255 time=0.153 ms

Now if i try that from my router then i get the same as Chuck gets, why it is 
i dont know and to be honest i dont really care as i do not see the point in 
using the -l option in this case period.

Now if you explain your problem AND show us the configuration you use "To the 
letter" then maybe someone here can help you to solve your problem.

The examples i sent you and the most explanatory mail from Ray should have 
given you enough infomation to have solved it anyway.


> Conway S. Smith
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
