From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: How to forward port 80 on Linux Redhat 9?
Date: Wed, 28 Jul 2004 21:18:00 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407282118.00390.pa3gcu@zeelandnet.nl>
References: <GNEPLLCIIBHICCOGIAKPGELODBAA.eatley@wowcorp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPGELODBAA.eatley@wowcorp.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eatley@wowcorp.com
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On Wednesday 28 July 2004 17:58, Eve Atley wrote:
> Hello all,
>
> We use Redhat 9 as our server and router, and Bastille as our firewall on
> that box. I have set up Bastille so it allows port 80 requests from our
> external IP (ie. 209.158.555.123). However, I can't figure out how to
> forward port 80 to an internal machine (ie. 192.168.10.28).
>
> I have been reading online articles first, and I guess it has something to
> do with iptables? I have seen the /etc/rc.d/rc.local file, and it looks
> like greek to me. I believe I need to do something like this:
>
> iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to
> 10.0.4.2:80
>
> But it all has [0.0] and such before it, with a final line of COMMIT.

I certainly don't understand what you mean here, however, if one does not know 
what do to one can do;

www.google.com/linux
Type in the search engine something like "iptables portforward 80"
You get from the above 40+ hits one which i think explains most of what you 
need is;
http://www.linuxquestions.org/questions/archive/3/2002/10/4/32933


> I have examined /etc/sysctl.conf and see that port forwarding is turned on.

The simple linux command here is;
cat /proc/sys/net/ipv4/ip_forward 
It should say
1
If it is 0 (zero) then one can do;
echo 1> /proc/sys/net/ipv4/ip_forward
to turn it on, the proc interface is a wonderfull place.

>
> Can somebody point me in the right direction as to what file I must
> configure, or what commands I must use to forward port 80 to 192.168.10.28?
>
> I have tried from an external terminal, and I can't even access the server
> (ie. 209.185.555.123). I have no entry in hosts.allow for HTTPD as I wasn't
> sure what syntax to be using. Is it:
> httpd: ALL ?
>
> Thanks,
> Eve
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
