From: Ray Olszewski <ray@comarre.com>
Subject: Re: strange freeze
Date: Wed, 07 May 2003 12:39:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030507122045.01fb2d10@celine>
References: <20030507211156.A1120@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030507211156.A1120@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

If your problem arises with both Windows and Linux, it is almost surely a 
hardware problem. But your message lacks any detail about the hardware 
involved, leaving us only with conjecture.

I have seen something at least superficially similar here, and it had to do 
with running large hard disks without enabling DMA. On the Linux side, this 
can happen if the mobo has an IDE chipset that the kernel you are using 
does not support, or if the kernel is not compiled to use DMA by default.

Again on the Linux side, if this is the cause, the failures can appear to 
be random, because they occur when the kernel has to do a large sync to 
disk (or use swap), something it does its best to do invisibly. updatedb 
produces heavy disk access, which is why it causes the problem reliably.

To investigate this guess from the Linux side, use

         hdparm /dev/hda

(replacing hda with the right designators for your drives) to see if DMA is 
active. If it is not, see if you can turn it on with

         hdparm -d 1 /dev/hda

(same parenthetical applies) and, if you can, if it fixes the problem.

Other things to try ...

You might also try provoking the problem while you have "top" running on a 
display that will survive the hang (e.g., an ssh session from another host) 
to see what the system thinks it is doing when it hangs.

You might explore how thoroughly hung the system is ... for example, does 
the kernel still respond to pings (something that will survive often if 
userspace has crashed beyond hope)?

If you physically disconnect the Windows drive, does the Linux system still 
exhibit this problem? And vice versa?

If that is not it ... well, analysis requires information, so perhaps your 
telling us the details of the hardware, and on the Linux side, the 
partitioning setup and fstab entries,  would suggest something. Be specific 
about cabling too ... does the BIOS see the drives as UDMA, for example? 
Are you using the right kind of cable, and are you relying on cable select 
or setting drives as master and slave with jumpers? (I'm assuming the 
drives share a DMA channel because you said you changed "the cable", not 
"the cables".)

Finally ... "forever" is a meaningless term in a trouble report; how long 
do you actually wait before rebooting? When I had my DMA problem I saw 
waits of several minutes at times before I got a prompt.

At 09:11 PM 5/7/2003 +0300, Elias Athanasopoulos wrote:
>Hello!
>
>I know this is a little bit off topic, but I also know that the list is
>being followed by some very skillfull admins, whose experience might help. :-)
>
>I have a dual box with Windows XP and SuSE Linux 8.2. Each operating system
>has its own hard disk. Both of the hard disks are IDE.
>
>The problem is that the box suddenly freezes. If it is on Windows it
>freezes (i.e. no mouse movement, no disk activity, num-lock can't change
>state, i.e. the keyboard is dead [*]) and after 10-15 secs it gets back to
>normal. On Linux it freezes (exactly the same symptoms) forever.
>
>My guess is that it's a hardware or a power supply related problem. I
>exclude the last case, because noone else in the office has faced such a
>problem and I even changed the cable.
>
>So, I have to find if it has to do with the CPU, memory, hard disk or even
>the graphics card's memory. As far as the hard disk case is concerned, I have
>noticed that Windows get frozen, randomly, but *mostly* when a file 
>request is
>opened. OTOH, on Linux I can reproduce the problem when I run the updatedb 
>program.
>But, each OS is in a separate disk! Of course during the updatedb process the
>Windows fs (FAT32 not NTFS) is beeing read (it is mounted at boot time), 
>but I
>hardly can believe a damaged fs can freeze the whole system.
>
>ANW, if anyone has anything to suggest I'll be happy to hear him/her. I'm 
>looking
>for a way to find the root of a problem by using some Linux diagnostic 
>tools (I'll
>start with memcheck86), because I know quite a little about Windows. So, 
>suggestions
>for hardware diagnosis via Linux software is welcomed, too. :-)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
