From: Ray Olszewski <ray@comarre.com>
Subject: Re: X servers for windows
Date: Sun, 22 Jun 2003 22:58:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030622224254.02fda870@celine>
References: <3EF690F1.20601@shaw.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EF690F1.20601@shaw.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:32 PM 6/22/2003 -0600, Chris Rose wrote:
>I know, it's a bit offtopic, but, well, the monitor on my linux box 
>(webserver, yada yada...) sucks ass, and needs replacing.  The way i see 
>it, an x-server for my windows box would probably be cheaper, and allow me 
>to keep using the development tools on the linux box easily.  So, can 
>anyone here suggest a good x server for windows, specifically one that 
>supports the render extension, because the one i have at present (x-win32 
>5.3) doesn't do so.
>
>Tips are not only welcome, but actively solicited, and would be rewarded 
>if it weren't for the fact that i'm damned poor (hence the unreplaced 
>monitor :)

I don't have the Windows expertise to suggest a good X-server for it 
(especially not a good *and* free one, since I assume the poverty you 
mention would make a sizeable license fee a problem ... or am I assuming 
too much poverty here, since x-win32 5.3 seems to have a $US225 single-node 
license?). But have you considered VNC as a way to operate your Linux box 
remotely from a Windows workstation?

BTW, I routinely access my Linux hosts (traditional servers and a 
development workstation) from a Windows console, just using ssh sessions. 
That approach covers most of what I need to do on them. I've used VNC and 
been happy with it ... what stops me from working completely remotely is 
that there is no way to run XVideo remotely.

BTW, a naive Google search ("WIndows X-server free") does turn up a few 
matches, but no true freeware that I saw (just shareware and evaluation 
copies of commercial servers, with $US90 the lowest license fee I found, 
more than the cost here of a new 17" monitor). It did report a few 
references in e-mail messages to free X servers from Cygnus and one other 
company, but they were very old messages (1998-2000) and I believe the 
products they referenced vanished from general distribution years ago.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
