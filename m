From: James Miller <jamtat@mailsnare.net>
Subject: Re: Linux for old PC
Date: Sat, 14 Jun 2003 15:15:12 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0306141502140.1167@homenet>
References: <5020070209.20030614233059@yandex.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5020070209.20030614233059@yandex.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: vh <vhlist@yandex.ru>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Sat, 14 Jun 2003, vh wrote:
> Hello List.
> I want to run Linux on rather old PC.
> The PC is Pentium MMX 166 with 24M RAM, S3 Trio Video and 2,5Gb WD Hard
> Disk, motherboard is Intel 430 VX. I tried set up ASP Linux, but it
> hangs up during installation of packages (on ASP forum I was told that this
> distributive should work on my computer). Also I tried to set up
> Mandrake, but of cause it's failed die to low amount of RAM. Do I
> need older releases? But which ones should I try to use?
> Yes, I was reading a lot of FAQs and HOW-TOs, but I can't install
> anything at all. And I belive the problem is only in installation.
> Do I think right? What should I do? What distribution should I use?
> Can I setup Linux to my HDD on another PC so as it will be working
> lately when I plug it into my one? Any configuration hacks is not so
> terrible for me. I'm thinking now to run FBSD, but Linux certainly
> will be preferable. Can no more work with windows... Any experience?
>
>
Anton:

Privet. Po russki govoriu no, k sozhaleniu, ne xorosho otnoshus' k russkoi
klaviaturoi.  You need Vectorlinux.  I think it will run fine on that
machine.  It's based on Slackware, but installs very simply and gives a
pretty good default installation with some light desktops and gui apps (as
well as the usual console stuff).  It all fits in about 350MB of
diskspace.  It lets you choose an older Xserver as well (3.3.6, as I
recall), though it can install the newer one too.  I installed it on a
machine about like yours - P75 with 32MB RAM and it ran pretty well.  In
fact, amazingly well for an old machine like that.  I also used the s3Trio
card.  For best performance, you might want to go with Vectorlinux 2.0,
which comes with the 2.2.x kernel series (2.2.19, if memory serves).  3.0
will give you a 2.4.x series kernel.  Anyway, I always recommend this
distro for older hardware: it wins hands down in my book for ease of
install and usefulness of the finished product.  It strikes the perfect
balance between not installing enough by default and installing too much.
It's about a 200-300MB download, and you'll want to have access to a CD
burner to burn the iso.

s uvazheniem, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
