From: Ray Olszewski <ray@comarre.com>
Subject: Re: Network and Apache Question
Date: Tue, 21 May 2002 19:43:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020521192809.020f4600@celine>
References: <200205220156.g4M1uKDn028220@smtp-server6.tampabay.rr.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205220156.g4M1uKDn028220@smtp-server6.tampabay.rr.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: jim@kc4hw.net, linux-newbie@vger.kernel.org

At 09:56 PM 5/21/02 -0400, Jim Johnson wrote:
>Hello Everyone,
>
>I am still unable to access the apache web server
>http://www.kc4hw.homelinux.net via the internet.  I am able to access the
>apache web server from the lan, so the server is running.
>
>My configuration is Red Hat 7.2, kernel 2.4.18, Apache 1.3.24, using a
>Linksys BEFSR81 router/firewall.  The Linux box has been assigned
>address 192.168.1.114 by the Linksys device and I have enabled this
>address in the Linksys DMZ Host, which is suppose to make this machine
>visible from the internet.
>
>I have an amateur radio application running that is visible via telnet,
>however, I have not been able to access apache via the internet.
>
>Can someone help with this?


Maybe. First off, I also cannot connect to it. Nor can I ping it , and a 
traceroute stops here--

         25  HE6-EAST-UBRB-P10.cfl.rr.com (24.95.225.2)

So your connectivity problems appear to bigger than you seem to realize. (I 
do get the telnet prompt from port 8000, though.)

Since I see you use rr.com, the first thing you need to check is whether 
your ISP is blocking access to port 80. Some time ago, rr.com did exactly 
this (and a lot of people had to move their Web servers on non-standard 
ports, much as you run your telnet app on a non-standard port, to work 
around this new "feature" of the service provisioning). In my circles, 
rr.com is notorious for making things hard for users who want to veer even 
slightly from rr.com's very narrow model of what activities are acceptable.

If the problem is with rr.com, try running the service on a high port (8080 
is a common choice) and port-forwarding that port to apache (either port 80 
or port 8080 internally, depending on how flexible the Linksys router is 
about port forwarding).

If you check and find that the problem is not with rr.com, then you ned to 
look at your various logs to see where the problem is locally.

1. Check the apache logs to see if the connections reach apache, and 
whether apache responds to them.

2. This isn't a Linksys support list, and I've never actually worked on one 
of the things ... but surely they maintain some sort of log of DENY'd 
packets. See if the ones from either a connection attempt or a response 
attempt (from apache) are logged as blocked for some reason.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
