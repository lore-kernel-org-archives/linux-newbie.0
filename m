From: "Jim Johnson" <jim@kc4hw.net>
Subject: Re: Network and Apache Question
Date: Wed, 22 May 2002 06:21:55 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205221021.g4MALrCk004010@smtp-server1.tampabay.rr.com>
References: <200205220156.g4M1uKDn028220@smtp-server6.tampabay.rr.com>
Reply-To: jim@kc4hw.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020521192809.020f4600@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for the help on this problem.  I think I am beginning to understand 
why now.

A couple of more questions:

On 21 May 02, at 19:43, Ray Olszewski wrote:

> At 09:56 PM 5/21/02 -0400, Jim Johnson wrote:
> >Hello Everyone,
> >
> >I am still unable to access the apache web server
> >http://www.kc4hw.homelinux.net via the internet.  I am able to access the
> >apache web server from the lan, so the server is running.
> >
> >My configuration is Red Hat 7.2, kernel 2.4.18, Apache 1.3.24, using a
> >Linksys BEFSR81 router/firewall.  The Linux box has been assigned address
> >192.168.1.114 by the Linksys device and I have enabled this address in the
> >Linksys DMZ Host, which is suppose to make this machine visible from the
> >internet.
> >
> >I have an amateur radio application running that is visible via telnet,
> >however, I have not been able to access apache via the internet.
> >
> >Can someone help with this?
> 
> 
> Maybe. First off, I also cannot connect to it. Nor can I ping it , and a
> traceroute stops here--
> 
>          25  HE6-EAST-UBRB-P10.cfl.rr.com (24.95.225.2)
> 
> So your connectivity problems appear to bigger than you seem to realize. (I
> do get the telnet prompt from port 8000, though.)
> 
> Since I see you use rr.com, the first thing you need to check is whether
> your ISP is blocking access to port 80. Some time ago, rr.com did exactly
> this (and a lot of people had to move their Web servers on non-standard
> ports, much as you run your telnet app on a non-standard port, to work
> around this new "feature" of the service provisioning). In my circles,
> rr.com is notorious for making things hard for users who want to veer even
> slightly from rr.com's very narrow model of what activities are acceptable.

Will leave "sleeping dogs lie" on this, until I have exhausted other 
possibilities with configuration.  
> 
> If the problem is with rr.com, try running the service on a high port (8080
> is a common choice) and port-forwarding that port to apache (either port 80
> or port 8080 internally, depending on how flexible the Linksys router is
> about port forwarding). 

The Linksys allows port forwarding.  But this machine is enable as a DMZ 
Host in the router.  

So if I enabled port 8080 (or another port) in httpd.conf, then it would 
serve pages upon request to http://www.kc4hw.homelinux.net:8080?  
> 
> If you check and find that the problem is not with rr.com, then you ned to
> look at your various logs to see where the problem is locally.
> 
> 1. Check the apache logs to see if the connections reach apache, and 
> whether apache responds to them.
> 
> 2. This isn't a Linksys support list, and I've never actually worked on one
> of the things ... but surely they maintain some sort of log of DENY'd
> packets. See if the ones from either a connection attempt or a response
> attempt (from apache) are logged as blocked for some reason.

Thanks, I never thought to check the logs.  Guess this should have been 
the first thing to check....Guess that why I am a newbie!  

I suppose I should take additional questions in this area to the Apache 
list.  Thanks for the help once again.  It is nice to be able to ask 
questions about different Linux project at this list and get good intelligent 
advice (no flames).. 

Best regards!


Jim Johnson, Melbourne, Florida
jim@kc4hw.net - http://www.kc4hw.net
DXCluster RF Connection: 144.97
Telnet://kc4hw.homelinux.net:8000
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
