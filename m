From: Jim Earl <jimurl@montanaice.com>
Subject: Re: local networking hostname
Date: Mon, 22 Jul 2002 14:07:25 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <B961C21C.1EB2%jimurl@montanaice.com>
References: <5.1.0.14.1.20020722081403.02197720@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020722081403.02197720@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org, Joseph Jackson <skoidat@lvcm.com>



> From: Ray Olszewski <ray@comarre.com>
> Date: Mon, 22 Jul 2002 08:19:00 -0700
> To: Jim Earl <jimurl@montanaice.com>, <linux-newbie@vger.kernel.org>
> Subject: Re: local networking hostname
> 
> At 09:03 AM 7/22/02 -0600, Jim Earl wrote:
>> Hello!
>> 
>> I am setting up a small network of one Linux and one non-Linux box.  The
>> network is established via Ethernet; ifconfig and route report verify this.
>> I am able to telnet from the non-linux to the Linux box but only using the
>> IP address - NOT using the hostname.  However, when I try to telnet from the
>> Linux box to itself ( using the loopback interface ), it works fine.  My
>> /etc/hosts , /etc/resolv.conf and /etc/networks seem to be ok.
>> 
>> I don't have 'named' running, but it looks like I might need to ( though I
>> had wanted to avoid it ).
>> 
>> Any ideas are appreciated.
> 
> The files that you say "seem to be ok" affect the ability of the Linux host
> itself to resolve names, but they have nothing to do with the ability of
> the "non-linux" host to resolve names. Your options are:
> 
> 1. Run an on-LAN nameserver and tell the non-Linux host to use it to
> resolve names. Running BIND (named) on the Linux host is one way to do this.
> 
> 2. Set up the non-Linux host to do local name resolution using its
> equivalent of /etc/hosts . Knowing nothing about this host, execpt that it
> is a computer and it does not run Linux, I can't tell you how to do this.
> 
Thanks Joeseph and Ray...

The Non-Linux is a Mac OS 9.  What you both are saying makes sense- not a
Linux issue, but rather a Mac equivalent of '/etc/hosts'.  I have been
screwing around with with the TCP/IP Control Panel, including "Selecting a
Host File", following apples instructiosn on that.  Still no luck;

I have, however, noticed that routed is not a running process.  Should it be
in this case?

Thanks!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
