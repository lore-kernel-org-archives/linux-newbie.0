From: Ray Olszewski <ray@comarre.com>
Subject: Re: recording music
Date: Thu, 04 Mar 2004 11:03:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040304105033.01ff4468@celine>
References: <4047771B.704@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4047771B.704@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:36 AM 3/4/2004 -0800, dave wrote:
>I'm trying to record a record to my hard drive.  I have a preamp between 
>my turntable and sound card.  I can hear the music but I can't seem to 
>make Krec record it.  I'm running Mandrake 9.1 and I can record using 
>windows 98 on the same box.  Anyone have a suggestion for a good linux 
>record program and/or any suggestions?  Thanks for your time.

I've used gramofile to digitize tapes (not records ... but except for the 
need for an external pre-amp, should be the same) and been very happy with 
the result. I haven't used Krec so cannot say how it compares.

As to your immediate problem ... are you using native-kernel (OSS) sound 
drivers or ALSA? The *usual* problem with recording sound in Linux, at 
least in cases where you can "hear the music", is that you haven't set, or 
possibly unmuted, the capture device properly in rexima or alsamixer (or 
whatever mixer app you use to set up your sound card).

While I can usually record with either type of sound driver, I''ve 
occasionally found a sound card (or on-mobo sound subsystem) that recorded 
properly only with ALSA ... a VIA chipset of some sort comes to mind here. 
So if you are using OSS< that might be your problem.

For more specific help than that, we'll need the usual sorts of details ... 
what sound card, what kernel, what sound drivers, what mixer app ... you 
know the routine.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
