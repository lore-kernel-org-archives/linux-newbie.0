From: Ray Olszewski <ray@comarre.com>
Subject: Re: monitor
Date: Tue, 27 Apr 2004 14:03:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040427135550.02d5a1c8@celine>
References: <408EC076.5000108@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <408EC076.5000108@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: dave <dave@dpomeroy.com>, Linux-Newbie <linux-newbie@vger.kernel.org>

At 01:20 PM 4/27/2004 -0700, dave wrote:
>I purchased a 17" monitor with 1280X1024 resolution.  That resolution 
>makes my text and pictures to small.  I need to run 1024X768.  However 
>1024X768 doesn't look very good.  The detail is not sharp.  Is ther anyway 
>to decrease the viewed resolution without reducing the video cards 
>resolution?  I'm having a tough time explaining this so if you don't 
>understand and maybe I can answer some questions.  Thanks for your time.

Well ... it's probably not quite what you mean, but you can set up X so the 
physical display is a window into a larger, virtual display ... so you can 
see (as an example) a 640x480 area of a 1280X1024 display. Exactly how you 
do it depends on how your distro installs X, but usually this option gets 
offered as part of a configuration dialog.

You would probably do better, though, to figure out why 1024x768 is 
unsatisfactory. With no information provided about the underlying hardware, 
it's hard even to ask meaningful questions beyond the obvious ones -- what 
video card, what physical display, what version of X, what X server, what 
Linux distro?

The other suggestion someone made, to fiddlg with the refresh rate, might 
be a good one ... but the problem description is so vague that it's hard to 
know.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
