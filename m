From: Ray Olszewski <ray@comarre.com>
Subject: Re: ssh - connection refused
Date: Sun, 14 Apr 2002 11:35:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020414183528.00ca3084@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Jerry T <linuxl1@hotmail.com>
Cc: linux-newbie@vger.kernel.org

At 04:27 AM 4/14/02 +0000, Jerry T wrote:
>
>To answer your more recent question first: I use port forwarding *to* the 
>Linux box.

So, taking this added info along with your previous reports, here is what I
*think* we know.

A. If you make an ssh connection to the Linux host from on its LAN, it
works. (You only tested this with the trivial case of the host ssh'ing to
itself, though.)

B. If you try to ssh to the Linux host from outside the LAN, through the
Linksys router, you get a "Connection Refused" response.

From this info, I'd *guess* from the "Connection Refused" message that the
ssh connection is never getting to your Linux host. I'd sus[ect that there
is a problem in the port-forwarding settings in your Linksys NAT'ing router. 

Though I've looked at these devices (and their equivalents from other
manufacturers), I really have no expertise with them. (We use a Linux host
here as a NAT'ing rotuer for the LAN.) I'd suggest you pursue this with
Linksys support.

On the Linux side, first try making an ssh connection to the Linux host from
another machine on the same LAN (if that is possible). If it works, then the
problem is definitely in the port forwarding. If it doesn't, then you should
get a more informative error message that COnnection Refused.

>Now to address the questions as stated below...
>
>It is clear from your response (and that of others) that a typical ssh 
>connection should be fairly painless and requires little setup. The fact 
>that I never receive a log in screen and quickly get a "Connection refused" 
>is becoming more of a concern.
>
>On my Linux box I have uncovered these issues:
>
>When I tried to check ipchains using "ipchains -nVL" as you suggested, I 
>receieved "ipchains: Incompatile with this kernel" and when I tried 
>"iptables -L" I received /lib/modules.../netfilter/iptables.o: unresolvable 
>symbol nf_unregister_sockopt.
>
>Now I have no idea what state my firewall is in. I did rebuild my kernel 
>from the 2.4.18 kernel directly from www.kernel.org. Now my questions are 
>growing in number. Does the fact that ipchains and iptables are not working 
>keep me from connecting through ssh? Are there other kernel settings that 
>would directly effect ssh but not telnet or ftp? Could my firewall be in an 
>undefined state where it allows some access but not others?
>
>When I try to run the firewall tool "lokkit", it errors out with an 
>"end-of-file" error at the end when it tries to test the mail relay.
>
>Is all of this another problem for another day, or (i'm afraid to ask) is 
>this all probably related to my ssh connectivity problem?

If you built your own kernel, you presumably know if you compiled in
ipchains or netfilter (iptables) support. If you didn't, you have no
firewalling abilities on the host itself. This should not interfere with an
ssh connection.

I'm not familiar with "lokkit" (never even heard of it) so cannot comment on
that part. But as I said above, I increasingly doubt that the problem is on
your Linux system.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
