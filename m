From: Ray Olszewski <ray@comarre.com>
Subject: Re: problems with Apache, FTP, SAMBA | Apache solved.
Date: Fri, 20 Jun 2003 13:46:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030620131740.02f6d200@celine>
References: <1056137708.2179.2.camel@Gandalf>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1056137708.2179.2.camel@Gandalf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: Linux Newbie <linux-newbie@vger.kernel.org>

At 03:35 PM 6/20/2003 -0400, Alan Bort wrote:
>I tried to send this mail as HTML, but the list rejected it... :-(

Actually, this is a :-) .

Many of us find the clutter of html formatting burdensome ... you'll=20
encounter a lot of this as you get more familiar with linux ... so you =
will=20
see that many Linux-related lists reject html-formatted mail. And even =
on=20
ones that do not reject it, experienced members (that is, the people wh=
o=20
*answer* questions) will often complain about it.

[apache stuff deleted]
> > >
> > > >                 FTP: I can't have access to anyone of the machi=
nes
> > trough
> > > > FTP. I am
> > > >having some troubles with the config... what should I configuree
> > > >again... what are the files that I should edit. When trying to c=
onnect
> > > >it just says conection refused.. nothing else. I'm having troubl=
es with
> > > >this. I use xinet.d's pro-ftpd.
> > >
> > > "Connection Refused" most likely means that nothing is listening =
on the
> > ftp
> > > port. Or it could mean that the particular  IP addresses you are
> > connecting
> > > from are disallowed. Or, just barely possible, you could have a f=
irewall
> > > rule in place that blocks access.
> > But the daemon is running (at least it should) I'll check when I ge=
t home.
> > >
> > > I surmise that you run ftp the usual way, through inetd (in your =
case,
> > > xinetd).
> > Yes. I do.
> > >
> > > Use "netstat -l" to verify that something is listening on port 21=
=2E
> > I'm not at home right now.  But I will ASAP.
>It does not show it. I see the problem now... but how do I solve it???

Unfortunately (for this purpose, anyway), I do not use xinetd here. I u=
se=20
inetd, so I cannot tell you how to configure xinetd to listen for incom=
ing=20
ftp requests. Possibly someone else here will jump in with the solution=
 If=20
not, or while you are waiting, I'd suggest reading over the man page fo=
r=20
xinetd (and any other docs ... they are usually in /usr/share/doc) to s=
ee=20
what you missed.


>Thanks.
>
> > >
> > > Check the xinetd configuration file to make sure it is listening =
on that
> > port.
> > HOW? I have in /etc/xinetd.d/pro-ftpd.conf the line disable=3Dno. T=
hat should
> > be enough... right?

As I said above, I have no idea.

But since nothing is listening on port 21, this is surely your problem.=
 The=20
queries about hosts_access and iptables are irrelevant to this problem.

