From: Ray Olszewski <ray@comarre.com>
Subject: Re: CPU Utilization & Priorities
Date: Wed, 26 Jun 2002 07:17:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020626071154.0208dc60@celine>
References: <20020626135038.3b9752ca.me@gavinlaking.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020626135038.3b9752ca.me@gavinlaking.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: me@gavinlaking.co.uk, linux-newbie@vger.kernel.org

At 01:50 PM 6/26/02 +0000, Gavin Laking wrote:
>Hi,
>
>I'm struggling to understand exactly what my 'load average' is reporting.
>
>I run several applications at once, and by using 'top' I can ascertain 
>what applications are currently gobbling up the most memory and CPU 
>resources. At the minute when I run the Distributed.net client (which I 
>stopped just before I started this email), my load average jumps to 1.00 
>(+/- 0.10). From this figure I understand that my CPU is being fully used, 
>as anything lower than 1.00 indicates a percentage when multiplied by 100- 
>i.e. 0.20 load average is 20% of CPU utilization. (correct me if I'm 
>wrong! :-S )

You are wrong. The "load average" reported by top (and free) is, roughly 
speaking, the average number of processes waiting to execute, NOT the CPU 
load. In fact, "top" (but not free) reports CPU load separately from the 
load average number you see, and those values (the 4 numbers on the "CPU 
states" line) always sum to about 100% (that is, 100% +/- rounding errors).

With this misunderstanding cleared up, you should be able to work out the 
details of the rest of your question.

BTW, in my experience, this "load average" value is about the most 
misunderstood number in the Linux/Unix world.

>This seems reasonable, since 'dnetc' (Distributed.net Client) only runs 
>when the CPU is idle. When the CPU is idle, 'dnetc' gobbles all of the 
>idle cycles. The problem/confusion arises when I start doing something 
>else 'intensive'. Just for fun, we can say I run a second 'dnetc' client. 
>Now in theory, because the client are eating the 'spare' cycles, the load 
>average should remain at 1.00+/-; both applications taking about half 
>(0.50) of the idle cycles between them. In actuality, the load average 
>jumps to 2.00+/- so the processor is sharing its full attention between 
>two applications. With 'n' similar applications we can watch the load 
>average jump to 'n' high.
>
>Now lets throw priorities in to the mix. If I set the the priority to +20, 
>then the applications should run when nothing else is running, and if 
>something else decides to run, then the application should "Shut up a 
>minute, I'm working!", but this isn't the case, the load average just 
>keeps climbing irrespective of priorities.
>
>Is the 'dnetc' application a bad, irresponsible, CPU hating application, 
>or is it "Just doing my job Ma'am"?
>
>I've tried monitor other applications for this type of activity but 'top' 
>grabs the most cycles itself and it doesn't update fast enough to view 
>applications 'flitting' up the priority/load-induced ladder.
>
>Any light on this matter would be great, and links to resource where I can 
>learn more (so you can type less) are much appreciated. :-) Thanks for 
>your time,


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
