From: Ray Olszewski <ray@comarre.com>
Subject: Re: logging
Date: Mon, 29 Dec 2003 18:44:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031229183911.01fecdf0@celine>
References: <1072737808.10488.3.camel@darwin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1072737808.10488.3.camel@darwin>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 05:43 PM 12/29/2003 -0500, John T. Williams wrote:
>I was wondering if there is a good method for logging all attempts to
>connect to a port on my computer.  Basically, I was looking for
>something that logged the port and ip and the destination port of
>attempted connections.
>
>I'm running Mandrake 9.1

Presumably a 2.4.x kernel then.

iptables itself (the kernel's built-in firewalling) will do this; LOG is a 
predefined target that does not terminate (in the way that ACCEPT, REJECT, 
and DENY do) but does log each matching packet before passing it on to the 
next rule in the chain.

The man page for iptables will at least get you started. If you need help 
with specifics after reading it, don't hesitate to ask here.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
