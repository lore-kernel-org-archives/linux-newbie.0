From: Tim Kay <tim@dcs.qmul.ac.uk>
Subject: Re: Firewall Configuration...
Date: 10 Sep 2002 13:54:55 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1031662495.1427.26.camel@wasp-pc>
References: <3D7C2DE1.4040601@tataelxsi.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D7C2DE1.4040601@tataelxsi.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sriram Narasimhan <nsri@tataelxsi.co.in>
Cc: linux-newbie@vger.kernel.org

Just as a quick addendum the firewall file lives in
/etc/sysconfig/ip(chains/tables), this is chains for 7.2 IIRC - at least
on 7.2 Alpha.

The most basic format, if you're in a hurry, is:

-A/-I* CHAINNAME** -P PROTOCOL -s SOURCEADDRESS -d DESTINATION PORT -j
what-to-do*** -l**** (if you want) 

* ADD or INSERT or DELETE
** usually INPUT or  OUTPUT 
*** DENY or ACCEPT or MASQ or REDIRECT or RETURN - 1st 2 probably
**** log to /var/log/messages if packet matching the rule arrives

so to add a rule to deny ssh connections from anywhere to 192.168.0.1

-A INPUT -P tcp -s 0/0 -d 192.168.0.1/255.255.255.255 22 -j DENY -l


Kind of short - better to read man ipchains (or, really, to use iptables
but......)

Tim

On Mon, 2002-09-09 at 06:13, Sriram Narasimhan wrote: 
> Hello,
> 
> I am using Red Hat 7.2 running 2.4.7-10
> 
> I seem to be having a problem changing the firewall configuration. When 
> I installed Red Hat I didn't bother to set the firewall and it defaulted 
> to the "High" Security level.
-- 
-----------------------------
Tim Kay
Systems programmer
Queen Mary University of London

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
