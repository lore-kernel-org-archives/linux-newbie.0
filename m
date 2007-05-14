From: Helge Hafting <helge.hafting@aitel.hist.no>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 14:25:17 +0200
Message-ID: <4648552D.3060808@aitel.hist.no>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754689AbXENMe1@vger.kernel.org>
In-Reply-To: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Learning Linux <learninglinux4@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Learning Linux wrote:
> I have a very basic doubt here ... what makes it impossible to sleep
> in an ISR? I mean, I know that the kernel preemption is disabled and
> the kernel will panic, but I could not understand why?
First: an ISR is meant to be very quick. It is supposed to do only a
minimum of work needed to service the interrupt, then exit.
This is important, as other interrupts might be blocked during your ISR.
Sleeping is out of question, even a long-running loop in no-no.

Second: You don't ever need to sleep in an ISR anyway.
Complicated work that might take time or might need to sleep
is not supposed to be in an ISR.  If you think you have a need,
tell us what you're up to and hopefully someone will explain
how do do things properly.

When an interrupt happens that needs complicated servicing, the
ISR don't do the whole job.  It just acknowledges the interrupt,
perhaps does a few things with the device in question, then it
exits. It leaves the rest of the work for a bottom half or kernel
thread or something like that.  Kernel threads may sleep . . .

Helge Hafting
