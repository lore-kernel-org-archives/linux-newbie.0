From: Ben Greear <greearb@candelatech.com>
Subject: Re: debate on 700 threads vs asynchronous code
Date: Thu, 23 Jan 2003 15:31:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E307B49.9080304@candelatech.com>
References: <20030123231913.26663.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030123231913.26663.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Lee Chin <leechin@mail.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Lee Chin wrote:
> Hi
> I am discussing with a few people on different approaches to solving a scale problem I am having, and have gotten vastly different views
> 
> In a nutshell, as far as this debate is concerned, I can say I am writing a web server.
> 
> Now, to cater to 700 clients, I can
> a) launch 700 threads that each block on I/O to disk and to the client (in reading and writing on the socket)
> 
> OR
> 
> b) Write an asycnhrounous system with only 2 or three threads where I manage the connections and stack (via setcontext swapcontext etc), which is progromatically a little harder

You could also write something with async non-blocking IO and use NO threads
(ie, just a single process), which
may greatly simplify the debugging of your program (unless the developer(s) on your
project are very good at threaded programming already).

I suspect the async IO will perform better as well, but that is just an
un-founded opinion based on not wanting to think about scheduling 700 processes
that want to do IO :)

> 
> Which way will yeild me better performance, considerng both approaches are implemented optimally?
> 
> Thanks
> Lee


-- 
Ben Greear <greearb@candelatech.com>       <Ben_Greear AT excite.com>
President of Candela Technologies Inc      http://www.candelatech.com
ScryMUD:  http://scry.wanfear.com     http://scry.wanfear.com/~greear


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
