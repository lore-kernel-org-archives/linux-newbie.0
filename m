From: Ray Olszewski <ray@comarre.com>
Subject: Re: About PID...???!!!
Date: Wed, 10 Sep 2003 11:56:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030910114823.01f97c68@celine>
References: <20030910142344.8594.qmail@web20008.mail.yahoo.com>
 <5.1.0.14.1.20030910084359.01f35750@celine> <008501c377c5$f92db210$ed64a8c0@descartes>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <008501c377c5$f92db210$ed64a8c0@descartes>
References: <20030910142344.8594.qmail@web20008.mail.yahoo.com>
 <5.1.0.14.1.20030910084359.01f35750@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:04 PM 9/10/2003 -0400, John T. Williams wrote:
>definitely higher then 2^16, I've got a process with the PID of 69917
>I would guess MAX_INT which is 2^32 -1 = 4294967295

Actually, as it turns out, the right answer is "it depends".

Checking my kernel source, I find that the kernel's fork() routine checks 
against PID_MAX before wrapping. This value is defined, at least for 
2.4.19, in <kernel_source_path>/include/linux/threads.h . My (Debian) 
kernel source has there

         #define PID_MAX 0x8000

which matches my observed wrapping at (or near) 32768 . You might see if 
your kernel source sets this value higher.

>----- Original Message -----
>From: "Ray Olszewski" <ray@comarre.com>
>To: <linux-newbie@vger.kernel.org>
>Sent: Wednesday, September 10, 2003 11:58 AM
>Subject: Re: About PID...???!!!
>
>
> > At 11:21 AM 9/10/2003 -0400, John T. Williams wrote:
> > >They are assigned linearly, however once a pid is used, it is never
>reused
> > >until the machine reboots.
> >
> > This is not quite correct. The pid assignment process wraps, I *think* at
> > 32767 (or maybe 65535). Next time around, the kernel skips over any pids
> > that are still in use from the last round of assignment.
[...]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
