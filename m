From: Ray Olszewski <ray@comarre.com>
Subject: Re: Translating IP tables
Date: Tue, 01 Feb 2005 09:23:36 -0800
Message-ID: <5.1.0.14.1.20050201085653.02be6918@celine>
References: <1106125343.4183.7.camel@localhost.localdomain> <007201c5087d$e2924c60$1f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <007201c5087d$e2924c60$1f0aa8c0@lanadmin>
References: <1106125343.4183.7.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-71C24702"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:48 AM 2/1/2005 -0500, Eve Atley wrote:


>I'm wanting to set up to allow port 23 to be accepted via the internet in my
>Linux box running RedHat Linux Enterprise Workstation. I did some research
>and have an output pasted below; am I truly allowing input/output from the
>internet?
>
>What I truly am attempting to do is telnet to port 5201 in order to allow
>for VNC, but it appears I can not telnet on port 23 either (telnetting to
>the machine on port 5201 should bring back an rfb: prompt, but connection is
>refused on both 5201 and 23); so, my first guess is that I need to allow
>port 23. Can someone assist me in cleaning up?

I won't belabor this point, but I do feel an obligation to mention, at 
least in passing, that accepting telnet (port 23) input on a server 
connected to the Internet is a major security risk. I assume you are a 
grownup and cam make your own decisions about balancing risks and benefits, 
but my conscience won't let me troubleshoot telnet problems without at 
least mentioning their riskiness.

In any case, getting port 5201 working DOES NOT require you first to get 
port 23 working. Although you can use the telnet *client* to test other 
ports, as you seem to be doing here, that sort of test works just fine 
without a functioning telnet *server* on the target host.

Below, I comment on your firewall rulesets in specific and identify the 
likely problem ... but not the solution, because I do not know how RH 
generates its rulesets. If you were able to modify the INPUT chain, though, 
I guess you do, so you can use that knowledge to modify the 
RH-Firewall-1-INPUT so it ACCEPTs port 5201.

>Thanks,
>Eve
>
>
>Chain INPUT (policy ACCEPT)
>target     prot opt source               destination
>RH-Firewall-1-INPUT  all  --  anywhere             anywhere
>ACCEPT     tcp  --  anywhere             anywhere           tcp dpt:telnet

Because the first rule directs all traffic to the RH-Firewall-1-INPUT 
chain, subsequent rules have no effect. So the second, ACCEPT rule is 
irrelevant.

>Chain FORWARD (policy ACCEPT)
>target     prot opt source               destination
>RH-Firewall-1-INPUT  all  --  anywhere             anywhere
>
>Chain OUTPUT (policy ACCEPT)
>target     prot opt source               destination
>
>Chain RH-Firewall-1-INPUT (2 references)
>target     prot opt source               destination
>ACCEPT     all  --  anywhere             anywhere
>ACCEPT     icmp --  anywhere             anywhere           icmp any
>ACCEPT     ipv6-crypt--  anywhere             anywhere
>ACCEPT     ipv6-auth--  anywhere             anywhere
>ACCEPT     all  --  anywhere             anywhere           state
>RELATED,ESTABLISHED
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:smtp
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:http
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:ftp
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:ssh
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:7886
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:webcache
>ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
>dpt:cvspserver
>REJECT     all  --  anywhere             anywhere           reject-with
>icmp-host-prohibited

This chain is, probably,  the source of your problem. (In saying this, I am 
making a guess about its first entry; see next paragraph.) It needs ACCEPT 
rules for ports 5201 and (if you *really* want telnet itself) 23. And, for 
that matter, for ANY service that you wish to run on this host. (They need 
to have the same form as the rules currently present for smtp, heep, and so 
forth.) Without such rules, the traffic drops down to the last rule in this 
chain, which causes it to be REJECTed.

An aside: when listing rulesets, it is better to use the -nvL flags. The 
listings you provided here are incomplete ... probably not in ways that 
matter to your actual problem, but in ways that do often matter to ruleset 
troubleshooting ... for example, the first rule in the chain is 
incomprehensible as written in this output (it must have some flags set 
that are not listed in this format, or it would simply ACCEPT all traffic).

If my guess about this first rule is mistaken, then your iptables rules are 
NOT the source of the problem, and you need to tell us more about the VNC 
server installation itself. You are correct that it should reply to a 
telnet connection with a prompt that begins with "RFB" (on my VNC host, it 
is "RFB 003.003"). Make sure that the vncserver is actually listening on 
port 5201 ("netstat -ln" is one way).




-- 
Internal Virus Database is out-of-date.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.7.4 - Release Date: 1/25/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
