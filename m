From: "frans toruan" <frans@acbi.co.id>
Subject: RE: ADSL connection via RHL 90
Date: Wed, 16 Feb 2005 11:09:54 +0700
Message-ID: <000501c513dd$6b8007a0$6510ea0a@acbi.local>
References: <5.1.0.14.1.20050215081628.01fcb8d0@celine>
Reply-To: <frans@acbi.co.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050215081628.01fcb8d0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>
Cc: Linux newbie list <linux-newbie@vger.kernel.org>

# fx > I don't quite understand this last sentence. The gateway number
# fx > should be
# fx > the LAN address of your router ... probably 10.234.16.99, based on

Yes, you are right.

# fx > what you
# fx > report below ... not (for example) the public address by which that
# fx > router
# fx > (probably) connects to the Internet via ADSL (or, even worse, the
# fx > router's
# fx > gateway address).

# fx > Preliminary comment: When asking for technical help, never tell us
# fx > what the
# fx > response is "something like". Take the time to write it down and tell
# fx > us
# fx > what it actually is, and the exact command it is response to.


# fx > Now ... you say first that you cannot ping to "any external IP
# fx > number", but
# fx > then refer to "external FQDN". Have you tested pinging an address ("(
# fx > e.g.
# fx > 18.7.22.69 )") or not? If not, please do ... in that case, James'

Already tried to ping to other IP numbers, but failed. I could only ping to
IP numbers of DNS servers of our ISP ( and even then, not to their names ). 


# fx > Probably something RH does by default. There's an RFC standard for

Many thanks for your info.

# fx > >Data from /etc/sysconfig/networking/devices/eth0.route as follows :
# fx > >
# fx > >GATEWAY1=10.234.16.99
# fx > >NETMASK1=255.255.0.0
# fx > >ADDRESS1=202.134.2.5
# fx > >GATEWAY0=10.234.16.99
# fx > >NETMASK0=255.255.0.0
# fx > >ADDRESS0=202.134.0.155
# fx > 
# fx > What do the addresses in "ADDRESS1" and "ADDRESS0" refer to?

IP numbers of my ISP.

Very many thanks, 


Frans T.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