> >
> > >
> > > Check hosts.allow and hosts.deny to see if they interfere with ac=
cess.
> > Nothing wrong there.
>In fact NOTHING there at all. They are blank.
>
> > >
> > > Check your firewall ruleset (probably with "iptables -nvL", if yo=
u run a
> > > 2.4.x kernel) to see if there are any rules that DENY access.
> > I tried #service iptables stop and still didn't work.
>
>Ok... this is going to be long...
>
>here is the output of iptables -nvL
>
>[root@ciccio-net /etc]# iptables -nvL
>Chain INPUT (policy DROP 0 packets, 0 bytes)
>pkts bytes target     prot opt in     out     source
>destination
>     0     0 DROP       all  --  *      *       0.0.0.0/0
>0.0.0.0/0          state INVALID
>     4   176 ACCEPT     all  --  *      *       192.168.23.114
>0.0.0.0/0
>18034 2264K ACCEPT     all  --  *      *       192.168.23.0/24
>0.0.0.0/0
>     0     0 ACCEPT     all  --  *      *       10.129.2.155
>0.0.0.0/0
>     3   232 ICMPACCEPT  icmp --  eth1   *       0.0.0.0/0
>0.0.0.0/0
>    10   600 REJECT     tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:113 reject-with tcp-reset
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:22
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:25
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:53
>     0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          udp dpt:53
>    17  4597 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:80
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:443
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:110
>334K  501M ACCEPT     all  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          state ESTABLISHED
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpts:1024:65535 state RELATED
>     0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          udp dpts:1024:65535 state RELATED
>     0     0 DROP       all  --  *      *       0.0.0.0/0
>0.0.0.0/0          state INVALID
>     0     0 ACCEPT     all  --  *      *       192.168.23.114
>0.0.0.0/0
>     0     0 ACCEPT     all  --  *      *       192.168.23.0/24
>0.0.0.0/0
>     0     0 ACCEPT     all  --  *      *       10.129.2.155
>0.0.0.0/0
>     0     0 ICMPACCEPT  icmp --  eth1   *       0.0.0.0/0
>0.0.0.0/0
>     0     0 REJECT     tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:113 reject-with tcp-reset
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:20
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:21
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:22
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:25
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:53
>     0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          udp dpt:53
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:80
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:443
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpt:110
>     0     0 ACCEPT     all  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          state ESTABLISHED
>     0     0 TCPACCEPT  tcp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          tcp dpts:1024:65535 state RELATED
>     0     0 ACCEPT     udp  --  eth1   *       0.0.0.0/0
>0.0.0.0/0          udp dpts:1024:65535 state RELATED
>=20
>
>Chain FORWARD (policy DROP 0 packets, 0 bytes)
>pkts bytes target     prot opt in     out     source
>destination
>86306   36M ACCEPT     all  --  !eth1  *       0.0.0.0/0
>0.0.0.0/0
>73152   20M ACCEPT     all  --  *      *       0.0.0.0/0
>0.0.0.0/0          state RELATED,ESTABLISHED
>     0     0 ACCEPT     all  --  !eth1  *       0.0.0.0/0
>0.0.0.0/0
>     0     0 ACCEPT     all  --  *      *       0.0.0.0/0
>0.0.0.0/0          state RELATED,ESTABLISHED
>=20
>
>Chain OUTPUT (policy ACCEPT 794155 packets, 49858689 bytes)
>pkts bytes target     prot opt in     out     source
>destination
>=20
>
>Chain ICMPACCEPT (2 references)
>pkts bytes target     prot opt in     out     source
>destination
>     0     0 ACCEPT     icmp --  *      *       0.0.0.0/0
>0.0.0.0/0          icmp type 0
>     0     0 ACCEPT     icmp --  *      *       0.0.0.0/0
>0.0.0.0/0          icmp type 3
>     0     0 ACCEPT     icmp --  *      *       0.0.0.0/0
>0.0.0.0/0          icmp type 0
>     0     0 ACCEPT     icmp --  *      *       0.0.0.0/0
>0.0.0.0/0          icmp type 3
>
>Chain TCPACCEPT (16 references)
>pkts bytes target     prot opt in     out     source
>destination
>     5   240 ACCEPT     tcp  --  *      *       0.0.0.0/0
>0.0.0.0/0          tcp flags:0x0216/0x022 limit: avg 5/sec burst 10
>    12  4357 ACCEPT     tcp  --  *      *       0.0.0.0/0
>0.0.0.0/0          tcp flags:!0x0216/0x022
>     0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
>0.0.0.0/0          tcp flags:0x0216/0x022 limit: avg 5/sec burst 10
>     0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
>0.0.0.0/0          tcp flags:!0x0216/0x022
>[root@ciccio-net /etc]#
>
>
>Now: I start that iptables configuration with this script (at boot tim=
e)
>
>[root@ciccio-net /etc]# cat /root/firewall
>#!/bin/bash
>#Comandos para la configuraci=F3n del FireWall de Data Systems. Versio=
n 2
>echo "## -- Iniciando Script de Firewall -- ##"
>=20
>
>#Masquerade from internal Net to External net
>iptables -P FORWARD DROP
>iptables -A POSTROUTING -t nat -o eth1 -s 192.168.23.0/24 -j SNAT
>--to-source 192.168.23.103
>iptables -A FORWARD -i ! eth1 -j ACCEPT
>iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
>=20
>
>echo "      #---Creating Accept Chains---#"
>iptables -P INPUT DROP
>=20
>
>#TCPACCEPT - Check for SYN-Floods before letting TCP-Packets in
>iptables -N TCPACCEPT
>iptables -A TCPACCEPT -p tcp --syn -m limit --limit 5/s --limit-burst =
10
>-j ACCEPT
>iptables -A TCPACCEPT -p tcp ! --syn -j ACCEPT
>=20
>
>#inbound ICMP
>iptables -N ICMPACCEPT
>iptables -A ICMPACCEPT -p icmp --icmp-type echo-reply -j ACCEPT
>iptables -A ICMPACCEPT -p icmp --icmp-type destination-unreachable -j
>ACCEPT
>=20
>
>#Kill invalid packets (Not established, related or new)
>iptables -A INPUT -m state --state INVALID -j DROP
>=20
>
>#Packets from internal net
>iptables -A INPUT -s 192.168.23.114 -j ACCEPT
>iptables -A INPUT -s 192.168.23.0/24 -j ACCEPT
>=20
>
>echo "      #---Packets from EXTERNAL net---#"
>iptables -A INPUT -s 10.129.2.155 -j ACCEPT
>=20
>
>#Filter ICMP
>iptables -A INPUT -i eth1 -p icmp -j ICMPACCEPT
>=20
>
>#silently reject ident
>iptables -A INPUT -i eth1 -p tcp --dport 113 -j REJECT --reject-with
>tcp-reset
>=20
>
>echo "      #---Enabling Public Services---#"
>#ftp-data
>iptables -A INPUT -i eth1 -p tcp --dport 20 -j TCPACCEPT
>=20
>
>#ftp
>iptables -A INPUT -i eth1 -p tcp --dport 21 -j TCPACCEPT
>=20
>
>#ssh
>iptables -A INPUT -i eth1 -p tcp --dport 22 -j TCPACCEPT
>=20
>
>#telnet
>#iptables -A INPUT -i eth1 -p tcp --dport 23 -j TCPACCEPT
>
>#smtp
>iptables -A INPUT -i eth1 -p tcp --dport 25 -j TCPACCEPT
>
>#DNS
>iptables -A INPUT -i eth1 -p tcp --dport 53 -j TCPACCEPT
>iptables -A INPUT -i eth1 -p udp --dport 53 -j ACCEPT
>
>#HTTP
>iptables -A INPUT -i eth1 -p tcp --dport 80 -j TCPACCEPT
>
>#HTTPS
>iptables -A INPUT -i eth1 -p tcp --dport 443 -j TCPACCEPT
>
>#POP3
>iptables -A INPUT -i eth1 -p tcp --dport 110 -j TCPACCEPT
>
>echo "      #---Allowing established, related connections in---#"
>
>iptables -A INPUT -i eth1 -m state --state ESTABLISHED -j ACCEPT
>iptables -A INPUT -i eth1 -p tcp --dport 1024:65535 -m state --state
>RELATED -j TCPACCEPT
>iptables -A INPUT -i eth1 -p udp --dport 1024:65535 -m state --state
>RELATED -j ACCEPT
>echo "## -- Script Loaded -- ##"
>exit
>[root@ciccio-net /etc]#
>
>I've tested this configuration befor many times and never had any
>problems with ftp.

