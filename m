From: "Eve Atley" <eatley@wowcorp.com>
Subject: Translating IP tables
Date: Tue, 1 Feb 2005 11:48:41 -0500
Message-ID: <007201c5087d$e2924c60$1f0aa8c0@lanadmin>
References: <1106125343.4183.7.camel@localhost.localdomain>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <1106125343.4183.7.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux Newbie' <linux-newbie@vger.kernel.org>


I'm wanting to set up to allow port 23 to be accepted via the internet in my
Linux box running RedHat Linux Enterprise Workstation. I did some research
and have an output pasted below; am I truly allowing input/output from the
internet?

What I truly am attempting to do is telnet to port 5201 in order to allow
for VNC, but it appears I can not telnet on port 23 either (telnetting to
the machine on port 5201 should bring back an rfb: prompt, but connection is
refused on both 5201 and 23); so, my first guess is that I need to allow
port 23. Can someone assist me in cleaning up?

Thanks,
Eve


Chain INPUT (policy ACCEPT)
target     prot opt source               destination         
RH-Firewall-1-INPUT  all  --  anywhere             anywhere           
ACCEPT     tcp  --  anywhere             anywhere           tcp dpt:telnet 

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination         
RH-Firewall-1-INPUT  all  --  anywhere             anywhere           

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination         

Chain RH-Firewall-1-INPUT (2 references)
target     prot opt source               destination         
ACCEPT     all  --  anywhere             anywhere           
ACCEPT     icmp --  anywhere             anywhere           icmp any 
ACCEPT     ipv6-crypt--  anywhere             anywhere           
ACCEPT     ipv6-auth--  anywhere             anywhere           
ACCEPT     all  --  anywhere             anywhere           state
RELATED,ESTABLISHED 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:smtp 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:http 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:ftp 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:ssh 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:7886 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:webcache 
ACCEPT     tcp  --  anywhere             anywhere           state NEW tcp
dpt:cvspserver 
REJECT     all  --  anywhere             anywhere           reject-with
icmp-host-prohibited 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
