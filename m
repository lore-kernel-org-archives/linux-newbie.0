From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: APM not rebooting or shutting down machine
Date: 27 Aug 2002 13:15:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1030450513.25528.28.camel@Zebra>
References: <CPIMSSMTPU08XOq3Jkr000012d9@cpimssmtpu08.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU08XOq3Jkr000012d9@cpimssmtpu08.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwbackup@worldnet.att.net>
Cc: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I don't know this seems a bit of an odd approach, but why don't you
check in the BIOS settings for power saving, and switch to "no power
saving" or whatever your BIOS calls the "Stop trying to turn this thing
off all the time" setting? It shouldn't be needed to do a restart (try
simply "init 6" instead of shutdown to see if the box will reboot
properly. You could also try ctrl-alt-delete on the console and see if
that reboots it). For the most part, servers are usually on all the time
and I don't even install any APM on most of them.

Once that's working, you can at least use the thing as a server ok; it's
rare that you need to remotely switch off a server (although I admit
that you might want to do that in certain circumstances). Since you are
probably going to be next to the box when you tell it to shut down,
pushing the power switch isn't really a problem :)

Hope this helps a little.

Paul.

On Sat, 2002-08-24 at 21:02, Alan Womack wrote:
> I've made some progress on my APM issues for the 9100C motherboard in my LFS server.
> 
> I know can get the console to blank and then turn off the monitor for lack of activity, however, actuallying getting a restart or a power off is proving problematic.
> 
> Through some other sources, I've gotten SMP out of my kernel (thought that was gone before) and set a couple of other items in my bios.
> 
> Attached is my kernel log and my kernel config.
> 
> Any thoughts?
> Thanks
> Alan
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
