From: Ray Olszewski <ray@comarre.com>
Subject: Re: 2 NIC cards not talking
Date: Fri, 23 Jan 2004 08:54:25 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040123084454.020600f0@celine>
References: <40109D5D.2060708@comcast.net>
 <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com>
 <40107041.6DDDE143@gelm.net>
 <40109D5D.2060708@comcast.net> <200401230733.48137.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401230733.48137.pa3gcu@zeelandnet.nl>
References: <40109D5D.2060708@comcast.net>
 <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com>
 <40107041.6DDDE143@gelm.net>
 <40109D5D.2060708@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:33 AM 1/23/2004 +0100, pa3gcu wrote:
>On Friday 23 January 2004 05:04, Beolach wrote:
> > chuck wrote:
> > > [snip]
> > >
> > >  OBTW, when I
> > >
> > > ping -I eth0 192.168.1.1
> > > ping: bad interface address 'eth0'
> > >
> > >  is what I get.  I do have an eth0 device.     :-|
> >
> > The -I option doesn't take an interface name (ie eth0), but rather the
> > IP address (ie 192.168.0.1) assigned to the interface.
>
>Get your facts right, it does take an interface name as option.
> >From the manual page of ping;
>
>-I interface address
>Set source address to specified interface address. Argument may be numeric IP
>address or name of  device.  When pinging IPv6 link-local address this option
>is required.

When this sort of disagreement pops up, it is helpful to remember that many 
"standard" Unix/Linux programs actually exist in multiple versions, even 
with up-to-date distros. In this instance, for example, my ping app (on a 
fairly current Debian-Sid system) behaves as Beolach's version does, not as 
Richard's does. For example:

         ray@kuryakin:~$ ping -I eth0 celine
         bad interface address 'eth0'
         ray@kuryakin:~$ ping -I 192.168.1.2  celine
         PING celine.comarre (192.168.1.23): 56 data bytes
         64 bytes from 192.168.1.23: icmp_seq=0 ttl=254 time=798.5 ms
         64 bytes from 192.168.1.23: icmp_seq=1 ttl=254 time=0.7 ms

(And my version of "the" man page for ping doesn't even mention the -I flag.)

>root@localhost:/# ping -I eth0 192.168.10.23
>PING 192.168.10.23 (192.168.10.23) from 192.168.10.15 eth0: 56(84) bytes of
>data.
>64 bytes from 192.168.10.23: icmp_seq=1 ttl=255 time=0.151 ms
>64 bytes from 192.168.10.23: icmp_seq=2 ttl=255 time=0.148 ms
>64 bytes from 192.168.10.23: icmp_seq=3 ttl=255 time=0.153 ms
>
>Now if i try that from my router then i get the same as Chuck gets, why it is
>i dont know and to be honest i dont really care as i do not see the point in
>using the -l option in this case period.

I want to second this final comment. Using tricky tests is always worse 
than using straightforward ones, and this is, at best, a tricky test of 
routing capabilities. I don't know how to interpret successes or failures, 
and I've seen no indication in this discussion that anyone else here does 
either. OTOH, testing whether a router actually routes by trying to connect 
an actual, distinct host through it is a familiar exercise, with known, 
interpretable failure bahaviors.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
