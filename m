From: Jim Nelson <james4765@verizon.net>
Subject: Re: Inter-module communication
Date: Fri, 12 Nov 2004 22:05:46 -0500
Message-ID: <41957A0A.5040709@verizon.net>
References: <000001c4c8d1$82a92620$340d81a4@benin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c4c8d1$82a92620$340d81a4@benin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter STIEGLITZ <peter.stieglitz@st.com>
Cc: linux-newbie@vger.kernel.org

Peter STIEGLITZ wrote:
> Hi folks,
> I have a requirement using 2.6 to notify more than one kernel module following the receipt of an interrupt.
> 
> I've heard of module unloading becoming a problem with other modules assuming they are still there.
> 
> What do people think is the best approach?
> 
> Regards
> Pete
> 

If this is going to be a suite of drivers, I'd probably write a function into each 
module that is called whenever an interrupt of interest is called.  Then, in the 
bottom half of the actual interrupt handler, I'd iterate over an array of those 
functions, letting each module know that an interrupt had occurred.

You'll probably need an IPC-like module to handle the message-passing interface 
(unless a feature like this is already built into the kernel - anyone know?).

Interesting problem - a microkernel would make this a little easier, but I don't 
think that there is a generic message-passing capability built into the Linux kernel.

There are some nasty obstacles to overcome - especially if you want to use it w/ 
SMP or with the real-time preemptive system in development.  Unfortunately, that's 
where my kernel-hacking skills run dry.  Ask me again in a year or so - I could 
probably give you a better answer then :)

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
