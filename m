From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to make Apache webserver accessible from outside?
Date: Mon, 16 Jun 2003 21:51:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030616212334.02047b40@celine>
References: <courier.3EEE9635.00007BB6@softhome.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <courier.3EEE9635.00007BB6@softhome.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:16 PM 6/16/2003 -0600, nksahita@softhome.net wrote:
>Hi,
>I installed RH9 on my home computer which has broadband connection.
>I got account with dyndns.org which allows me to get a domain name (e.g. 
>http://xyz.dyndns.org) that points to the IP address allocated by my ISP.
>When I try to access this webserver from my home PC - 
>http://xyz.dyndns.org, it works fine - I can see the home page that I have 
>setup on my RH9 Apache server.
>However if someone from outside (my friend for e.g.), tries to access 
>http://xyz.dyndns.org, he can't do it.  However, if my friend tries to 
>ping the IP address or xyz.dyndns.org, he is able to do it.
>I have confirmed with my ISP that they don't block any ports.
>Are there any settings in RH9 that I need to turn on so that it can accept 
>incoming web traffic from outside?
>Thanks for any help / pointer in advance.
>Regards.


As you describe this setup, it should work. So let's consider why it might 
not.

Possibility one: Your ISP is blocking port 80. Yes, I know you said "I have 
confirmed with my ISP that they don't block any ports", but I don't have to 
believe it just because that is what you say your ISP says. The test: try 
running apache on a different port (8080 is traditional), then see if 
someone from outside can access the Web site as  http://xyz.dyndns.org:8080 .

Possibility two: Your system is running firewall rules that block incoming 
traffic. I don't know what a naive installation of RH9 does about 
firewalling. The easiest way to find out is to check for yourself: see what 
the command "iptables -nvL" reports about default policies and specific 
rules. While I would always strongly recommend running a decent set of 
firewall rules on any machine that is connected to the Internet, you might, 
just as a brief test, try clearing the rulesets and setting all policies to 
ACCEPT (see the man page for iptables if you don't know how to do this) to 
see if that makes it possible to connect to your Web server.

Possibility three: apache is misconfigured. You write: "When I try to 
access this webserver from my home PC ... it works fine". What URL are you 
using to access it? Are you accessing it as  http://xyz.dyndns.org or are 
you using the localhost interface to access it? Make sure apache knows (in 
its config files) that it is running on the URL and interface you want your 
friend to use to connect, and that it is configured to accept connections 
from the outside.

Possibility Four: Your host_access rules (/etc/hosts.allow and 
/etc/hosts.deny) are blocking the connection. I don't *think* apache uses 
these access lists itself when run as its own daemon (it has its own 
access.conf file for this purpose, which you should have checked for 
Possibiliy Three), but if you run apache through inetd, and it uses 
tcp-wrappers (tcpd), then these access rules will apply to connection attempts.

If none of those possibilites pans out for you, the only things I can think 
of to do are ...

First, give us more specifics next time. Like the real URL and what "he 
can't do it" actually looks like. What failure does the browser at the far 
end report? At your end, does apache log the attempt to connect? Oh, and 
who is your ISP?

Second, try running some other service (like ssh) and see if it works. If 
not, consider (and tell us, if you want more help) how this one fails.

BTW, after writing all of this ... on reflection, I really like Possibility 
One.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
