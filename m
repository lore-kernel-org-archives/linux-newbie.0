From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Translating IP tables
Date: Tue, 1 Feb 2005 18:54:15 -0500
Message-ID: <002e01c508b9$5807df10$1f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050201085653.02be6918@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050201085653.02be6918@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org


Thanks, Ray, for your info so far. Here's what I've discerned...

1. Netstat does show 5901 is running (with much snipped)...
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State

tcp        0      0 0.0.0.0:5801            0.0.0.0:*               LISTEN

tcp        0      0 0.0.0.0:5901            0.0.0.0:*               LISTEN


2. I flushed the nasty port 23 away from the iptables, and attempted to add
5901 using the following command:
	iptables -A RH-Firewall-1-INPUT -m state --state NEW -p tcp
--destination-port 5901 -j ACCEPT

3. Now 'iptables -nvL' gives me this:
<snip>
Chain RH-Firewall-1-INPUT (2 references)
 pkts bytes target     prot opt in     out     source
destination         
 2964  320K ACCEPT     all  --  lo     *       0.0.0.0/0
0.0.0.0/0          
    0     0 ACCEPT     icmp --  *      *       0.0.0.0/0
0.0.0.0/0          icmp type 255 
    0     0 ACCEPT     esp  --  *      *       0.0.0.0/0
0.0.0.0/0          
    0     0 ACCEPT     ah   --  *      *       0.0.0.0/0
0.0.0.0/0          
   44 34271 ACCEPT     all  --  *      *       0.0.0.0/0
0.0.0.0/0          state RELATED,ESTABLISHED 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:25 
    1    48 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:80 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:21 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:22 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:7886 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:8080 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:2401 
  172 29486 REJECT     all  --  *      *       0.0.0.0/0
0.0.0.0/0          reject-with icmp-host-prohibited 
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
0.0.0.0/0          state NEW tcp dpt:5901
</snip>

4. When I try to telnet to the machine's IP using port 5901, it still
indicates Connection Failed, despite it being set up like everything else
that works. 

Final thought: perhaps it makes a difference that it follows the REJECT? 


Thanks again,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
