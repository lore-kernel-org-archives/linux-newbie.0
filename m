From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux for old PC
Date: Sat, 14 Jun 2003 12:54:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030614124530.01ecce70@celine>
References: <5020070209.20030614233059@yandex.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5020070209.20030614233059@yandex.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:30 PM 6/14/2003 +0400, vh wrote:
>Hello List.
>I want to run Linux on rather old PC.
>The PC is Pentium MMX 166 with 24M RAM, S3 Trio Video and 2,5Gb WD Hard
>Disk, motherboard is Intel 430 VX. I tried set up ASP Linux, but it
>hangs up during installation of packages (on ASP forum I was told that this
>distributive should work on my computer). Also I tried to set up
>Mandrake, but of cause it's failed die to low amount of RAM. Do I
>need older releases? But which ones should I try to use?
>Yes, I was reading a lot of FAQs and HOW-TOs, but I can't install
>anything at all. And I belive the problem is only in installation.
>Do I think right? What should I do? What distribution should I use?
>Can I setup Linux to my HDD on another PC so as it will be working
>lately when I plug it into my one? Any configuration hacks is not so
>terrible for me. I'm thinking now to run FBSD, but Linux certainly
>will be preferable. Can no more work with windows... Any experience?

I am unacquainted with "ASP Linux", but I would expect to be able to 
install an up-to-date distro (certainly Debian, the one I am most familiar 
with) on a system with 24 MB of RAM. You probably need a swap partition to 
make this work ... it's been some time since I actually tried to install 
with anything less than 48 MB (I did that a few months ago with a K6-300), 
so I'm not certain of the point at which swap becomes an absolute necessity 
... evwen with 48 MB RAM, swap is a good idea.

So my first recommendation is that you try again with whichever distro you 
prefer, to make sure that it really will not install with 24 MB of RAM.

If ASP and Mandrake really do require more than 24 MB to install, I'd 
suggest you try either Debian or Slackware ... Slackware always used to be 
the distro of choice for small-memory systems, and it probably still is.

Whether the problem is "only in installation" or not depends on what you 
want to use the system for. Minimalist workstations can easily run in 16 MB 
RAM, and specialized Linux systems (like routers or X terminals) can get by 
with 12 MB, or even 8 MB if they don't use a RAMdisk.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
