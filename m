From: "Lee Chin" <leechin@mail.com>
Subject: Re: debate on 700 threads vs asynchronous code
Date: Thu, 23 Jan 2003 19:07:11 -0500
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <20030124000711.98366.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lm@bitmover.com, leechin@mail.com
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Hi,
Thanks for the rpely... my question was more so, with setcontext and swapcontext, I will still be messing with the data cache right?  

In otherwords, as long as I have an async system with out setcontext, I know I am good... but with it, havent I degraded to a threaded environment?

Thanks
Lee
----- Original Message -----
From: Larry McVoy <lm@bitmover.com>
Date: Thu, 23 Jan 2003 15:28:34 -0800
To: Lee Chin <leechin@mail.com>
Subject: Re: debate on 700 threads vs asynchronous code

> > b) Write an asycnhrounous system with only 2 or three threads where I manage the connections and stack (via setcontext swapcontext etc), which is progromatically a little harder
> > 
> > Which way will yeild me better performance, considerng both approaches are implemented optimally?
> 
> If this is a serious question, an async system will by definition do better.
> You have either 700 stacks screwing up the data cache or 2-3 stacks nicely
> fitting in the data cache.  Ditto for instruction cache, etc.
> -- 
> ---
> Larry McVoy            	 lm at bitmover.com           http://www.bitmover.com/lm 

-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

Meet Singles
http://corp.mail.com/lavalife
