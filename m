From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: Mutual Exclusion in Kernel
Date: Thu, 7 Oct 2004 10:48:09 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a504100622183f3ad1a5@mail.gmail.com>
References: <20041006055017.42480.qmail@web52903.mail.yahoo.com>
	 <20041006.Yzh.28379000@192.168.0.6>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006.Yzh.28379000@192.168.0.6>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Robin Doer <robin@robind.de>
Cc: newbie <linux-newbie@vger.kernel.org>

Hi All,

Spin lock is a mutual exclusion strategy which is used in
Multiprocessor machanies.

When  i resource is not available for a  particular thread, it wont be
removed from TASK_RUNNING status and put into the corresponding event
Q. Instead it will loop around the processor, in closed cycles until
the resource is available.

So when the thread which currently owns the resource in other
processor leaves the resource, the loop thread can access the
resource.  This can avoid the Thundering Herd problem as well as the
overhead of pushing the thread  into the Event Q..

Thanks
Amrith


On Wed, 06 Oct 2004 10:43:20 +0200, Robin Doer <robin@robind.de> wrote:
> Good morning!
> 
> Ankit Jain (ankitjain1580@yahoo.com) schrieb:
> >
> > hi
> >
> > what is spin lock?
> 
> http://en.wikipedia.org/wiki/Spin_lock
> 
> aka "busy waiting". A thread is polling <something> until <something> says
> "ok" and the thread continues working.
> 
> >
> > thanks
> >
> > ankit
> 
> Have fun,
> Robin
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
