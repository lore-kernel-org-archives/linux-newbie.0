From: Ray Olszewski <ray@comarre.com>
Subject: Re: local networking hostname
Date: Mon, 22 Jul 2002 08:19:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020722081403.02197720@celine>
References: <B9617ACB.1E8C%jimurl@montanaice.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <B9617ACB.1E8C%jimurl@montanaice.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Jim Earl <jimurl@montanaice.com>, linux-newbie@vger.kernel.org

At 09:03 AM 7/22/02 -0600, Jim Earl wrote:
>Hello!
>
>I am setting up a small network of one Linux and one non-Linux box.  The
>network is established via Ethernet; ifconfig and route report verify this.
>I am able to telnet from the non-linux to the Linux box but only using the
>IP address - NOT using the hostname.  However, when I try to telnet from the
>Linux box to itself ( using the loopback interface ), it works fine.  My
>/etc/hosts , /etc/resolv.conf and /etc/networks seem to be ok.
>
>I don't have 'named' running, but it looks like I might need to ( though I
>had wanted to avoid it ).
>
>Any ideas are appreciated.

The files that you say "seem to be ok" affect the ability of the Linux host 
itself to resolve names, but they have nothing to do with the ability of 
the "non-linux" host to resolve names. Your options are:

1. Run an on-LAN nameserver and tell the non-Linux host to use it to 
resolve names. Running BIND (named) on the Linux host is one way to do this.

2. Set up the non-Linux host to do local name resolution using its 
equivalent of /etc/hosts . Knowing nothing about this host, execpt that it 
is a computer and it does not run Linux, I can't tell you how to do this.



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
