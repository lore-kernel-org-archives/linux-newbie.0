From: Ray Olszewski <ray@comarre.com>
Subject: Re: start up script
Date: Sat, 06 Mar 2004 09:12:16 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040306085507.046b8298@celine>
References: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

As someone else already noted, this idea is not as straightforward as you 
might think it is. Offhand, I cannot think of a situation in which it is a 
good solution. But you know your actual problem better than I do, so let me 
tell you what I can about your questions, and leave it to you to decide.

At 02:43 AM 3/6/2004 -0800, Ravi Kumar Munnangi wrote:
>Users,
>
>   Iam working in a LAN with a number of systems.
>   A system has X hardware address and another has Y
>hardware address.
>   I want to set the hardware address of the second
>system
>   also to X.

OK. Whether you can do this or not is a hardware issue ... some NICs 
support it, but others do not. In any case, read the man page for 
"ifconfig" (or maybe "ip", if your system does not use ifconfig) to see the 
Linux part of this.

>   I also want to set the primary IP addresses of both
>   systems to 172.31.19.30.

OK. As you probably already know, you do this the same way you would set 
the machine to ANY IP address. The exact details are a bit distro 
spcecific, and you don't mention which Linux distro you are using ... you 
may use "ifconfig" directly, "ip" directly, or "ifup" in conjunction with a 
config file (usually /etc/network/interfaces).

>   So when I ping to 172.31.19.30, both the systems
>   should respond.

Yes, because ping is pretty good at handling multiple addresses, and icmp 
is "connectionless". Whether more complex and TCP-based protocols like http 
will also work in this setup is less clear to me ... I'd wonder if anyone 
has ever tried it (except as an accidental misconfiguration).

>   The topology of LAN we are using is star. All
>systems
>   are connected to a Switch.
>   Does the settings change when we are using a bus
>   topology?

Probably not ... but I am not certain what you mean by "bus" in this 
context. Are you referring to some sort of ring network (like an old-style 
thinnet LAN)?

>   Do I have to write a start up script?
>   How should I write?

These are distro-level questions ... and to some extent kernel level. Post 
a followup with the usual details on your setup ... what distro, what 
version, what kernel version, what NICs and modules ... and I or someones 
else might be able to answer this one.

>    My actual goal is to start 2 web servers on two
>   systems with same hardware address and same
>   primary IP address but with different secondary
>   IP addresses. So when a request comes from a
>   client, the request has to be seen by both
>   systems. I will write some mechanism by which only
>   one will respond finally.

Before you spend too much time on this approach, you want to think through 
the "some mechanism" piece. Hand waving won't do here, and I don't see a 
sensible way to create a mechanism that will work.

My best *guess* is that you want to do one of two things --

         1. Load balance -- in normal operation, have each server handle 
roughly half of the traffic.
         2. Failover -- in normal operation, have one server handle all of 
the traffic, but have the second ready and waiting to "hot swap" in if the 
first should fail.

Either of these needs can be achieved in other, more conventional ways than 
what you propose to try. The details depend on the content of the Web site 
... how much of it is dynamically generated, and how it is generated, how 
often its static content changes, how you intend to keep the two machines' 
versions of the Website in sync, and the like ... and may involve a third 
host (or even a fourth, if a large, shared database is involved).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
