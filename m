From: "Eve Atley" <eatley@wowcorp.com>
Subject: (Addendum) Translating IP tables
Date: Tue, 1 Feb 2005 12:10:53 -0500
Message-ID: <008201c50880$fd088fc0$1f0aa8c0@lanadmin>
References: <200502011045.42191.eric@cisu.net>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <200502011045.42191.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux Newbie' <linux-newbie@vger.kernel.org>


Based on someone's advice, I wanted to indicate I used the following command
to get the iptables info:
/sbin/iptables -L

The command 'iptables -n -L' gives me the following:

Chain INPUT (policy ACCEPT)
target     prot opt source               destination         
RH-Firewall-1-INPUT  all  --  0.0.0.0/0            0.0.0.0/0          
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          tcp dpt:23 

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination         
RH-Firewall-1-INPUT  all  --  0.0.0.0/0            0.0.0.0/0          

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination         

Chain RH-Firewall-1-INPUT (2 references)
target     prot opt source               destination         
ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0          
ACCEPT     icmp --  0.0.0.0/0            0.0.0.0/0          icmp type 255 
ACCEPT     esp  --  0.0.0.0/0            0.0.0.0/0          
ACCEPT     ah   --  0.0.0.0/0            0.0.0.0/0          
ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0          state
RELATED,ESTABLISHED 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:25 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:80 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:21 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:22 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:7886 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:8080 
ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0          state NEW tcp
dpt:2401 
REJECT     all  --  0.0.0.0/0            0.0.0.0/0          reject-with
icmp-host-prohibited 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
