From: Ray Olszewski <ray@comarre.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 09:08:24 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040121084121.01f36ad8@celine>
References: <5F84A09ECDD5D411973000508BE32470266024E7@exnyc07.lehman.co
 m>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5F84A09ECDD5D411973000508BE32470266024E7@exnyc07.lehman.co
 m>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 10:23 AM 1/21/2004 -0500, Chadha, Devesh wrote:
>Juan,
>
>Eth0 has the external assigned IP by my ISP. Eth1 has a 192.168.x.x ip
>address. Eth1 acts as the DHCP server for my LAN. My LAN is working fi=
ne. I
>can connect machines to the LAN and even connect one machine to anothe=
r.
>
>But I cannot get eth1 to talk to eth0. I cannot connect the LAN to the
>internet nor connect to any internal machine from outside!!
>
>Do I need to bridge the 2 NICs ???

This description is better than your first try, but it still leaves out=
 way=20
too much information. Terms like "connect" and "talk to" are, in this=20
context, too vague, and interfaces don't "talk to" each other by any=20
reasonable definition of "talk to". Moreover, some of what you say here=
=20
appears inconsistent with the first report (or perhaps you changed your=
=20
setup between them). So please go step by step and give us the required=
=20
details.

1. What is the physical setup here? In this second message, you talk ab=
out=20
connecting "the LAN to the internet", but the first message said bith N=
ICs=20
were "on the same subnet". Is this 2-NIC Linux host intended to act as =
a=20
router or not (I'm guessing yes)? If yes, does it need to NAT or not (I=
'm=20
guessing it does)?

2. What are the actual IP addresses involved, and what does the routing=
=20
table on the Linux host look like? (IP addresses are not secrets, after=
=20
all.) Show us the output of

         ifconfig -a [the complete entries for eth0 and eth1]
         netstat -nr

3. Assuming the Linux host is supposed to be acting as a router, do you=
=20
have it configured to do so? First, is ip_forwarding turned on (that is=
,=20
does "more /proc/sys/net/ipv4/ip_forward" return a "1")? Second, assumi=
ng I=20
read this correctly that the LAN uses private IP addresses=20
(192.168.c.d/16-24) and the ISP side a public address you have not=20
identified, you you have iptables set up to NAT the LAN?

4. What actual tests are you making, and what are their actual results?=
=20
Hosts don't "talk to" each other. They "ping", and "telnet", and "ssh",=
 and=20
a bunch of other things ... we need to know what fails (and how -- ping=
,=20
for example, fails in at least 4 distinct ways) to be able to diagnnose=
 a=20
problem beyond offering wild guesses (as I have above).

5. Can the Linux router itself ping, or make other connections, to Inte=
rnet=20
hosts? That is, does eth0 work at all, as configured? Be specifc in you=
r=20
response about what tests you emplyed to answer this.

6. If you do post again, please include the basics of your setup: What=20
Linux distro and version, what kernel ("uname -a"), what NICs, and the=20
specifics I asked for above. Note the number of times I had to "guess" =
or=20
"assume" something, and it will tell you how much important detail you'=
ve=20
left out.

If I'm ***guessing*** correctly about your setup, you need to be NAT'in=
g a=20
private-address LAN. If so, you will, with a bit of work, be able to se=
t it=20
up so that the LAN hosts can initiate connections to Internet hosts=20
(assuming your ISP is not doing something unusual with your service). B=
ut=20
setting things up to that Internet hosts can initiate connections to LA=
N=20
hosts will be more involved, and more limited, since they all share a=20
single public (routable) IP address ... you'll need to use port forward=
ing=20
(DNAT, in iptables terms) and make only one host available per service.

=46inally, and just as a matter of form, I must object to you (or anyon=
e)=20
posting messages to this list with the assertion that they are=20
"confidential" and that "any review, dissemination,  distribution or=20
copying of this message is strictly prohibited". I understand that the=20
attachment of this baloney is outside your personal control ... but it =
is=20
baloney nonetheless, and you and your employer need to understand that =
it=20
is made meaningless by the act of you sending the message to a mailing =
list.

>-----Original Message-----
>From: Juan Facundo Su=E1rez [mailto:facundo.suarez@ensi.com.ar]
>Sent: Wednesday, January 21, 2004 10:13 AM
>To: linux-newbie list
>Subject: Re: 2 NIC cards not talking
>
>
>Sorry, i don't understand at all. You say that you have two cards, in =
the
>same machine, are them in the same subnet ? why don't you put one, wic=
h
>connects to "outside" in one, and the other in another subnet?. I have
>working a firewall/router with iptables, and the card is connected to =
de
>adsl-modem has 192.168.1.10, and the card to brins internet to the lan=
 has
>192.168.0.1.
>
>  If you cannot ping from a machine in one subnet, to another in other
>subnet, maybe you need to load the kernel-module wich does that job.
>
>--
>Facundo Su=E1rez
>Neuqu=E9n - Argentina
>FDSoft
>mail y jabber: faco@fdsoft.com.ar
>facundo.suarez@ensi.com.ar
>
>----- Original Message -----
>From: "Chadha, Devesh" <devesh.chadha@lehman.com>
>To: <linux-newbie@vger.kernel.org>
>Sent: Wednesday, January 21, 2004 11:25 AM
>Subject: 2 NIC cards not talking
>
>
>| Hi,
>|
>| I have a linux box with 2 NIC cards, both are properly configured.
>| Both
>are
>| on the same subnet, but still don't ping to one another!!
>|
>| I need to setup the box as the firewall/router that has eth0 set as
>external
>| and eth1 as internal serving as DHCP server to other computers on th=
e
>| network. Both have static IPs assigned to them.

[boilerplate baloney deleted]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
