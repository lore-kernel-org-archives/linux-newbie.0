From: Bill Davidsen <davidsen@tmr.com>
Subject: Re: debate on 700 threads vs asynchronous code
Date: Mon, 27 Jan 2003 17:08:54 -0500 (EST)
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <Pine.LNX.3.96.1030127165006.27928H-100000@gatekeeper.tmr.com>
References: <20030123231913.26663.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
In-Reply-To: <20030123231913.26663.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Thu, 23 Jan 2003, Lee Chin wrote:

> I am discussing with a few people on different approaches to solving a
> scale problem I am having, and have gotten vastly different views
> 
> In a nutshell, as far as this debate is concerned, I can say I am writing a web server.
> 
> Now, to cater to 700 clients, I can a) launch 700 threads that each
> block on I/O to disk and to the client (in reading and writing on the
> socket) 
> 
> OR
> 
> b) Write an asycnhrounous system with only 2 or three threads where I
> manage the connections and stack (via setcontext swapcontext etc), which
> is progromatically a little harder

There are many other ways, involving use of async io for disk and select
on some limited number of sockets per thread. If you want to wallow in
analysis paralysis you can certainly do it. Take a look at existing
usenet, mail, web and dns servers and you will see a number of ways to
attack this problem, and correctly implemented most of them work fine.

I believe Ingo mentioned some huge number of practical threads when he was
first talking about the latest thread library. If you believe it, or if
you really will be happy at 700 tasks per server, then thread per socket
is the easiest to implement, at least IMHO.

I'm using various news software which does most combinations of threading,
select, and even full processes per client, and none of them strike me as
being inherently better (as opposed to some being better implementations). 
Ask Ingo how many threads you can really run in six months when the new
kernel and thread bits are more stable, that's the only scaling bit I
can't even guess. Pick one method, write code. I believe implementation
will be more important than method, unless you make a *really* bad choice.

-- 
bill davidsen <davidsen@tmr.com>
  CTO, TMR Associates, Inc
Doing interesting things with little computers since 1979.
