From: chuck gelm <chuck@gelm.net>
Subject: Re: ADSL connection via RHL 90
Date: Tue, 15 Feb 2005 11:08:21 -0500
Message-ID: <42121E75.1090800@gelm.net>
References: <000c01c51336$715254f0$6510ea0a@acbi.local>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <000c01c51336$715254f0$6510ea0a@acbi.local>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: hr_ga.dept@acbi.co.id
Cc: 'Linux newbie list' <linux-newbie@vger.kernel.org>

GA Dept PT ACBI wrote:
> I just installed RHL90, as workstation, and connected to our internal LAN.
> Now, I tried to connect to the net via our ADSL. But failed, via Mozilla
> browser, sendmail, or any other. The ADSL's IP number as default gateway was
> already put into the routing table. 
> I can ping to the external IP number of my ISP ( i.e. 202.134.0.155 ), but
> not to any external IP number ( e.g. 18.7.22.69 ). When I ping-ed to
> external FQDN, it always said something like "...unknown host...". 
> Have I done something wrong during the installation? Where should I check
> first?
> Could somebody please help me?
> 
> My data is as follows :
> 
> Result of ifconfig : 
> eth0      Link encap:Ethernet  HWaddr 00:0C:6E:6B:4E:C2  
>           inet addr:10.234.16.101  Bcast:10.234.16.255  Mask:255.255.255.0
<snip>
> ( note : 10.234.16.101 is my workstation's IP number. )
> 
> Result of route -v as follows :
> 
> Kernel IP routing table
> Destination     Gateway         Genmask         Flags Metric Ref    Use
> Iface
> 10.234.16.0     *               255.255.255.0   U     0      0        0 eth0
> 169.254.0.0     *               255.255.0.0     U     0      0        0 eth0
> 127.0.0.0       *               255.0.0.0       U     0      0        0 lo
> default         10.234.16.99    0.0.0.0         UG    0      0        0 eth0
> 
<snip>
> 	netstat -r :
> 
> Kernel IP routing table
> Destination     Gateway         Genmask         Flags   MSS Window  irtt
> Iface
> 10.234.16.0     *               255.255.255.0   U         0 0          0
> eth0
> 169.254.0.0     *               255.255.0.0     U         0 0          0
> eth0
> 127.0.0.0       *               255.0.0.0       U         0 0          0 lo
> default         10.234.16.99    0.0.0.0         UG        0 0          0
> eth0
> 
> ( note : I didn't input this 169.254.0.0 number; where does it come from ? )
> 
> Data from /etc/sysconfig/networking/devices/eth0.route as follows :
> 
> GATEWAY1=10.234.16.99
> NETMASK1=255.255.0.0
> ADDRESS1=202.134.2.5
> GATEWAY0=10.234.16.99
> NETMASK0=255.255.0.0
> ADDRESS0=202.134.0.155
> 
<snip>
> Yours,
> 
> 
> Frans T.
> 
> P.S. 
> Sorry for the use of bandwidth

Hi, Frans:

10.234.16.101	fxrhl90			workstation's LAN interface
10.234.16.99	?			gateway's     LAN interface
202.134.0.155	nsjkt1.telkom.net.id	gateway's     WAN interface ?
202.134.2.5	ns2.telkom.net.id	a DNS server

  I assume that the host's (gateway, that has the DSL modem attached?)
interfaces are
  10.234.16.99 on the LAN and
  202.134.0.155 on its ppp# interface and
  that it is routing 10.234.16.0<>0.0.0.0
  using a netmask of 255.x.x.0 or similar.

Can you ping the gateway's external interface by IP address?
"I can ping to the external IP number of my ISP ( i.e. 202.134.0.155 )"
  I assume that 202.134.0.155 is the IP address of the gateway's
  external interface and the answer is yes.

Can you ping 202.134.2.5 or 203.130.196.6 ?
  (ns1.telkom.net.id or ns2.telkom.net.id)

For ping'ing by FQDN you will need 202.134.2.5 (or similar)
in /etc/resolv.conf (or RedHat equivilant).

Do you have access to 10.234.16.99?

What assumptions of mine are incorrect?

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
