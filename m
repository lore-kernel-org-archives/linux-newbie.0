From: chuck gelm <chuck@gelm.net>
Subject: Re: How to forward port 80 on Linux Redhat 9?
Date: Thu, 29 Jul 2004 17:39:41 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41096E9D.9010602@gelm.net>
References: <BD2E6960.3D28%eatley@wow-corp.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BD2E6960.3D28%eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Eve Atley <eatley@wow-corp.com>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Eve Atley wrote:
> Thanks for the help from everyone re: forwarding port 80 on RedHat. I
> believe this is what will set me on the right track eventually.
> 
> PORT FORWARDING - with IPTABLES while using BASTILLE firewall
> http://www.hackorama.com/network/portfwd.shtml
> 
> I apologize for my lack of terminology!
> 
> 
> Thanks again!
> - Eve

  Hi, Eve:

  Sorry to enter this topic so late in the discussion, but here is how
I port forward my internal web server.  I have a DSL service and run
roaring-penguin to connect to my DSL service and masquerade my
internal machines.  A web link (URL) is embedded in the comments.
My DSL becomes 'ppp0' and my internal LAN is 'eth0'.
I think that you will need to turn off 'auto-wrap' before saving or
browse to 
http://newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
--------------------------------------------------------------------
# google search: setting up a linux home gateway
#newbiedoc.sourceforge.net/networking/homegateway.html#IPMASQSETTINGSETH
# 9.2.2 For Iptables Users
#For users connecting to external network on ethernet & using iptables:

/usr/sbin/iptables -F
/usr/sbin/iptables -t nat -F
/usr/sbin/iptables -t mangle -F #ignore if you get an error here
/usr/sbin/iptables -X #deletes every non-builtin chain in the table

# forward port 80 to my web server
/usr/sbin/iptables -t nat -A PREROUTING -i ppp0 -p tcp --dport 80 -j 
DNAT --to 192.168.0.7

/usr/sbin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
/usr/sbin/iptables -A INPUT -m state --state NEW -i ! ppp0 -j ACCEPT
# only if both of the above rules succeed, use
/usr/sbin/iptables -P INPUT DROP

/usr/sbin/iptables -A FORWARD -i ppp0 -o eth1 -m state --state 
ESTABLISHED,RELATED -j ACCEPT
/usr/sbin/iptables -A FORWARD -i eth0 -o ppp0 -j ACCEPT

# use this line if you have a static IP address from your ISP
# replace your static IP with x.x.x.x
#/usr/sbin/iptables -t nat -A POSTROUTING -o ppp0 -j SNAT --to x.x.x.x

# use this line only if you have dynamic IP address from your ISP
/usr/sbin/iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE

#/usr/sbin/iptables -A FORWARD -i ppp0 -o ppp0 -j REJECT

/usr/sbin/iptables -L
------------------------
I hope this helps.
Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
