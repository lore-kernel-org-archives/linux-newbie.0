From: Ray Olszewski <ray@comarre.com>
Subject: RE: RAM and swap partition
Date: Mon, 09 Dec 2002 10:47:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021209102942.020ab400@celine>
References: <3DF4FBF0@mailandnews.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF4FBF0@mailandnews.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 01:22 PM 12/9/02 -0500, james miller wrote:
>Let me pose the RAM question in another way to see if it can elicit a
>generic, "rule-of-thumb" response this way. If a person uses their
>computer as a sort of personal workstation using a fairly recent distro
>and requires that it have an Xwindows gui, using applications like web
>browsers, email clients, wordprocessing software and maybe Gimp on
>occassion, at what point would such a person need to have a swap
>partition? In other words, can it be stated in somewhat generic terms
>"if said user had less than X MB RAM, they will definitely need a swap
>partition"? And what about guidelines for swap partition size in such a
>case: can such be stated as well? Like, say, "if this individual has
>only 32 MB RAM, he should have a 64 MB swap partition" or "if he has 64
>MB RAM he'll only need a 64 MB swap partition"?

I cannot help you with "definitely" answers. But I can tell you the rules 
of thumb I've used when setting up workstations (which don't exactly use 
the mix of stuff you ask about, but come close).

If I am setting up a system with 256 MB or less of  RAM, I include a swap 
partition. If the system is using a modern hard disk (that is, one that is 
20 GB or more), I make swap twice the size of RAM; if I is using a small, 
old hard disk, I make it equal to RAM for sizes close to 256, twice RAM for 
significantly smaller sizes (trading off filesystem space against swap 
space is itself a judgment call for 128 and 192 MB systems).

If I were setting up a system with more than 256 MB of RAM and a modern 
hard disk (and this is all I really do these days for workstations), I 
*create* a swap partition equal in size to RAM, but I do not make it 
active. I have never actually found a need for a swap partition on a 
workstation with 256 MB of RAM or more, but that way I have one in reserve 
if I need it.

As a general matter, if you are running a system that uses swap regularly 
(rather than very rarely, say just when you custom compile apps or 
kernels), the performance hit you are taking probably justifies paying the 
relatively small cost of adding RAM if you can (of course, some older mobos 
still in circulation, such as older E-Machine Celeron boards, won't take 
more than 256 MB, limiting your options). And I've seen occasional 
segfaults that *seem* to be associated with swap access in recent 2.4.x 
kernels, so I try to avoid even rare uses of swap on my newer (512+ MB RAM) 
systems.

It's hard for me to think sensibly about what I'd do on a system with, say, 
16 or 32 MB of RAM, because I can't seriously imagine setting up such a 
system as a workstation today (though I use such systems for specialized 
purposes ... routers, mainly). Back when I ran such systems, I used swap 
that was twice the size of RAM, and that's probably what I'd do today up to 
64 MB, maybe even up to 128 MB.

Bottom line, though ... there are no hard and fast guidelines these days 
for "best practice" swap setup.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
