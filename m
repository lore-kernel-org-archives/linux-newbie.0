From: cr <cr@orcon.net.nz>
Subject: Re: Linux for old PC
Date: Sun, 15 Jun 2003 17:29:16 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306150544.h5F5hnZ6017422@dbmail-mx3.orcon.co.nz>
References: <5020070209.20030614233059@yandex.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5020070209.20030614233059@yandex.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: vh <vhlist@yandex.ru>, linux-newbie <linux-newbie@vger.kernel.org>

On Sunday 15 June 2003 07:30, vh wrote:
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

If you do decide to go the disk-swapping route, then I'd say it's certainly 
possible to set up Linux on a hard drive on another PC, then swap the drive 
over, so long as the hardware in yours is fairly compatible with the other 
one.   You may need to 'hack' some of the config files, in particular  
/etc/XF86Config (or XF86Config-4) that drives the 'X' (GUI) 
windowing system, before X will work.   

For that reason I'd suggest selecting the 'text-based' login rather than the 
'graphical' login  (RedHat asks you which you'd prefer at the end of the 
install process.   Debian assumes you're going for graphical login and is 
rather less easy to install).   Incidentally, I've found that RedHat seems to 
work best with my S3Trio64V2 card, Debian works best with the on-board SiS 
AGP video.

*Do* make yourself a boot floppy! - as you'll probably find your PC won't 
boot off the hard disk straight away after you swap it in.   You may have to 
reinstall LILO or GRUB as bootloaders.   (And you should probably not let the 
install program set up LILO/GRUB for you at install time, you don't want to 
'upset' booting on the PC you're borrowing for the install.)

2.5 GB is certainly adequate for an install so long as you don't try to 
install 'everything'.    RedHat 7.2 or 9.0 will fit reasonably well into a 
bit under 2GB.

I can testify that 'system drive swapping' is quite practical, for some time 
now I've run several 2GB hard drives, I keep my data on the second and third 
hard drives (not that this is relevant to your problem), and when I wish to 
do an upgrade I whip out the 'system' drive, put in a spare 2GB drive, and 
install the 'new' system on that.  If it strikes problems or I don't like the 
new system, I just pop my old 'system' drive back in.    In the present 
context, the only 'hacking' I sometimes have to do is to the LILO or GRUB 
bootloader.  (I also have to modify /etc/fstab to recognise my other 'data' 
drives, but this won't apply to what you wish to do).

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
