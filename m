From: Ray Olszewski <ray@comarre.com>
Subject: Re: Optimizing I/O via kernel changes
Date: Tue, 11 May 2004 09:52:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040511085919.01f14ad8@celine>
References: <6CE6A442029B3347890ED9FCA94FAE0701EEAF57@nsxmail.netscout.
 com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0701EEAF57@nsxmail.netscout.
 com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:30 AM 5/11/2004 -0400, Gosselin, Mark wrote:
>Hi List,
>
>I've been asked the following question by our VP of Development.
>
>Is there some kernel parameter (or parameters) that we can tweak to 
>improve our I/O on a Linux Server??
>
>Since I'm new to Linux, I figured someone one one of these lists might 
>have a concise answer to that
>question. Can we use the kernel tomincrease I/O rates, or are we bound by 
>hardware??

This question is too vague to elicit a meaningful answer. Even assuming you 
mean Mbps on an Ethernet by "I/O rates" (there are other possible meanings, 
of course), knowing whether your particular setup is hardware or software 
bound requires knowledge of your hardware and software ...

         what NIC? (if not 100 Mbps, mention speed)
         what CPU? (type and speed)
         how much RAM?
                 is the system *ever* using swap?
         any relevant IRQ sharing?

         what Linux distro and version?
         what Linux kernel ("uname -a")?
         custom or stock kernel?
         what NIC module and parameters?
         what (if any) iptables rules are you running?
         does "ifconfig" show any appreciable error rate?

         what relevant services are you running?
         what "I/O rates" are you currently seeing?
         if the relevant connectivity is not just Ethernet (for example, if 
it is a DSL connection to the Internet), what type and speed of connection 
is it?
         how "busy" is the system during normal operation?
                 what % CPU use does "top" report?
                 what blocking ("load averages") does "uptime" report?

Depending on the details of the response, there could be ways to speed up 
throughput, such as reducing the complexity of firewall rulesets,  tweaking 
NIC module settings, rearranging IRQ assignments, conceivably doing some 
tailoring to specific service needs, possibly tailoring packet size (MTU) 
settings to a link layer other than Ethernet.

  As a general matter, you may want to look at the settings described in 
your kernel Documentation under ./Documentation/networking/ip-sysctl.txt 
and at the doc file in the same directory for your NIC. But there is no 
magic "faster" switch in the kernel (or at least none I know of) that is 
turned off by default (why would there be?).

In practice, 100 Mbps Ethernet NICs under Linux seem to deliver somewhere 
between 50 Mbps and 80 Mbps on a sustained basis, depending on things I'm 
not sure of (kernel version? specific NIC hardware?).

And, of course, if I have misinterpreted your use of "I/O rates", this 
entire response is meaningless for your purposes.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
