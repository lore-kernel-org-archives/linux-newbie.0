From: Peter <heisspf@skyinet.net>
Subject: Re: Gnome, KDE won't Open
Date: Sat, 14 Aug 2004 10:50:24 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040814025024.B354E3ECF0@heisspf>
References: <5.1.0.14.1.20040813093835.01fe0dc0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 13 Aug 2004 10:07:05 MST."
             <5.1.0.14.1.20040813093835.01fe0dc0@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray! I just solved the problem.

ray@comarre.com said:
>  Might this be a memory (or swap partition) problem? What does  "free" report
> about memory and swap usage just before you try to start  Gnome or KDE? Are
> you able to use swap successfully in other ways?

The bloke in the computer shop had the System Share Memory Size in the BIOS 
set to 8. When I now reset it to the original 32 everything is working again 
fine. I saw him fumbling around the BIOS, however he was so fast that I could 
not follow.

I got the idea after your hint above when I noticed that the swap memory was 
not really used after having opened in twm via xterm applications like 
abiword, gnumeric, konqueror, gkrellm simultaneously, then trying to open 
other applications I would get segmentation fault. After closing abiword, 
gnumeric, etc they could not be reopened, segmentation fault. Even rebooting 
would not completely finish and end with segmentation fault.

ray@comarre.com said:
> Have I correctly identified your mobo as the following?
>          http://www.baber.com/baber/411/ecs_p6stmt.htm 
yes

ray@comarre.com said:
> what do you mean by "I bought an USB adopter"?

That should naturally read adapter.
It plugs on one end into the USB socket of the mobo and has 2 sockets on the 
other end, one for kb and one for mouse.

Regards


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
