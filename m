From: Ray Olszewski <ray@comarre.com>
Subject: Re: can't read my new hard drive
Date: Sat, 25 Dec 2004 21:59:00 -0800
Message-ID: <5.1.0.14.1.20041225213459.0217a3c8@celine>
References: <199901022128.58107.rob.rice@fuse.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <199901022128.58107.rob.rice@fuse.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-4CA6647D"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:28 PM 1/2/1999 -0500, rob.rice wrote:

>I just got a new WD2500JBRTL hard drive I can format it reiser filesystem I
>can write to it I can ls it BUT when ever I try to read from (cp,du,mv,tar)
>it my computer locks up it also locks up when I try to run any reiser file
>system util on it right now I'm waiting to hear from award's bios update site
>for an update for my bios because my bios can't see that this hard drive is
>larger than 137 GB BUT my kernel can see this hard drive as a 250GB hard
>drive is there some hdparm setting I can use to fix this or some module I can
>load or is this hard drive to large to be used in one partion with reiser
>filesystem or is there a kernel patch I need to use in order to accesses this
>drive
>
>boycott western digitall for not support linux (and tell them so I have told
>them this is the last hard drive I will buy form them until they support
>linux)

Calm down, Rob. Based on what you have reported, it is way too early to 
call for a boycott, or even to complain at all to WD.

The 137 GB problem you see is a BIOS problem. Maybe the latest BIOSes get 
around it (I don't own anything new enough to test this), but most older 
ones don't. Linux can see the full 250 GB because it doesn't use the BIOS 
values to get drive capacity information. Last I knew, Windows (at least 
through Win2K) had a worse time with these super-big drives than Linux 
does, because it does rely on the BIOS settings ... I have a couple of 
unused auxiliary IDE controllers that Maxtor packaged with its largest 
drives for awhile to let Windows users get around the 137 GB limit.

If you are not using this drive as your root (/) filesystem ... in 
practice, that usually means it is not /dev/hda ... then ignore the BIOS 
problem and let Linux handle that part. If you are using it for boot and 
root, you'll have to partition it, at least enough that the BIOS and lilo 
(or your bootloader of choice) can find the kernel to load it.

I haven't yet used a drive this size as the boot drive, but if I were to do 
so, I'd probably try something like this:

         /dev/hda1       about 50 MB, mount as /boot
         /dev/hda2       swap, whatever size you need or want
         /dev/hda3       about 120 GB, mount as /
         /dev/hda4       remainder, probably mount as /home

This is probably not the only arrangement that would work, and I can't 
actually guarantee that it would work. But it likely would. Oh, and I would 
make hda1 ext2, just to be safe.

Beyond that ... please describe the problem more carefully. You say ls 
works, and ls does require reading the drive. With a 250 GB drive, the 
other commands you mention all either do (du) or might (depending on 
unreported details) involve a WHOLE LOT of reading on a 250 GB drive, which 
can take a long time (minutes, even if everything IS workingg right). So 
please test more systematically, and please be as exact as you can about 
what you are calling "locks up" (for example, does the console not respond 
if you press ENTER while a cp or mv or tar operation is running? if you run 
top in another xterm or console or telnet or ssh session, can you switch to 
it and does it continue to run?). Can you cat or more a short text file, or 
does that cause a hang? What about df?

One thing you should check (this is true of any IDE drive, any size) is 
that you have DMA enabled. If you use hdparm to query the drive settings, 
it will report using_dma as on or off. If it is off, set it (as root) with

         hdparm -d 1 /dev/hd*

replacing * with the right drive designator. If DMA is not enabled, the 
sorts of operations you report cas causing the "lock ups" will be painfully 
slow with the size drive you have, and annoying slow with any modern drive 
(by which I mean 40 GB and up).

I don't run reiserfs here, but I've run drives ranging from 160 GB to 250 
GB for well over a year now, using ext2 and ext3, with no trouble at all, 
in non-boot settings.

Finally, if you want technical help with kernel details, it helps to 
mention what kernel you are using and what distro it is from (because all 
distros I know of customize their kernels, at least a little bit).




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.4 - Release Date: 12/22/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
