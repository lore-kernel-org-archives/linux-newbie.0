From: Ray Olszewski <ray@comarre.com>
Subject: RE: Translating IP tables
Date: Tue, 01 Feb 2005 17:30:58 -0800
Message-ID: <5.1.0.14.1.20050201172540.04a37b58@celine>
References: <5.1.0.14.1.20050201085653.02be6918@celine> <002e01c508b9$5807df10$1f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <002e01c508b9$5807df10$1f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050201085653.02be6918@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-71C24702"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

At 06:54 PM 2/1/2005 -0500, Eve Atley wrote:
[skipping a lot]
>2. I flushed the nasty port 23 away from the iptables, and attempted to add
>5901 using the following command:
>         iptables -A RH-Firewall-1-INPUT -m state --state NEW -p tcp
>--destination-port 5901 -j ACCEPT
>
>3. Now 'iptables -nvL' gives me this:
[...]
>   172 29486 REJECT     all  --  *      *       0.0.0.0/0
>0.0.0.0/0          reject-with icmp-host-prohibited
>     0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0
>0.0.0.0/0          state NEW tcp dpt:5901
></snip>
>
>4. When I try to telnet to the machine's IP using port 5901, it still
>indicates Connection Failed, despite it being set up like everything else
>that works.
>
>Final thought: perhaps it makes a difference that it follows the REJECT?


Yes, you got it on the first try. Chains work from top to bottom; a packet 
goes down the chain only until it finds a matching rule; then it follows 
that rule without ever looking at subsequent rules (with a few exceptions 
that are incidental in this context).

You need to do one of two things:

1. Find the script that creates the chain and add your new rule to it ahead 
of the final REJECT rule. Where and what that script is is RH specific, and 
I don't know Red Hat, so you need to find it on your own or get help from 
someone else.

2. Instead of adding the rule ("iptables -A"), insert the same rule 
("iptables -I" or maybe "iptables -I 1" ... I forget if -I without a number 
defaults to position 1), so it will go at the start of the chain rather 
than the end.




-- 
Internal Virus Database is out-of-date.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.7.4 - Release Date: 1/25/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
