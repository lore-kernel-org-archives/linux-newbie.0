From: "Eve Atley" <eatley@wowcorp.com>
Subject: How to forward port 80 on Linux Redhat 9?
Date: Wed, 28 Jul 2004 11:58:43 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPGELODBAA.eatley@wowcorp.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>

Hello all,

We use Redhat 9 as our server and router, and Bastille as our firewall on
that box. I have set up Bastille so it allows port 80 requests from our
external IP (ie. 209.158.555.123). However, I can't figure out how to
forward port 80 to an internal machine (ie. 192.168.10.28).

I have been reading online articles first, and I guess it has something to
do with iptables? I have seen the /etc/rc.d/rc.local file, and it looks like
greek to me. I believe I need to do something like this:

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to
10.0.4.2:80

But it all has [0.0] and such before it, with a final line of COMMIT.

I have examined /etc/sysctl.conf and see that port forwarding is turned on.

Can somebody point me in the right direction as to what file I must
configure, or what commands I must use to forward port 80 to 192.168.10.28?

I have tried from an external terminal, and I can't even access the server
(ie. 209.185.555.123). I have no entry in hosts.allow for HTTPD as I wasn't
sure what syntax to be using. Is it:
httpd: ALL ?

Thanks,
Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
