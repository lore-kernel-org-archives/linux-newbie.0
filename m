From: Ray Olszewski <ray@comarre.com>
Subject: Re: checking bandwidth in coyote
Date: Tue, 11 May 2004 12:35:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040511122021.02031090@celine>
References: <1211088623.20040512014917@yahoo.com.sg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1211088623.20040512014917@yahoo.com.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:49 AM 5/12/2004 +0700, otok_otok1998 wrote:
>Hello linux-newbier,
>
>i want to know how to checking bandwidth on my coyote linux, i'm using
>adsl connection, coyote on Pentium I as router.. thanx 4all

Please be more descriptive about what exactly you want to check. For *example*:

1. Do you want to test actual throughput between a host on your LAN and 
some particular offsite host?

2. Do you want a way to test whether your ADSL line itself actually 
delivers the promised bandwidth?

3. Do you want to track your cumulative use of bandwidth every day for a month?

In general, the way to measure throughput is to run ifconfig periodically 
and compute the differences in Rx and Tx bytes (or packets, if more 
appropriate to your purpose), or access the /proc/net/dev pseudofile 
directly for the same information. But to test the capacity of a 
connection, you will need to measure throughput during controlled tests. 
Fancy tools to measure throughput are, typically, just front ends to one or 
the other of these approaches.

I haven't looked closely at coyote in years, and I doubt you'll find many 
coyote users here on this list ... so any advice you get will probably 
(certainly if from me) be based on standard Linux/Unix utilities, not 
anything specific to coyote. I believe that coyote has its own support 
list, so you might try that if you do want coyote-specific information.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
