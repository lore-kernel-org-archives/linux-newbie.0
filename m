From: caszonyi@rdslink.ro
Subject: Re: disabling all video
Date: Sat, 7 Aug 2004 01:19:47 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0408070119200.695@grinch.ro>
References: <4113FDCB.2030307@networkstreaming.com>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4113FDCB.2030307@networkstreaming.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Davy Durham <davy@networkstreaming.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 6 Aug 2004, Davy Durham wrote:

> Sorry if this is the wrong list to ask this.. direct me to the correct
> list if so...
>
> Question: I would like the kernel not to use any of the video hardware
> on the machine.  Is there any run-time kernel parameter I can pass to
> disable all video?  (I tried console= to direct output to the serial
> port, but ttys were still using the vga hardware.)  My video card is
> built onto the mother board, and there is no way I see to disable it
> from the BIOS.
> I was hoping there was an option such as vga=disable or video=null or
> something like that, but I've looked thru the docs and cannot find
> anything.
>
> Thanks,
>  Davy

you can compile a kernel without virtual terminal support


--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
