From: James Ferris <james_e_ferris@yahoo.ca>
Subject: Fwd: Re: Linux for old PC + a caveat
Date: Sun, 15 Jun 2003 01:04:11 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030615005724.02d10588@pop.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

One quick caveat for disk-swapping.
Watch your BIOS settings for the drive.
Different BIOS' detect any drive distinctly, and having one BIOS use
w sectors and x heads may give the same MB as y sectors and z heads
... but the drive will not always read correctly with an alternate setup.

>On Sunday 15 June 2003 07:30, vh wrote:
> > Hello List.
> > I want to run Linux on rather old PC.
> > The PC is Pentium MMX 166 with 24M RAM, S3 Trio Video and 2,5Gb WD Hard
> > Disk, motherboard is Intel 430 VX. I tried set up ASP Linux, but it
> > hangs up during installation of packages (on ASP forum I was told that this
> > distributive should work on my computer). Also I tried to set up
> > Mandrake, but of cause it's failed die to low amount of RAM. Do I
> > need older releases? But which ones should I try to use?
> > Yes, I was reading a lot of FAQs and HOW-TOs, but I can't install
> > anything at all. And I belive the problem is only in installation.
> > Do I think right? What should I do? What distribution should I use?
> > Can I setup Linux to my HDD on another PC so as it will be working
> > lately when I plug it into my one? Any configuration hacks is not so
> > terrible for me. I'm thinking now to run FBSD, but Linux certainly
> > will be preferable. Can no more work with windows... Any experience?
>
>If you do decide to go the disk-swapping route, then I'd say it's certainly
>possible to set up Linux on a hard drive on another PC, then swap the drive
>over, so long as the hardware in yours is fairly compatible with the other
>one.   You may need to 'hack' some of the config files, in particular
>/etc/XF86Config (or XF86Config-4) that drives the 'X' (GUI)
>windowing system, before X will work.
---snipped---
----------------------------------------------------------------------
JAMES E. FERRIS, B.Sc. Eng., MCSE
Edmonton, Alberta
Tel: (780)473-6517
email: jeferris@shaw.ca
or: james_e_ferris@yahoo.ca
resume: http://members.shaw.ca/jeferris
links: http://members.shaw.ca/jeferris/links

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
