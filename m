From: simon <simon.guinot@laposte.net>
Subject: Re: Need a network traffic monitor
Date: Sun, 28 Nov 2004 15:04:52 +0100
Message-ID: <41A9DB04.8070004@laposte.net>
References: <10444189897.20041127192716@wa5rrh.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <10444189897.20041127192716@wa5rrh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

hello Jim

Jim Reimer wrote:
> How can I set up to monitor what's coming and going on my gateway?
> Network is all hubs, no switches, and all I need to do is count
> bytes going to and coming from 192.168.0.1 - don't care where it
> came from or where it's going, I just need to count it.
> 
there is lot of ways to do that...
the most simplest (for me) is writing a basic sniffer... or use an 
existing... like tcpdump... to look the ip adresses (sender an receiver)
and depending the result... incremant a value...
if you want some skeleton code examples... send me a mail
an other way is by using the iptables... the netfilter...
you can insert a kernel module into the network stack and use an entry 
point in the netfilter... ("Hacking the Linux Kernel Network Stack" 
explain how to do that)...
may be there is some existing iptables user-space fonctionality to 
perform that...
using the iptables-netfilter ask you for your application portability...
an other idea is writing a kernel module who intercept the socket () 
system call...
in hope you find something useful...

simon


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
