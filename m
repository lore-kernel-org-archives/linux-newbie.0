From: "frans toruan" <frans@acbi.co.id>
Subject: RE: ADSL connection via RHL 90
Date: Wed, 16 Feb 2005 11:09:54 +0700
Message-ID: <000601c513dd$6e8bc100$6510ea0a@acbi.local>
References: <42121E75.1090800@gelm.net>
Reply-To: <frans@acbi.co.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <42121E75.1090800@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: Linux newbie list <linux-newbie@vger.kernel.org>

# fx > Hi, Frans:
# fx > 
# fx > 10.234.16.101	fxrhl90			workstation's LAN interface
# fx > 10.234.16.99	?			gateway's     LAN interface
# fx > 202.134.0.155	nsjkt1.telkom.net.id	gateway's     WAN interface
# fx > ?
# fx > 202.134.2.5	ns2.telkom.net.id	a DNS server

Yes, you are right. 
10.234.16.99 is IP number of ADSL router ( = default gateway ) in our LAN
202.134.0.155 and 202.134.2.5 are DNS servers of our ISP

# fx >   I assume that the host's (gateway, that has the DSL modem
# fx > attached?)
# fx > interfaces are
# fx >   10.234.16.99 on the LAN and
# fx >   202.134.0.155 on its ppp# interface and
# fx >   that it is routing 10.234.16.0<>0.0.0.0
# fx >   using a netmask of 255.x.x.0 or similar.

Yes . . .

# fx > Can you ping the gateway's external interface by IP address?
# fx > "I can ping to the external IP number of my ISP ( i.e. 202.134.0.155
# fx > )"
# fx >   I assume that 202.134.0.155 is the IP address of the gateway's
# fx >   external interface and the answer is yes.

You already answered a yes.

# fx > Can you ping 202.134.2.5 or 203.130.196.6 ?
# fx >   (ns1.telkom.net.id or ns2.telkom.net.id)

Yes, to the number of the ISP ( 202.134.2.5 ).
No, to other numbers ( 203.130.196.6, and other numbers ).
Also, a big no to other names.

# fx > For ping'ing by FQDN you will need 202.134.2.5 (or similar)
# fx > in /etc/resolv.conf (or RedHat equivilant).

It's already there ! :
	resolv.conf :
search telkom.net
nameserver 10.234.16.10
nameserver 202.134.0.155
nameserver 202.134.2.5

( note : 10.234.16.10 is my internal DNS server )

# fx > Do you have access to 10.234.16.99?

Of course, see above. I can also connect to it.

Thank you, anyway. But, I still can't see the world via my RHL90
( Btw, my router is Draytek Vigor 2500, is it somehow incompatible with
Linux ? )

Regards,


Frans T.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
