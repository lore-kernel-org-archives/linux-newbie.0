From: Ray Olszewski <ray@comarre.com>
Subject: Re: getting the NIC that my socket connection will go on
Date: Wed, 17 Sep 2003 15:46:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030917153849.01f36620@celine>
References: <20030917222731.61627.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030917222731.61627.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:27 PM 9/17/2003 -0500, Lee Chin wrote:
>Hi,
>I have an IP address I want to connect to.  How can I tell what NIC Linux 
>will use to make that connection on?

You look at your routing table to see which interface the kernel has been 
told to use to reach that IP address, then you see what NIC that interface 
is associated with in your setup.

One common way to display the routing table is the command "netstat -nr"; 
another is "route -n". The man pages for route and netstat will tell you 
more about options and switches.

The typical way to find out what actual device (in your case, what NIC) is 
associated with an interface is with the command "ifconfig -a". Some 
systems may not have that command (full-size distros usually do, but 
specialized distros like router/firewall systems may not), and you'll need 
to use some variant of "ip" instead, maybe "ip -s addr".



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
