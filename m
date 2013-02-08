From: Prashant Batra <prashant0100@gmail.com>
Subject: Re: IPv6 routes too much
Date: Fri, 8 Feb 2013 23:08:12 +0530
Message-ID: <CAG+XuE6cp_oNpaTeE-3Rn70rabeMbj5n+9Rhjso1Ay1Y5pxH3w@mail.gmail.com>
References: <CAG+XuE7FaAwwSq98JTSr3SOxSP2rN1hxFYQ7O=0L_3E=9kVreg@mail.gmail.com>
	<alpine.LNX.2.01.1302081615450.10125@nerf07.vanv.qr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:x-received:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=cj9cao6TnZqB7Cxr/5WbOo/ua/WEXWz0eYA+YK6ns+4=;
        b=efJRCtWiB2cR/3AKs4yNhIm6/tc5VH1QybL1n6aU3NKVKAcOuQzImQEIx5vNe73spp
         oU6t306CF4aGwDZuzTzS3ZnWsdZxlsLNFX94wgeKg0zJ7kIarELjAMPqr5u3OAJGvERk
         h2pV6zHFd4F45aGqbqL3K7QJF5owB/z50o6T+vdG10fAE+UqShlTO7Zuh7NUh01ja70i
         ItWGFcj7/d0eMLQJzgzp+N1zXZaWQ5ZJG7nIrS5lfatpASJ8xQBiFkEy8CGHz7z16mXb
         9Ysc1ABh6FYWdd3uM3Vtdzo2sgkrx18xyqUjLUcI5d5U5Vb9YhfJ8R0XBK6m1muFxp5Z
         Hcjw==
In-Reply-To: <alpine.LNX.2.01.1302081615450.10125@nerf07.vanv.qr>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jan Engelhardt <jengelh@inai.de>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

On Fri, Feb 8, 2013 at 9:04 PM, Jan Engelhardt <jengelh@inai.de> wrote:
> On Friday 2013-02-08 11:48, Prashant Batra wrote:
>
>>I have a case wherein I have a route to a network connected to my
>>linux machine via an interface, which I added like-
>>
>>route add -inet6 9aa::/16 gw 2001:db8:0:242::2 dev eth0
>
> Forget net-tools already. It is not maintained.
> There is no issue with iproute.
>
>>like this I get 10k routes
>>#cat /proc/net/ipv6_route | wc -l
>>10015
>
> It is correct - it dumps routes (for some definition of "route"), in
> particular all FIB entries. You will find the same for IPv4 in
> /proc/net/rt_cache on kernels where the cache has not already been
> removed. That said /proc/net only shows table 254, so the whole procfs
> business is pretty useless.
>
So, if I understand correctly, the /proc/net/rt_cache and
/proc/net/ipv6_route display the routing cache for v4 and v6
respectively, which the kernel maintains.
And, in case my server is trying to send packets to millions of
addresses, kernel will cache the routes for them, until
"/proc/sys/net/ipv6/route/max_size" is reached after which it will
flush some old entries to make room for new ones.
So, any advice onto how the kernel configs specially under
/proc/sys/net/ipv6/route/* should be controlled to get best
performance.
> Just use iproute2, really.



--
Thanks
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
