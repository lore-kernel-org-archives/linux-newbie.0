From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: DNS Questions
Date: Thu, 26 Sep 2002 11:22:49 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c26570$93a9da80$64fea8c0@pkrausxp>
References: <5.1.0.14.1.20020926075928.025fbd40@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020926075928.025fbd40@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Ok so from how I understand it. A request is made to the local DNS
server. That server checks its DNS records if it does not know the
address it passes the request to stated DNS servers if that server does
not know then it sends it to the root server.

So does it go request-localdns-ispdns-rootdns then reversed on the way
back or does it go
Request-localdns-ispdns FAILED
       -localdns-rootdns

I guess it doesn't matter but I am curious.

Then if that address is good then the result is cached. Now lets say
that a cached result is no longer good because the DNS entry has changed
for that machine. Will the DNS server report it as down or will it go
out again and see if it has been updated?

Paul

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com] 
Sent: Thursday, September 26, 2002 11:12 AM
To: Paul Kraus; linux-newbie@vger.kernel.org
Subject: Re: DNS Questions


At 10:16 AM 9/26/02 -0400, Paul Kraus wrote:
>My internal network is connected to a router/firewall all address are 
>down with Nat. So no machines on my network have an outside ip. Our dns

>is supplied by our ISP and we have 2 others we use that are supplied by

>our web site hosting company these dns servers are not apart of our 
>internal network. If I wanted to setup a dns server on the internal 
>network what would be the benefit? Why would I want to do this?

1. The same DNS server can resolve local (on-LAN) FQNs and Internet
FQNs.

2. Because the DNS server will cache results, frequently accessed FQNs
will 
resolve both faster and without using part of your external bandwidth.

3. On-LAN communication is faster than off-LAN communication, so
resolution 
will be faster.

(I'm assuming in this reply that you do not need a DNS server that is 
authoritative, off LAN, for your domain. You can do that too, but it 
involves a bit more work.)

>I have
>been reading a lot of books on Linux and all of them recommend running 
>a dns server. How would this server get/maintain a list of all the dns 
>records that our current dns servers have.

Depends on how you set it up. Any user-level DNS server needs to know
where 
to go to get info on names. There are three asnwers to this question:

1. It is itself authoritative for the name. In your case, this would
apply 
only to on-LAN resolution.

2. If it does not already know the answer, it queries another DNS server

designated as a "forwarder". This could be your ISP's DNS server or the 
Web-hoster's DNS servers.

3. If it does not already know the answer, it queries the root DNS
servers 
(the ones that are authoritative for TLDs -- .com, .org, the country
TLDs, 
and so on). They refer it to DNS servers authoritative for the next name

level up, and so on, until the server gets an answer for the actual FQN.

The standard for supplying a DNS record includes an expiration field in
the 
record. The normal behavior for DNS servers is to cache records until 
either they reach their expiration time or the system runs out of cache 
space. That's how they "maintain" the lists.

>Is this what they even mean
>or do they mean just to cover the internal machines. If that's the case

>why bother. Any insights are greatly appreciated.


Setting up a DNS server to cover *just* the LAN is possible, but it 
introduces some problems for resolving off-LAN names. A combined (on-
and 
off-LAN) DNS server lets you skip having each on-LAN host contain 
an/etc/hosts (or equivalent) file. (I believe an all-Windows LAN can
avoid 
this necessity because its SMB server acts as a sort of DNS server for
the 
LAN, but I really don't know the details of this.)


--
-------------------------------------------"Never tell me the
odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------
-------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
