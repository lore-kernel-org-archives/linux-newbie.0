From: Ray Olszewski <ray@comarre.com>
Subject: Re: Large FTP transfers
Date: Sun, 29 Sep 2002 09:21:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020929090857.024f4300@celine>
References: <5.1.0.14.1.20020928093421.024d14f0@celine>
 <5.1.0.14.1.20020928075131.02675d00@celine>
 <5.1.0.14.1.20020928093421.024d14f0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209291739.30520.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

First thing ... "properly screwed in" is not a magic fix for cardedge 
problems. A combination of small misalignments ... the technical term is 
"tolerance stacking" ... or some other assembly error could be causing an 
alignment problem. So you might try unscrewing the card, seating it 
carefully, and seing if that improves the situation.

As to testing ... the easiest way is, as you already realize, to swap in a 
new NIC and see if that makes the problem go away. As someone else already 
pointed out, this is a cheap enough solution (at least here in the USA) 
that it should at least be considered. If you can't replace the NIC for 
cost reasons, you should at least try moving it to a different slot, and 
perhaps cleaning the cardedge (ideally, with a proper solvent; in a pinch, 
with a pencil eraser, though this is a risky strategy for long-term 
maintenance). I would guess that all the errors you found in your logs are 
related to cardedge problems (assuming the device they refer to is the NIC).

The alternative is to try a different system "stress test", this time one 
that does NOT involve networking, and see if the problem occurs or goes 
away. Without the details of your system, I can't be sure what will stress 
test its non-networking components. But the usual other one I run is a 
large compile -- say a custom kernel.

Finally, you might try running a diagnostic progrem for the NIC. I don't 
recall what type of NIC it is (or even if you reported that in a prior 
message ... I've seen about a half dozen different NIC-related threads in 
the last day, and my memory just isn't good enough to retain the details of 
each), but most manufacturers supply DOS-based NIC configuration and 
testing programs. For awhile, Don Becker was releasing Linux config/test 
programs for some NICs, and you might see if he covered yours. (Use the 
usual search engines to track this down.)

At 05:39 PM 9/29/02 +0930, Adam Luchjenbroers wrote:
>I'm starting to suspect the NIC. It has twice recently (one instance 
>before my
>previous emails, one since) stopped being detected with Linux giving me an
>"unable to access 64-bit address message"
>
>I've retrieved them from /var/log/kernel/errors
>
>Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for
>device 00:09.0
>Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for
>device 00:09.0
>Sep 28 22:09:21 ironclad kernel: Unknown bridge resource 0: assuming
>transparent
>Sep 28 22:09:21 ironclad kernel: PCI: Cannot allocate resource region 1 of
>device 00:09.0
>Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because of
>resource collisions
>Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because of
>resource collisions
>
>In both cases, applying pressure to the top of the card fixed the issue,
>however it is properly screwed in. How can I verify that this part is at
>fault as I do not have any other cards to test it with?




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
