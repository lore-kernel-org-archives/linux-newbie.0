From: Ray Olszewski <ray@comarre.com>
Subject: setting up a LAN to use DSL (was: Re: [no subject line])
Date: Thu, 02 May 2002 08:38:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020502153851.010dfdec@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Phillip Morgan <pmorgan@qpbd999.quickpages.net.au>, linux-newbie@vger.kernel.org

Phillip -- Setting up a network of the sort you describe is not hard, but it
is not so easy that I (or anyone, I'd guess) can realistically write out a
step-by-step HowTo as an e-mail reply. I'd suggest consulting the usual
sources for relevant HowTos, then posting here specific questions that
describe what you tried and what the symptoms of the problems are. 

"Problem is it don't work" isn't much to go on. What doesn't work? The
NAT'ing? DNS? Some things work ... you say the NAT'd systems can reach the
Internet ... but from what you write, I can't really tell if "this set up"
refers to the network setup or the BIND setup. 

One place you might find helpful ... on the networking part ... is the FAQ
on the LEAF Project (leaf.sourceforge.net). Even though you are not using a
LEAF router (what are you using, BTW? you name 2 Linux servers and one NT
server, but only refer to the fourth machine as "the router"), the sections
I wrote on interpreting ping failures might help you to isolate and even
icentify the problems you are experiencing.

Short of a complete answer to "what is the right way to do this", let me
touch on a few possible problem areas.

Four IP addresses is an unusual number to get. What are the associated
netmask, network, and broadcast values they told you to use? Especially the
netmask. Also the gateway address.

For the address range you report, the only netmasks that make sense are /30
(4 addresses), in which case .20 is the network address, .23 the broadcast,
and you have only 2 usable addresses; and netmasks greater than /28 (16
addresses, or 32, 64, etc.). Or they might be doing some sort of host
routing on the line, and not actually useing a netmask as such (though you
still need to figure out an appropriate one, one that will let the hosts
reach each other and the gateway.)

The problems you do report for the NAT'd hosts sound like either a DNS
problem or a routing problem. Without knowing what the router is, it is
difficult to make specific suggestions. But you can check these things:

        1. Does the router have a route to the e-mail server? 
                ("netstat -rn" is one way to check this on a 
                Linux system; pinging is a way for any system).

        2. Does the e-mail server have a route to the router?

        3. Are the user hosts using DNS servers that can resolve
                the name of the e-mail system (or, alternately, are
                you specifying it by IP address, not FQDN)? This 
                migh mean using a DNS resolver on the router as a
                forwarder, using the actual (authoritative) DNS
                servers directly, or using other DNS servers that know
                your local DNS servers are authoritative for the 
                domains you host.
  
        4. Does the router have a route to either or both of the DNS
                servers?

        5. Do the 2 DNS servers have routes to each other (your odd
                update message sounds like the slave perhaps did not
                really get an update from the master ... but trying
                to interpret paraphrased error messages is always
                difficult, as you know)?


The more I write, the more I suspect you have a routing problem. If checking
the things I named above doesn't do the trick, try a followup with this
information from each host with a real IP address (the 2 Linux systems, the
NT system, and whatever the router is):

        1. Complete, exact output of "ifconfig -" or equivalent
        2. Complete, exect output of "netstat -nr" or equivalent
        3. If each system can ping the others by IP address, say
                so. IF not, report *how* the ping fails (either 
                the error message it gives or that it fails silently).
        4. From a representative NAT'd client, the results of test #3,
                with respect to each of the servers.
 
You might also describe the physical setup of the LAN, specifically how that
4 devices with real IP addresses are connected to the Internet. I've been
assuming that all four are connected directly to some sort of DSL "modem"
that can handle multiple IP addresses. But if the other 3 are behind the
router, how are you making their addresses visible on the Internet (for
example, does the router do proxy-ARP or static NAT)?

At 08:02 PM 5/1/02 GMT, Phillip Morgan wrote:
>Hi all,
>
>I have 2 slackware linux servers (kernel 2.2.6), running on a lan with 
>a winNt4 Sp6 system, and 10 Windows XP clients. One linux is primary 
>DNS, web (apache), mail (sendmail), and ftp/telnet. The second linux is 
>for secondary DNS and backup only.
>
>NT box is the pdc for the users and also runs MS SQL and coldfusion. 
>
>I am converting over to ADSL and my ISP has given me 4 IP addresses 
>only. One for each server and one for the router. The servers public 
>addresses are 61.95.1.221 - 61.95.1.223, and the router is 61.1.95.220. 
>The private addresses are 192.168.0.2 - 192.168.0.4, with the router 
>being 192.168.0.1 (the gateway for all clients). They say they have 
>correctly NAT'd the public to private addresses.
>
>I'm running Bind 8 for the named/dns
>
>I host 5 domains, and they share a single IP (ie they use named based 
>virtual hosting).
>
>Problem is it don't work.
>
>I set up the DNS files with the public addresses and redelegated the 
>domains. Couldn't get to web site from outside, but what's even worse, 
>none of the internal clients could receive email, display any of the 
>websites, but could send email and surf outbound.
>
>So, question - what is the right way to do this? Where might I find 
>some detailed documentation on this set up?
>
>ps. When I did get the DNS files set up, the primary dns server sent a 
>notify to the secondary, which then said it reeceived the notify from 
>itself, which is a non-master??? Say what?
>
>Cheers



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