Do you mean you have run other ftp *servers* with this ruleset in place=
, or=20
that you have run ftp clients successfully? They are quite different pr=
oblems.


>What else should I post?.

I don't think you ever told us the basics: what Linux distro and versio=
n,=20
what kernel ("uname -a"). Routing does not seem relevant to your immedi=
ate=20
problems, but whenever networking it involved, it pays to include the=20
routing table and an explanation of the basic networking setup (see bel=
ow=20
for more on this). And since your initial message did mention Linux hos=
ts=20
"A" and "B", it would help at least to know *which* host we are now tal=
king=20
about ... as I say below, I *think* it is "B" from before.

>Iptables version: iptables v1.2.1a
>proFTPD version: proftpd-1.2.9rc1
>
>Anything else?
>
>Oh, ifconfig -a:
>
>[root@ciccio-net /root]# ifconfig -a
>eth0      Link encap:Ethernet  HWaddr 00:00:F8:23:5A:62
>           inet addr:192.168.23.114  Bcast:192.168.23.255
>Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:444047 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:387507 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:4693 txqueuelen:100
>           RX bytes:165587659 (157.9 Mb)  TX bytes:149730653 (142.7 Mb=
)
>           Interrupt:15 Base address:0x8400
>=20
>
>eth1      Link encap:Ethernet  HWaddr 08:00:2B:C3:C1:0E
>           inet addr:10.200.1.236  Bcast:10.200.1.239
>Mask:255.255.255.240
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:1239679 errors:1 dropped:0 overruns:0 frame:1
>           TX packets:1113085 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:409 txqueuelen:100
>           RX bytes:1495321451 (1426.0 Mb)  TX bytes:194423028 (185.4 =
Mb)
>           Interrupt:10 Base address:0x8480
>=20
>
>lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:24 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:24 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:1571 (1.5 Kb)  TX bytes:1571 (1.5 Kb)

