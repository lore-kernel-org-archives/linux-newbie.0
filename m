From: Ray Olszewski <ray@comarre.com>
Subject: RE: DNS Questions
Date: Thu, 26 Sep 2002 09:10:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020926090455.025fa4b0@celine>
References: <5.1.0.14.1.20020926075928.025fbd40@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c26570$93a9da80$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 11:22 AM 9/26/02 -0400, Paul Kraus wrote:
>Ok so from how I understand it. A request is made to the local DNS
>server. That server checks its DNS records if it does not know the
>address it passes the request to stated DNS servers if that server does
>not know then it sends it to the root server.
>
>So does it go request-localdns-ispdns-rootdns then reversed on the way
>back or does it go
>Request-localdns-ispdns FAILED
>        -localdns-rootdns
>
>I guess it doesn't matter but I am curious.

It depends on the particular DNS server you are running and how you have it 
configured. Typically, though, if you have a forwarder set up (what you 
call ispdns in your restating), the local DNS server will only go to the 
forwarder. The forwarder will then do the work of tracking down the answer 
via the root servers.


>Then if that address is good then the result is cached. Now lets say
>that a cached result is no longer good because the DNS entry has changed
>for that machine. Will the DNS server report it as down or will it go
>out again and see if it has been updated?

Neither. The DNS server will just report the incorrect information in the 
cache; there is no mechanism in DNS for telling a caching DNS server 
"you're wrong, please try again". This is why it is important that the 
authoritative DNS server supply sensible expiration times with its replies 
... so that obsolete information is not sitting arouund the Internet in DNS 
caches. (You will sometimes see this problem discussed in the context of 
how long it takes for a DNS change to "propagate".)


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
