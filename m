From: Ray Olszewski <ray@comarre.com>
Subject: Re: Network Statistics Collection
Date: Mon, 20 Sep 2004 17:32:32 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040920172215.0eb20040@celine>
References: <88240e9404092016313ca56ca0@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <88240e9404092016313ca56ca0@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You really should not cross post the same message to so many  lists. If 
people reply without pruning, it will get messy, and it's just considered 
bad manners.

Now to your problem.

As a general matter, much of this information can be found in the /proc 
filesystem, a pseudo-filesystem that gives you read (sometimes write) 
access to kernel internals in ways that make the internals look like files. 
Common apps that provide interfaces to this information are netstat, 
ifconfig, and ip (also known as iproute). iptables rulesets (iptables is 
the interface to the kernel's firewalling and NATing code) for logging 
packets may be needed to get some of the more fine-grained things you want 
to know about (e.g., retransmits).

Consulting the man pages for these apps is a good way to start to gain an 
understanding of how to access this information.

The information is usually kept in static, not dynamic form (for example, 
cumulative bytes received and transmitted, but no measure of 
KB/sec  transmitted or received), so you'd need to poll the static values 
periodically (via a cron script, say) and do the math yourself.

At 04:31 PM 9/20/2004 -0700, TEJAS VORA wrote:
>Hi All,
>
>I am working on a company project and as a part of it - I have to
>collect and show some network information on the Monitoring utility.
>Please help to find out that how can I collect these information from
>a Linux Machine.
>
>1. Number of active TCP connection
>2. Information of Active connections (Source and Dest IP, Source and Dest 
>Port)
>3. Retransmitted packets due to Duplicate ACK and SACK
>4. Connection Duration and RTT
>5. Transmission Troughput (in KB/Sec)
>6. Number of Newly Created TCP Connections
>7. Closed TCP Connections
>8. Total Data transmitted (in byte)
>9. Total Data Retransmitted (in byte)
>
>Also, does anybody have any information on Watchdaog or how to use
>watchdog and SOCKS and SNOOP Daemon?
>I am using RedHat 9.0 machine.
>
>Any help is apreciated.
>
>Looking for an answer.
>
>Tejas Vora





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
