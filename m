From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Basic questions on the kernel
Date: Fri, 30 May 2003 14:17:51 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001001c326d7$cba92570$64fea8c0@pkraus>
References: <3ED7A000.80103@bcgreen.com>
Reply-To: <pkraus@pelsupply.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3ED7A000.80103@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Stephen Samuel' <samuel@bcgreen.com>, 'Girish Kale' <girish.kale@nevisnetworks.com>, linux-newbie@vger.kernel.org

I unsubbed from this list a month ago and I still get messages. Not as
many but I still get them. 

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Stephen Samuel
Sent: Friday, May 30, 2003 1:17 PM
To: Girish Kale; linux-newbie@vger.kernel.org
Subject: Re: Basic questions on the kernel


Girish Kale wrote:
> Hi,
> 
> I have a few basic questions on the kernel performance:
> 
> 1) For embedded systems, even though standard linux may not have hard 
> real-time performance unless real-time patch, low latency patch are 
> applied, I would like to know if linux can give "deterministic" 
> performance. Meaning can we be guaranteed that a particular process 
> will be scheduled after a particular time. What are the these times or

> where do I find this data.
You can only get "deterministic" performance if you're using a real-time
patch. I'm not sure what the timing is, but I believe that it's in the
sub-milisecond range.

You might be able to get near-realtime (but no absolute guarantees) by
setting the process that needs fast response to nice -20 this gives it
highest priority, so that it gets CPU pretty much whenever it wants it
(after device drivers).


> 
> 2) When we are using linux on an embedded system, will there a memory 
> management unit for this, since there will not be any swapping in/out 
> of pages? Can we avoid a process from keeping on allocating memory 
> thereby starving other applications?

Linux generally wants an MMU. Embeded kernels MAY be able to survive
without one (dunno).

Check the setrlimit call, or the ulimit bash built=in for info on how to
set resource usage limits.

You can also set limits on a system-wide basis by using the /proc
mechanisms. (your system probably has a formalized way of doing that
automatically on boot.. for RedHat, that would be the file
/etc/sysctl.conf )



-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
