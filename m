From: Larry McVoy <lm@bitmover.com>
Subject: Re: debate on 700 threads vs asynchronous code
Date: Thu, 23 Jan 2003 15:28:34 -0800
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <20030123232834.GA17554@work.bitmover.com>
References: <20030123231913.26663.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030123231913.26663.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

> b) Write an asycnhrounous system with only 2 or three threads where I manage the connections and stack (via setcontext swapcontext etc), which is progromatically a little harder
> 
> Which way will yeild me better performance, considerng both approaches are implemented optimally?

If this is a serious question, an async system will by definition do better.
You have either 700 stacks screwing up the data cache or 2-3 stacks nicely
fitting in the data cache.  Ditto for instruction cache, etc.
-- 
---
Larry McVoy            	 lm at bitmover.com           http://www.bitmover.com/lm 
