From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting up a LAN to use DSL - Getting quite desparate -
  using public IP on router with private IP on clients
Date: Tue, 14 May 2002 12:16:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020514191618.00f476cc@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Phillp Morgan <pmorgan@quickpages.net.au>, linux-newbie@vger.kernel.org

OK, Phillip. With this more detailed review of your setup (which  is very
good at not at all too long, given the messiness of your problems), I can
observe a few relevant things.

1. What I can connect to from here does NOT match what you describe running.
Specifically, working by IP address, I can ping all 3 "real" addresses you
are using. I can also connect to some Microsoft SMTP server on the Windows
host. -BUT- I cannot get a sendmail banner from port 25 on either Linux
host. Your end acts like something is listening on port 25, but not
sendmail. You might see what "netstat -l" [lower-case L] reports.

2. You say that trying to connect to www.quickpages.net.au from off-LAN
encounters DNS problems:

>Attempting to get to the site via a browser fails with DNS error.

This is inconsistent with my experience here. Using Netscape, I get the
message; "There was no response. The server could be down or is not
responding." From Netscape, this message unambiguously indicates that it WAS
able to resolve the URL to an IP address ... i.e., there was NOT a "DNS
error". If you are *sure* you are encountering a DNS error here, please
describe it in detail. My guess is that the DNS is OK here, but you have
either a static-NAT problem or an Apache configuration problem. (Can you
connect to http://61.95.1.222/ ? If you cannot (I can't, BTW ... nor do I
get the customary responses from telnet or ftp to that address), then your
problem is NOT with DNS.)

3. Since I'm not a specialist in "OpenNetworks 501R" DSL routers, I cannot
say what routing behavior is normal for them. That a router that does static
NAT cannot route to the NAT'd external addresses fom on the LAN is not all
that odd, though. Linux routers can do such routing (easy on 2.4.x kernels,
possible but uglier on 2.2.x), but it is pretty inefficient use of LAN
bandwidth, so not implementing it is not all that strange. What does seem
strange to me is that a host can reach its own static-NAT'd external address
but not others.

4.Part of your DNS problem may be a typo; in the last SOA field (TTL), you
have a 0, and my resolver (when accessed by host; I don't have nslookup
installed) here complains about it. Try replacing it with 1D (the symbolic
for one day) or the numeric equivalent in seconds, and see if that helps. 

5. The nslookup failure involves your named service as a resolver service,
not as the authoritative DNS server for your domain. That is, it is having
trouble with the entry in /etc/resolv.conf, not the BIND configuration
stuff. At least I think this is the case; to check, see if nslookup returns
the same error if you try to resolve an outside FQDN (try mine, or
vger.kernel.org, or any well-known name). 

6. The sendmail problems you report are a byproduct of the resolver problems
(that is, sendmail is failing for the same underlying reason as nslookup,
even if the exact cause is unclear). SMTP programs are somewhat unusual in
that they use ONLY DNS for resolution, not /etc/hosts .

7. As to Apache ... the real thing you need to sort out is whether the Web
problems are in Apache or in the router's static-NAT functionality. If the
requests are reaching Apache but Apache is not set up to handle them
properly, you should find indications of that in the Apache logs (maybe in
/var/log/apache/, though I don't actually know what configuration settings
Slackware uses here). If they (the external attempts, that is, or internal
ones that use the external addresses) are never even reaching the Apache
server, then you need to look into the router's setup a bit more closely.

8. It might alo help to know if you can connect to the Web server on-LAN
using its private address in the URL. If not, what do the logs recordy about
such attempts?

9. Since you are still trying to get your *default* Web server working, it
isn't clear to me why you are using VirtualHosts yet. (One small thing about
that part: the examples I can find for Listen all use either a.b.c.d:port or
port, never just a.b.c.d ... so you might see if "Listen 61.95.1.222:80"
works any better.) As I read the stuff you report, it appears that you are
trying to use the machine's real name (or so it seems, from what you list in
/etc/hostname) as a VirtualHost entry. I would think this harmless but
unnecessary.

10. Incidental comment: the output of "route -n" is more useful than
"route", because it doesn't replace IP address ranges for networks with
sympolib names like "localnet" and "loopback".

11. Fianlly, I find it VERY puzzling that, from the server qpbd999, you can
*ping* its external static-NAT address (61.95.1.222) successfully, but you
cannot *traceroute* to it. As you report:

>qpbd999:/etc# ping www.quickpages.net.au
>PING qpbd999.quickpages.net.au (61.95.1.222): 56 data bytes
>64 bytes from 61.95.1.222: icmp_seq=0 ttl=254 time=3.0 ms
>64 bytes from 61.95.1.222: icmp_seq=1 ttl=254 time=3.1 ms
>64 bytes from 61.95.1.222: icmp_seq=2 ttl=254 time=3.0 ms

 ... and ...

>qpbd999:/etc# traceroute www.quickpages.net.au
>traceroute to qpbd999.quickpages.net.au (61.95.1.222), 30 hops max, 40 byte
>packets
> 1  192.168.0.1 (192.168.0.1)  14.753 ms  14.955 ms  15.081 ms
> 2  * * *
> 3  * * *
> 4  * * *
>etc...

This causes me to suepect that the static-NAT setting of te router aren't
correct, but I admit I don't really see how they can be wrong in this
particular way.

At 03:32 PM 5/14/02 +1000, Phillp Morgan wrote:
>Hi all,
>
>Around three weeks ago our new ISP sent us an OpenNetworks 501R DSL router
>that they say supports multiuple IP addresses and static-NAT. We've been up
>and down so many times, we are getting desparate to resolve this issue once
>and for all...
>
>I have included the contents of all of the configuration files I can find in
>the hope that this will help quickly identify a solution. Please forgive me
>for the length of this email.
>
>We have two linux servers and an NT server, with a dozen or so XP clients,
>and a couple of MACs.
>
>The first Linux server runs as primary DNS (Bind 8), email server (sendmail
>8.9.3), and Web server (apache 1.3.6). I also use Telnet and ftp on the
>server from out of the office, and we provide a web based email service to
>our staff.
>
>The second Linux server is used for secondary DNS, and as a simple means of
>backing up files from the primary server.
>
>The NT server is used for our Primary Domain Controller for network access,
>storage of our company data and some applications.
>
>I can telnet and ftp to the primary linux server from outside the office.
>But I can't get any web sites working. Any browsers I use say "Server not
>found or DNS error".
>
>As the ISP will not give us public IP addresses for each machine, I've
>converted from IP based web site hosting to name based using the
>NameVirtualHost directive in Apache.
>
>The router supposedly NATs all traffic from a public IP address to the
>private IP address, regardless of port. This is required because we
>telnet/ftp etc to all of the servers from time to time, and portmapping
>would be quite cumbersome (we'd have to assign different port numbers for
>telnet on each machine etc)...
>
>Email in and out appears to be working fine, for all domains. But I haven't
>really got virtual hosting for email configured, so the addresses are global
>(right?)
>
>There are essentially three problems.
>
>1. nslookup will not work
>2. Web pages are not served, for any of the hosted sites, from external
>clients
>3. Web pages are not served, for any of the hosted sites, from internal
>clients
>
[details deleted from reply]


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
