From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: Re: Large FTP transfers
Date: Tue, 1 Oct 2002 12:46:39 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210011246.39931.adam@luchjenbroers.com>
References: <5.1.0.14.1.20020928093421.024d14f0@celine> <5.1.0.14.1.20020929090857.024f4300@celine>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020929090857.024f4300@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


> As to testing ... the easiest way is, as you already realize, to swap in a
> new NIC and see if that makes the problem go away. As someone else already
> pointed out, this is a cheap enough solution (at least here in the USA)
> that it should at least be considered. If you can't replace the NIC for
> cost reasons, you should at least try moving it to a different slot, and
> perhaps cleaning the cardedge (ideally, with a proper solvent; in a pinch,
> with a pencil eraser, though this is a risky strategy for long-term
> maintenance). I would guess that all the errors you found in your logs are
> related to cardedge problems (assuming the device they refer to is the
> NIC).

Here in Australia it would cost 30-50 dollars $50 for a decent one).

> The alternative is to try a different system "stress test", this time one
> that does NOT involve networking, and see if the problem occurs or goes
> away. Without the details of your system, I can't be sure what will stress
> test its non-networking components. But the usual other one I run is a
> large compile -- say a custom kernel.

4 kernel recompiles one after the other, no problems

> Finally, you might try running a diagnostic progrem for the NIC. I don't
> recall what type of NIC it is (or even if you reported that in a prior
> message ... I've seen about a half dozen different NIC-related threads in
> the last day, and my memory just isn't good enough to retain the details of
> each), but most manufacturers supply DOS-based NIC configuration and
> testing programs. For awhile, Don Becker was releasing Linux config/test
> programs for some NICs, and you might see if he covered yours. (Use the
> usual search engines to track this down.)

vortex-diag doesn't detect problems, but is there anything I can glean from 
all the information it can tell me (it can sure spit out alot).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
