From: Jim Nelson <james4765@verizon.net>
Subject: Re: can't read my new hard drive
Date: Sun, 26 Dec 2004 07:28:26 -0500
Message-ID: <41CEAE6A.4010401@verizon.net>
References: <5.1.0.14.1.20041225213459.0217a3c8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041225213459.0217a3c8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 09:28 PM 1/2/1999 -0500, rob.rice wrote:
> 
>> I just got a new WD2500JBRTL hard drive I can format it reiser 
>> filesystem I
>> can write to it I can ls it BUT when ever I try to read from 
>> (cp,du,mv,tar)
>> it my computer locks up it also locks up when I try to run any reiser 
>> file
>> system util on it right now I'm waiting to hear from award's bios 
>> update site
>> for an update for my bios because my bios can't see that this hard 
>> drive is
>> larger than 137 GB BUT my kernel can see this hard drive as a 250GB hard
>> drive is there some hdparm setting I can use to fix this or some 
>> module I can
>> load or is this hard drive to large to be used in one partion with reiser
>> filesystem or is there a kernel patch I need to use in order to 
>> accesses this
>> drive
>>
>> boycott western digitall for not support linux (and tell them so I 
>> have told
>> them this is the last hard drive I will buy form them until they support
>> linux)
> 
> 
> Calm down, Rob. Based on what you have reported, it is way too early to 
> call for a boycott, or even to complain at all to WD.
> 
> The 137 GB problem you see is a BIOS problem. Maybe the latest BIOSes 
> get around it (I don't own anything new enough to test this), but most 
> older ones don't. Linux can see the full 250 GB because it doesn't use 
> the BIOS values to get drive capacity information. Last I knew, Windows 
> (at least through Win2K) had a worse time with these super-big drives 
> than Linux does, because it does rely on the BIOS settings ... I have a 
> couple of unused auxiliary IDE controllers that Maxtor packaged with its 
> largest drives for awhile to let Windows users get around the 137 GB limit.
> 

I had the exact same problem with a 160 GB WD drive I got from Sam's Club - except 
the BIOS on my media server had the 33 GB limit.  BTW, Western Digital still ships 
ATA/100 cards with some of their drives (it takes a little shopping) - they come 
with Promise IDE controllers.

 From dmesg:

ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
PIIX4: IDE controller at PCI slot 0000:00:07.1
PIIX4: chipset revision 1
PIIX4: not 100% native mode: will probe irqs later
     ide0: BM-DMA at 0xf000-0xf007, BIOS settings: hda:pio, hdb:pio
     ide1: BM-DMA at 0xf008-0xf00f, BIOS settings: hdc:pio, hdd:pio
Probing IDE interface ide0...
hda: ST340810A, ATA DISK drive
Using cfq io scheduler
ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
Probing IDE interface ide1...
hdc: CD-RW IDE5224, ATAPI CD/DVD-ROM drive
ide1 at 0x170-0x177,0x376 on irq 15
PDC20268: IDE controller at PCI slot 0000:00:0f.0
PCI: Found IRQ 11 for device 0000:00:0f.0
PDC20268: chipset revision 2
PDC20268: ROM enabled at 0xe8000000
PDC20268: 100% native mode on irq 11
     ide2: BM-DMA at 0xe400-0xe407, BIOS settings: hde:pio, hdf:pio
     ide3: BM-DMA at 0xe408-0xe40f, BIOS settings: hdg:pio, hdh:pio
Probing IDE interface ide2...
hde: WDC WD1600JB-53EVA0, ATA DISK drive
ide2 at 0xd400-0xd407,0xd802 on irq 11
Probing IDE interface ide3...
Probing IDE interface ide3...
Probing IDE interface ide4...
ide4: Wait for ready failed before probe !
Probing IDE interface ide5...
ide5: Wait for ready failed before probe !
hda: max request size: 128KiB
hda: Host Protected Area detected.
         current capacity is 66055248 sectors (33820 MB)
         native  capacity is 78165360 sectors (40020 MB)
hda: 66055248 sectors (33820 MB) w/2048KiB Cache, CHS=65531/16/63, UDMA(33)
hda: cache flushes not supported
  hda: hda1 hda2 hda3 hda4
hde: max request size: 1024KiB
hde: 312581808 sectors (160041 MB) w/8192KiB Cache, CHS=19457/255/63, UDMA(100)
hde: cache flushes supported
  hde: hde1
hdc: ATAPI 52X CD-ROM CD-R/RW drive, 2048kB Cache, UDMA(33)

Notice how /dev/hda is limited by the BIOS, but /dev/hde is not?  Most add-on IDE 
controllers fix BIOS limitations - I've even got an old 486 server sitting in my 
closet that has an add-on ISA IDE card to let it use >1GB drives - pretty high-end 
back in the mid-90's.

> If you are not using this drive as your root (/) filesystem ... in 
> practice, that usually means it is not /dev/hda ... then ignore the BIOS 
> problem and let Linux handle that part. If you are using it for boot and 
> root, you'll have to partition it, at least enough that the BIOS and 
> lilo (or your bootloader of choice) can find the kernel to load it.
> 
> I haven't yet used a drive this size as the boot drive, but if I were to 
> do so, I'd probably try something like this:
> 
>         /dev/hda1       about 50 MB, mount as /boot
>         /dev/hda2       swap, whatever size you need or want
>         /dev/hda3       about 120 GB, mount as /
>         /dev/hda4       remainder, probably mount as /home
> 
> This is probably not the only arrangement that would work, and I can't 
> actually guarantee that it would work. But it likely would. Oh, and I 
> would make hda1 ext2, just to be safe.
> 
> Beyond that ... please describe the problem more carefully. You say ls 
> works, and ls does require reading the drive. With a 250 GB drive, the 
> other commands you mention all either do (du) or might (depending on 
> unreported details) involve a WHOLE LOT of reading on a 250 GB drive, 
> which can take a long time (minutes, even if everything IS workingg 
> right). So please test more systematically, and please be as exact as 
> you can about what you are calling "locks up" (for example, does the 
> console not respond if you press ENTER while a cp or mv or tar operation 
> is running? if you run top in another xterm or console or telnet or ssh 
> session, can you switch to it and does it continue to run?). Can you cat 
> or more a short text file, or does that cause a hang? What about df?
> 
> One thing you should check (this is true of any IDE drive, any size) is 
> that you have DMA enabled. If you use hdparm to query the drive 
> settings, it will report using_dma as on or off. If it is off, set it 
> (as root) with
> 
>         hdparm -d 1 /dev/hd*
> 
> replacing * with the right drive designator. If DMA is not enabled, the 
> sorts of operations you report cas causing the "lock ups" will be 
> painfully slow with the size drive you have, and annoying slow with any 
> modern drive (by which I mean 40 GB and up).
> 

You might also wnat to try swapping the IDE cable - or re-seating it.

> I don't run reiserfs here, but I've run drives ranging from 160 GB to 
> 250 GB for well over a year now, using ext2 and ext3, with no trouble at 
> all, in non-boot settings.
> 
> Finally, if you want technical help with kernel details, it helps to 
> mention what kernel you are using and what distro it is from (because 
> all distros I know of customize their kernels, at least a little bit).
> 
> 
> 
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
