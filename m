From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: RAM and swap partition
Date: Mon, 09 Dec 2002 15:59:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF50439.1C50E752@gelm.net>
References: <3DF4FBF0@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: james miller <jamtat@mailandnews.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

It depends.

james miller wrote:
> 
> Let me pose the RAM question in another way to see if it can elicit a
> generic, "rule-of-thumb" response this way. If a person uses their
> computer as a sort of personal workstation using a fairly recent distro
> and requires that it have an Xwindows gui, using applications like web
> browsers, email clients, wordprocessing software and maybe Gimp on
> occassion, at what point would such a person need to have a swap
> partition?

 You would need to have a swap partition when your system 
'runs out of' real memory.  It depends on how much memory 
the applications request/need.  There are many, many window
managers from tiny 'twm' to huge KDE & GNOME.  I would guess
that there are small and large 'word processing' software.

 I can run Xwindows, fvwm95, netscape v4.77, in 48 Megabytes
of virtual memory.  It would run much faster if 32 or more
magabytes were real RAM. ;-) However, it does run. 

>             In other words, can it be stated in somewhat generic terms
> "if said user had less than X MB RAM, they will definitely need a swap
> partition"? 

 It depends on what is requesting memory.

>            And what about guidelines for swap partition size in such a
> case: can such be stated as well? Like, say, "if this individual has
> only 32 MB RAM, he should have a 64 MB swap partition" or "if he has 64
> MB RAM he'll only need a 64 MB swap partition"?

  It depends.

 Tell the list what you plan to run and you will probably 
get many suggestions.  ;-)

HTH, Chuck

> Thanks, James
> 
> >===== Original Message From Chuck Gelm <nc8q@gelm.net> =====
> >Ditto to what Ray said.
> >
> > Perhaps you could run your system with a 'swap file' and see
> >how big it ever gets.  Then make a swap partition just that size
> >or a little larger.  ;-)
> >
> > My current firewall-router (aDSL to 100 Mb LAN) has 32 megabytes
> >  of RAM and has not used any swap memory, AFAICR.
> > Another workstation with 64 M of RAM has used 3 M of swap.
> > Another workstation with 160 M of RAM has used 2 M of swap.
> > Another laptop with 16 M of RAM, XFfree86 v4.0.3, and I just
> >  ran Netscape v4.77 under fvwm95, loaded a small web page,
> >  has used 2.6 M of swap.
> >
> > IMHO, it depends.  ;-)
> >
> >HTH, Chuck
> >
> >Ray Olszewski wrote:
> >>
> >> At 01:15 PM 12/8/02 +0000, Rolf Edlund wrote:
> >> >Originally to: james niland
> >> >
> >> >
> >> >  jn> I know some people who run happily without a swap at all.
> >> >
> >> >How low RAM can I use, without running a swap ? Can I for example
> >do it on
> >> >a 486
> >> >with 4 MB RAM ?
> >>
> >> The way you ask this question, it has no real answer. How little
> >memory a
> >> system can run with depends on what tasks it is doing. And the
> >choice of
> >> CPU is pretty much irrelevant to this question (its only slight
> >relevance
> >> is in the smaller size of CPU-specific kernels).
> >>
> >> That said ... running any sort of Linux system in less than 8 MB of
> >real
> >> (not swap) RAM poses special challenges ... most modern distros
> >can't even
> >> install on such systems (only Slackware, I think, still offers a
> >"low
> >> memory" install option) and you won't be able to do much with such
> >a
> >> system. In practice, the smallest systems I've ever run without
> >swap were
> >> 486s with 16 MB of RAM, and that was for special purpose systems
> >like
> >> routers. While these days I routinely run my workstations without a
> >swap
> >> partition, they have at least 256 MB of RAM.
> >>
> >> --
> >> -------------------------------------------"Never tell me the
> >odds!"--------
> >> Ray Olszewski                                   -- Han Solo
> >> Palo Alto, California, USA                        ray@comarre.com
> >>
> >-----------------------------------------------------------------------------
> --
> >>
> >-
> >To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