Hmmm ... since this machine has 2 NICs, I assume it is "B" from your pr=
ior=20
message (the one that "A" uses to access the Internet). Since both=20
interfaces use private (RFC1918 non-routable) IP addresses, it would he=
lp=20
to know which is your external, which your internal interface.I could i=
nfer=20
this from your routing table ("netstat -nr" is one way to list it), but=
 you=20
didn't include that.

=46or purposes of troubleshooting ftp on "B", this next part is irrelev=
ant=20
=2E.. but I don't quite see how "A" is accessing the Internet through "=
B".=20
That is, I do not understand your NAT'ing setup, probably because I do =
not=20
know what the address "192.168.23.103" in your SNAT rule refers to.

>netstat -l outputs this:
>
>[root@ciccio-net /root]# netstat -l
>Active Internet connections (only servers)
>Proto Recv-Q Send-Q Local Address           Foreign Address
>State
>tcp        0      0 *:sunrpc                *:*
>LISTEN
>tcp        0      0 *:http                  *:*
>LISTEN
>tcp        0      0 *:32789                 *:*
>LISTEN
>tcp        0      0 *:32790                 *:*
>LISTEN
>tcp        0      0 *:ssh                   *:*
>LISTEN
>tcp        0      0 *:32791                 *:*
>LISTEN
>tcp        0      0 *:6010                  *:*
>LISTEN
>udp        0      0 *:talk                  *:*
>udp        0      0 *:sunrpc                *:*
>Active UNIX domain sockets (only servers)
>Proto RefCnt Flags       Type       State         I-Node Path
>unix  2      [ ACC ]     STREAM     LISTENING     978    /dev/gpmctl
>
>
>Samba is not realy that important. In fact smaba is not important at
>all. as long as I have FTP working.

Note from the above that nothing is listening on the SMB ports either. =
But=20
since you say Samba is, now, "not realy that important", I won't go int=
o that.


>I hope the information was better this time... I repeat... I'm noob
>here... and I've never had any problems with ftp servers before.

In what contexts have you previously run ftp servers? Any that ran thro=
ugh=20
inetd or xinetd?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
