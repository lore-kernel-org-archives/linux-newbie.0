From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Sun, 24 Nov 2002 18:48:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE16550.FD5B402E@gelm.net>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

:-)


Haines Brown wrote:
> 
> Chuck,
> 
> > Date: Sun, 24 Nov 2002 13:55:11 -0500
> > From: Chuck Gelm <nc8q@gelm.net>
> > X-Accept-Language: en
> > CC: linux-newbie@hartford-hwp.com
> >
> >  Please address your linux-newbie messages to
> > linux-newbie@vger.kernel.org and not to
> > linux-newbie@hartford-hwp.com and not to nc8q@gelm.net without
> > linux-newbie@vger.kernel.org
> >
> >  as I cannot 'reply' to linux-newbie@vger.kernel.org without adding
> >  that address manually & I see no reason to reply to you alone.
> >
> >  If you cannot do this, I'll edit to suit. ;-)
> 
> Chuck. I quite understand. Somehow a CC: linux-newbie@vger.kernel.org
> got in there, and so when I replied, it was reproduced. The header of
> this message looks clean, and so it's a kind of test. It goes to you,
> and a CC: for the list and back to me.
> 
> >  Yes, AFAIK, the eth# device that PPPOE is going to use should be
> > up.  However, it should not have an IP address.
> 
> Yes, the eth0 is up and running. The problem was that the
> configuration utility gave me the choice of a static address or DHCP,
> and I was unable to enter " ". I can get back to the files themselves,
> but right now on the machine I'm using, I have a permanent address for
> my machine (192.168.0.1) that is simply ignored when I set up a DSL
> connection.

 To remove the IPADDRESS from eth0, do
ifconfig eth0 down
ifconfig eth0 0.0.0.0 up

> > > Actually, when I run redhat-configuration-network, I see not only
> > > eth0, but also ppp0
> 
> I simply killed that unwanted ppp0, and it goes better.
> 
> > Who is running Red Hat 8.0 and Roaring Penguin?
> 
> 15% of all linux users? ;-)

Naw, not how many or percentile, but who, specifically,
can help us with a replica of your system.  ;-)

> With eth0 up and running, and having defined the inteface property in
> network configuration, I then proceed to configure Roaring Penguin.
> 
> Before I do I run adsl-status and am told, naturally, that there's no
> /etc/ppp/pppoe.conf file. I then proceed to configure Roaring Penguin
> (I'm comfortable with that), and at the end save the
> configuration. However, no /etc/ppp/pppoe.conf file shows up.

locate pppoe.conf
 on my system reports:
/etc/ppp/pppoe.conf
/usr/local/rp-pppoe-3.5/configs/pppoe.conf

 I think that 'adsl-setup' should have created a
'pppoe.conf' file.  Where it was placed, I'm not sure.


> Then I start adsl and get: ipchains: protocol not available. My first
> reaction was that iptables were blocking ppp, but now I don't think
> so. 

>       I think that IPTABLES is blocking IPCHAINS.

- I think that the default Red Hat 8.0 kernel uses
   IPTABLES and not IPCHAINS.  
- I think that rp-pppoe_v3.x uses IPCHAINS and not IPTABLES.

- I think that when (if?) adsl-setup creates an IPCHAINS ruleset
   it is useless to your kernel as your kernel is expecting
   an IPTABLES ruleset.  :-|

>     Nevertheless, when I run
> 
>       ipchains -L ...  REJECT tcp anysource anydest tcp
>       flags:SYN,RSG,AC...
> 
> However, I can read the error above to mean that ipchains is telling
> me there's no ppp protocol running. That, with the absense of a
> configuraion file, suggests that Roaring Penguin failed to configure
> pppoe. I did all this as root, but I'll have to check permissions,
> etc. to make sure the configuration file can be created. Also, I can
> try importing my old config file, which should be the same.
> 
> Haines

 Give Ray what he asked for. 
  "uname -a", "ifconfig -a", & "netstat -nr".  
 I've edited some IP addresses.  Here are mine:

Linux firewall 2.2.19.firewall #8 Wed Aug 28 18:23:22 EDT 2002 i486
unknown

Chain input (policy ACCEPT):
target     prot opt     source                destination          
ports
DENY       udp  ----l-  anywhere             anywhere              any
->   0:1023
DENY       tcp  ----l-  anywhere             anywhere              any
->   0:1023
DENY       tcp  -y--l-  anywhere             anywhere              any
->   any
DENY       icmp ----l-  anywhere             anywhere             
echo-request
Chain forward (policy DENY):
target     prot opt     source                destination          
ports
MASQ       all  ------  anywhere             anywhere              n/a
Chain output (policy ACCEPT):

Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt
Iface
000.72.131.1    0.0.0.0         255.255.255.255 UH        0 0          0
ppp0
192.168.0.0     0.0.0.0         255.255.255.0   U         0 0          0
eth0
127.0.0.0       0.0.0.0         255.0.0.0       U         0 0          0
lo
0.0.0.0         000.72.131.1    0.0.0.0         UG        0 0          0
ppp0

 And here is my pppoe.conf for your perusal:

ETH='eth1'
USER='this_is@edited.net'
DEMAND=no
DNSTYPE=NOCHANGE
PEERDNS=no
DNS1=
DNS2= 000.000.000.000 ;-)
DEFAULTROUTE=yes
CONNECT_TIMEOUT=30
CONNECT_POLL=2
ACNAME=
SERVICENAME=
PING="."
CF_BASE=`basename $CONFIG`
PIDFILE="/var/run/$CF_BASE-adsl.pid"
SYNCHRONOUS=no
CLAMPMSS=1412
LCP_INTERVAL=20
LCP_FAILURE=3
PPPOE_TIMEOUT=80
FIREWALL=MASQUERADE	; <---- see /etc/ppp/firewall-standalone
LINUX_PLUGIN=
PPPOE_EXTRA=""
PPPD_EXTRA=""

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
